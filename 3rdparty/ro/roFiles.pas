unit roFiles;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, IniFiles;

type
  TECsiFileTimeType = (ftCreation, ftLastWrite, ftLastAccess);

function CsiClearDir(const pDirName: string; pBypassChecks: Boolean = False):
                     Boolean;
function CsiConcatFile(const pSrcFileName: string; const pDestFileName: string):
                       Boolean;
function CsiCopyDir(const pExistingDirName: string; const pNewDirName: string;
                    pForceCopy: Boolean = False;
                    pBypassChecks: Boolean = False): Boolean;
function CsiCopyFile(const pExistingFileName: string;
                     const pNewFileName: string; pForceCopy: Boolean = False;
                     pBypassChecks: Boolean = False): Boolean;
function CsiCreateDir(const pDirName: string): Boolean;
function CsiCreateFile(const pFileName: string; pForceCreate: Boolean = False;
                       pBypassChecks: Boolean = False): Boolean;
function CsiDeleteDir(const pDirName: string; pBypassChecks: Boolean = False):
                      Boolean;
function CsiDeleteFile(const pFileName: string; pBypassChecks: Boolean = False):
                       Boolean;
function CsiExpandDirName(const pDirName: string): string;
function CsiExpandFileName(const pFileName: string): string;
function CsiExtractFileDir(const pFileName: string;
                           pIncludePathDelimiter: Boolean = True): string;
function CsiExtractFileDrive(const pFileName: string;
                             pIncludePathDelimiter: Boolean = True): string;
function CsiFileByteCount(const pFileName: string): Int64;
{function CsiFileLineCount(const pFileName: string): Integer;
function CsiGetFileTime(const pFileName: string; pTimeType: TECsiFileTimeType):
                        TDateTime;
function CsiGetWriteableFileName(const pBaseFileName: string;
                                 pCanExist: Boolean = True): string;
function CsiIsFileReadable(const pFileName: string): Boolean;  }
function CsiIsFileWriteable(const pFileName: string): Boolean;
function CsiMoveDir(const pExistingDirName: string; const pNewDirName: string;
                    pForceMove: Boolean = False;
                    pBypassChecks: Boolean = False): Boolean;
function CsiMoveFile(const pExistingFileName: string;
                     const pNewFileName: string; pForceMove: Boolean = False;
                     pBypassChecks: Boolean = False): Boolean;

procedure GetDirs(const Path : string; Items : TStrings);

procedure GetFiles(const DirPath, FileExt: string; FileList: TStringList);

function NormalDir(const DirName: string): string;

function DirExists(const DirName: string): Boolean;

function CreateDir(const DirName: string): Boolean;

function RemoveDir(const DirName: string): Boolean;

function SetCurrentDir(const DirName: string): Boolean;

function GetCurrentDir: string;

function ClearDir(const Path: string; Delete: Boolean): Boolean;

function CopyFile(const ExistingFileName, NewFileName: string; bFailIfExists:
    Boolean): Boolean;

function DeleteFile(const FileName: string): Boolean;

function FileGetAttr(const FileName: string): Cardinal;

function FileSetAttr(const FileName: string; Attr: Cardinal): Integer;

function GetIconForFile(const FullFileName: string; Flag : integer): TIcon;

function ValidFileName(const FileName: string): Boolean;

function ShortToLongFileName(const ShortName: string): string;

function LongToShortFileName(const LongName: string): string;

function ShortToLongPath(ShortName: string): string;

function LongToShortPath(LongName: string): string;

procedure CopyFiles(SrcMask, SrcDir: string; DstDir: string);

function RemoveEmptyFolders(const rootFolder: string): boolean;

function WriteTextToFile(const filename, text: string; Append: Boolean): Boolean;

{procedure CsiSetFileTime(const pFileName: string; pTimeType: TECsiFileTimeType;
                         pFileTime: TDateTime);



procedure CsiLoadFromFile(const pFileName: string; out pData: TByteDynArray);
                          overload;
procedure CsiLoadFromFile(const pFileName: string;
                          pIdValuePairs: TCsiIdValuePairs;
                          pWithKeyChars: Boolean = False;
                          pStringEncoding: TECsiStringEncoding = seAuto);
                          overload;
procedure CsiLoadFromFile(const pFileName: string; pStrings: TStrings;
                          pStringEncoding: TECsiStringEncoding = seAuto);
                          overload;
procedure CsiLoadFromFile(const pFileName: string; out pText: string;
                          pStringEncoding: TECsiStringEncoding = seAuto);
                          overload;}

implementation

uses
  ShellAPI, roShell, roStrings;

function CanAppendFile(const pFileName: string): Boolean; forward;
function IsProtectedDir(const pDirName: string): Boolean; forward;

const
  // file extension
  EXT_TEXT = '.txt';

function CanAppendFile(const pFileName: string): Boolean;
begin
  if FileExists(pFileName) then
    // check whether we can open the file for writing
    Result := CsiIsFileWriteable(pFileName)
  else
    // assume we can append to a file that does not already exist
    Result := True;
end;

function IsProtectedDir(const pDirName: string): Boolean;
var
  lDirName: string;
  lRootDir: string;
  lWindowsDir: string;
  lSystemDir: string;
begin
  // get the root, windows, and system directories
  lDirName := CsiExpandDirName(pDirName);
  lRootDir := CsiExtractFileDrive(lDirName, False);
  lWindowsDir := GetWindowsDir;
  lSystemDir := GetSystemDir;

  // check if the directory is the root directory or derived from the windows or
  // system directories
  if SameText(lDirName, lRootDir) or SameText(lDirName, lWindowsDir) or
     StartsStr(IncludeTrailingPathDelimiter(lWindowsDir), lDirName, False) or
     SameText(lDirName, lSystemDir) or
     StartsStr(IncludeTrailingPathDelimiter(lSystemDir), lDirName,
                  False) then
    Result := True
  else
    Result := False;
end;

//------------------------------------------------------------------------------
// CsiClearDir
//
// Deletes all files in the directory given by pDirName. The return value is
// true if the files were successfully deleted or false if an error occurred.
// Use pBypassChecks to bypass all file deletion checks
//------------------------------------------------------------------------------
function CsiClearDir(const pDirName: string; pBypassChecks: Boolean): Boolean;
var
  lDirName: string;
  lSearchRec: TSearchRec;
begin
  // it is painful to deal with the double sloshes unless we do it up front
  lDirName := CsiExpandDirName(pDirName);
  if StartsStr('\\', lDirName) then begin
    Result := False;
    Exit;
  end;

  // let us not clear a directory we will regret!
  if IsProtectedDir(lDirName) then begin
    Result := False;
    Exit;
  end;

  Result := True;
  lDirName := IncludeTrailingPathDelimiter(lDirName);
  if FindFirst(lDirName + '*', faAnyFile, lSearchRec) = 0 then
    try
      repeat
        with lSearchRec do
          if (Name <> '.') and (Name <> '..') then
            if (Attr and faDirectory) = 0 then
              // delete the files in the directory
              Result := CsiDeleteFile(lDirName + Name, pBypassChecks) and
                        Result;
      until FindNext(lSearchRec) <> 0;
    finally
      SysUtils.FindClose(lSearchRec);
    end;
end;

//------------------------------------------------------------------------------
// CsiConcatFile
//
// Concatenates the file given by pSrcFileName to the file given by
// pDestFileName. The return value is true if the file was successfully
// concatenated or false if an error occurred
//------------------------------------------------------------------------------
function CsiConcatFile(const pSrcFileName: string; const pDestFileName: string):
                       Boolean;
var
  lSrcFileName: string;
  lDestFileName: string;
  lSrcStream: TFileStream;
  lAttr: Integer;
  lResetAttr: Boolean;
  lDestStream: TFileStream;
begin
  lSrcFileName := CsiExpandFileName(pSrcFileName);
  lDestFileName := CsiExpandFileName(pDestFileName);
  if not SameText(lDestFileName, lSrcFileName) and
     FileExists(lSrcFileName) and FileExists(lDestFileName) then begin
    lSrcStream := nil;
    lAttr := 0;
    lResetAttr := False;
    lDestStream := nil;
    try
      try
        lSrcStream := TFileStream.Create(lSrcFileName,
                                         fmOpenRead or fmShareDenyWrite);

        // remove any attributes that might prevent concatenation
        lAttr := FileGetAttr(lDestFileName);
        FileSetAttr(lDestFileName, 0);
        lResetAttr := True;

        lDestStream := TFileStream.Create(lDestFileName,
                                          fmOpenReadWrite or fmShareDenyWrite);
        lDestStream.Seek(0, soEnd);
        lDestStream.CopyFrom(lSrcStream, 0);
        Result := True;
      finally
        lDestStream.Free;
        lSrcStream.Free;

        // restore the file's attributes to what they were before
        if lResetAttr then
          FileSetAttr(lDestFileName, lAttr);
      end;
    except
      on EFileStreamError do
        // convert exceptions to a result of false
        Result := False;
    end;

  end else
    // cannot concatenate the files if they are not different and either does
    // not exist
    Result := False;
end;

//------------------------------------------------------------------------------
// CsiCopyDir
//
// Copies the directory given by pExistingDirName to the directory given by
// pNewDirName. The return value is true if the directory was successfully
// copied or false if an error occurred. Use pForceCopy to overwrite the files
// if they already exist. Use pBypassChecks to bypass all file copying checks
//------------------------------------------------------------------------------
function CsiCopyDir(const pExistingDirName: string; const pNewDirName: string;
                    pForceCopy: Boolean; pBypassChecks: Boolean): Boolean;
var
  lExistingDirName: string;
  lNewDirName: string;
  lSearchRec: TSearchRec;
begin
  // it is painful to deal with the double sloshes unless we do it up front
  lExistingDirName := CsiExpandDirName(pExistingDirName);
  lNewDirName := CsiExpandDirName(pNewDirName);
  if StartsStr('\\', lExistingDirName) or
     StartsStr('\\', lNewDirName) then begin
    Result := False;
    Exit;
  end;

  if not SameText(lNewDirName, lExistingDirName) then
    if not StartsStr(IncludeTrailingPathDelimiter(lNewDirName),
                        lExistingDirName, False) and
       not StartsStr(IncludeTrailingPathDelimiter(lExistingDirName),
                        lNewDirName, False) and
       DirectoryExists(lExistingDirName) and
       CsiCreateDir(lNewDirName) then begin
      Result := True;
      lExistingDirName := IncludeTrailingPathDelimiter(lExistingDirName);
      lNewDirName := IncludeTrailingPathDelimiter(lNewDirName);
      if FindFirst(lExistingDirName + '*', faAnyFile, lSearchRec) = 0 then
        try
          repeat
            with lSearchRec do
              if (Name <> '.') and (Name <> '..') then
                if (Attr and faDirectory) <> 0 then
                  // recursively copy the sub-directories first
                  Result := CsiCopyDir(lExistingDirName + Name,
                                       lNewDirName + Name, pForceCopy,
                                       pBypassChecks) and Result
                else
                  // copy the files in the directory
                  Result := CsiCopyFile(lExistingDirName + Name,
                                        lNewDirName + Name, pForceCopy,
                                        pBypassChecks) and Result;
          until FindNext(lSearchRec) <> 0;
        finally
          SysUtils.FindClose(lSearchRec);
        end

    end else
      // cannot copy the directory if it does not exist, or we cannot create the
      // destination directory, or the destination and source directories
      // overlap
      Result := False

    else
      // cannot copy the directory if it does not exist
      Result := DirectoryExists(lExistingDirName);
end;

//------------------------------------------------------------------------------
// CsiCopyFile
//
// Copies the file given by pExistingFileName to the name given by pNewFileName.
// The return value is true if the file was successfully copied or false if an
// error occurred. Use pForceCopy to overwrite the file if it already exists.
// Use pBypassChecks to bypass all file copying checks
//------------------------------------------------------------------------------
function CsiCopyFile(const pExistingFileName: string;
                     const pNewFileName: string; pForceCopy: Boolean;
                     pBypassChecks: Boolean): Boolean;
var
  lExistingFileName: string;
  lNewFileName: string;
begin
  lExistingFileName := CsiExpandFileName(pExistingFileName);
  lNewFileName := CsiExpandFileName(pNewFileName);
  if not pBypassChecks and pForceCopy and
     not SameText(lNewFileName, lExistingFileName) then
    // ensure that the destination file does not exist
    Result := CsiDeleteFile(lNewFileName, pBypassChecks)
  else
    Result := True;

  if Result then
    if not SameText(lNewFileName, lExistingFileName) then
      if FileExists(lExistingFileName) and not FileExists(lNewFileName) and
         not DirectoryExists(lNewFileName) then begin
        if not pBypassChecks then
          Result := CsiCreateDir(CsiExtractFileDir(lNewFileName, False));
        Result := Result and
                  CopyFile(PChar(lExistingFileName), PChar(lNewFileName), True);

      end else
        // cannot copy the file if it does not exist or the destination file
        // already exists
        Result := False

    else if not FileExists(lExistingFileName) then
      // cannot copy the file if it does not exist
      Result := False;
end;

//------------------------------------------------------------------------------
// CsiCreateDir
//
// Creates the directory given by pDirName. The return value is true if the
// directory was successfully created or false if an error occurred
//------------------------------------------------------------------------------
function CsiCreateDir(const pDirName: string): Boolean;
var
  lDirName: string;
  lCurrentDir: string;
  lBaseDir: string;
  lDrive: string;
begin
  // it is painful to deal with the double sloshes unless we do it up front
  lDirName := CsiExpandDirName(pDirName);
  if StartsStr('\\', lDirName) then begin
    Result := False;
    Exit;
  end;

  // optimised directory checking prior to additional processing
  if DirectoryExists(lDirName) then begin
    Result := True;
    Exit;
  end;

  lCurrentDir := lDirName;
  lBaseDir := CsiExtractFileDir(lCurrentDir, False);
  lDrive := CsiExtractFileDrive(lBaseDir, False);

  if lBaseDir <> lDrive then
    // recursively create the base directories first
    Result := CsiCreateDir(lBaseDir)
  else
    Result := True;

  if Result then begin
    lCurrentDir := ExcludeTrailingPathDelimiter(lCurrentDir);
    if not (DirectoryExists(lCurrentDir) or FileExists(lCurrentDir)) then begin
      // create the actual directory
      Result := (lCurrentDir <> '') and CreateDir(lCurrentDir);
    end else if FileExists(lCurrentDir) then
      // cannot create the directory if it is a file
      Result := False;
  end;
end;

//------------------------------------------------------------------------------
// CsiCreateFile
//
// Creates the file given by pFileName. The return value is true if the file was
// successfully created or false if an error occurred. Use pForceCreate to
// overwrite the file if it already exists. Use pBypassChecks to bypass all file
// creation checks
//------------------------------------------------------------------------------
function CsiCreateFile(const pFileName: string; pForceCreate: Boolean;
                       pBypassChecks: Boolean): Boolean;
var
  lFileName: string;
  lFileHandle: Integer;
begin
  lFileName := CsiExpandFileName(pFileName);
  if not pBypassChecks and pForceCreate then
    // ensure that the file does not exist
    Result := CsiDeleteFile(lFileName, pBypassChecks)
  else
    Result := True;

  if Result then
    if not (FileExists(lFileName) or DirectoryExists(lFileName)) then begin
      if not pBypassChecks then
        Result := CsiCreateDir(CsiExtractFileDir(lFileName, False));

      if Result then begin
        lFileHandle := FileCreate(lFileName);
        if lFileHandle > 0 then begin
          FileClose(lFileHandle);
          Result := True;
        end else
          // failed if the handle returned is not valid
          Result := False;
      end;

    end else
      // cannot create the file if it already exists
      Result := False;
end;

//------------------------------------------------------------------------------
// CsiDeleteDir
//
// Deletes the directory given by pDirName. The return value is true if the
// directory was successfully deleted or false if an error occurred. Use
// pBypassChecks to bypass all file deletion checks
//------------------------------------------------------------------------------
function CsiDeleteDir(const pDirName: string; pBypassChecks: Boolean): Boolean;
var
  lDirName: string;
  lSearchRec: TSearchRec;
begin
  // it is painful to deal with the double sloshes unless we do it up front
  lDirName := CsiExpandDirName(pDirName);
  if StartsStr('\\', lDirName) then begin
    Result := False;
    Exit;
  end;

  // let us not delete a directory we will regret!
  if IsProtectedDir(lDirName) then begin
    Result := False;
    Exit;
  end;

  Result := True;
  lDirName := IncludeTrailingPathDelimiter(lDirName);
  if FindFirst(lDirName + '*', faAnyFile, lSearchRec) = 0 then
    try
      repeat
        with lSearchRec do
          if (Name <> '.') and (Name <> '..') then
            if (Attr and faDirectory) <> 0 then
              // recursively delete the sub-directories first
              Result := CsiDeleteDir(lDirName + Name, pBypassChecks) and Result
            else
              // delete the files in the directory
              Result := CsiDeleteFile(lDirName + Name, pBypassChecks) and
                        Result;
      until FindNext(lSearchRec) <> 0;
    finally
      SysUtils.FindClose(lSearchRec);
    end;

  if Result then
    if DirectoryExists(lDirName) then
      // delete the actual directory
      Result := RemoveDir(lDirName)
    else if FileExists(ExcludeTrailingPathDelimiter(lDirName)) then
      // cannot delete the directory if it is a file
      Result := False;
end;

//------------------------------------------------------------------------------
// CsiDeleteFile
//
// Deletes the file given by pFileName. The return value is true if the file was
// successfully deleted or false if an error occurred. Use pBypassChecks to
// bypass all file deletion checks
//------------------------------------------------------------------------------
function CsiDeleteFile(const pFileName: string; pBypassChecks: Boolean):
                       Boolean;
var
  lFileName: string;
begin
  lFileName := CsiExpandFileName(pFileName);
  if FileExists(lFileName) then begin
    if not pBypassChecks then
      // remove any attributes that might prevent deletion
      FileSetAttr(lFileName, 0);
    Result := SysUtils.DeleteFile(lFileName);

  end else if DirectoryExists(lFileName) then
    // cannot delete the file if it is a directory
    Result := False

  else
    Result := lFileName <> '';
end;

//------------------------------------------------------------------------------
// CsiExpandDirName
//
// Returns the full path name for the directory given by pDirName
//------------------------------------------------------------------------------
function CsiExpandDirName(const pDirName: string): string;
begin
  if pDirName <> '' then begin
    Result := CsiExpandFileName(IncludeTrailingPathDelimiter(pDirName) +
                                'File' + EXT_TEXT);
    Result := CsiExtractFileDir(Result, False);

  end else
    // return an empty result
    Result := '';
end;

//------------------------------------------------------------------------------
// CsiExpandFileName
//
// Returns the full path name for the file given by pFileName
//------------------------------------------------------------------------------
function CsiExpandFileName(const pFileName: string): string;
begin
  if pFileName <> '' then
    Result := ExpandFileName(pFileName)
  else
    // return an empty result
    Result := '';
end;

//------------------------------------------------------------------------------
// CsiExtractFileDir
//
// Returns the drive and directory parts of the file given by pFileName. The
// pIncludePathDelimiter flag indicates whether the return value includes a
// trailing path delimiter
//------------------------------------------------------------------------------
function CsiExtractFileDir(const pFileName: string;
                           pIncludePathDelimiter: Boolean): string;
begin
  if pFileName <> '' then begin
    Result := ExtractFileDir(CsiExpandFileName(pFileName));
    if pIncludePathDelimiter then
      Result := IncludeTrailingPathDelimiter(Result)
    else
      Result := ExcludeTrailingPathDelimiter(Result);

  end else
    // return an empty result
    Result := '';
end;

//------------------------------------------------------------------------------
// CsiExtractFileDrive
//
// Returns the drive part of the file given by pFileName. The
// pIncludePathDelimiter flag indicates whether the return value includes a
// trailing path delimiter
//------------------------------------------------------------------------------
function CsiExtractFileDrive(const pFileName: string;
                             pIncludePathDelimiter: Boolean): string;
begin
  if pFileName <> '' then begin
    Result := ExtractFileDrive(CsiExpandFileName(pFileName));
    if pIncludePathDelimiter then
      Result := IncludeTrailingPathDelimiter(Result)
    else
      Result := ExcludeTrailingPathDelimiter(Result);

  end else
    // return an empty result
    Result := '';
end;

//------------------------------------------------------------------------------
// CsiFileByteCount
//
// Returns the size of the file given by pFileName
//------------------------------------------------------------------------------
function CsiFileByteCount(const pFileName: string): Int64;
var
  lFileStream: TFileStream;
begin
  lFileStream := TFileStream.Create(pFileName, fmOpenRead or fmShareDenyWrite);
  try
    Result := lFileStream.Size;
  finally
    lFileStream.Free;
  end;
end;

//------------------------------------------------------------------------------
// CsiFileLineCount
//
// Returns the line count of the file given by pFileName
//------------------------------------------------------------------------------
{function CsiFileLineCount(const pFileName: string): Integer;
var
  lStringList: TStringList;
begin
  lStringList := TStringList.Create;
  with lStringList do
    try
      CaseSensitive := False;
      CsiLoadFromFile(pFileName, lStringList);
      Result := Count;
    finally
      Free;
    end;
end; }

//------------------------------------------------------------------------------
// CsiGetFileTime
//
// Returns the corresponding file time of the type pTimeType for the file given
// by pFileName
//------------------------------------------------------------------------------
{function CsiGetFileTime(const pFileName: string; pTimeType: TECsiFileTimeType):
                        TDateTime;
var
  lFileHandle: THandle;
  lFindData: TWin32FindData;
begin
  lFileHandle := FindFirstFile(PChar(pFileName), lFindData);
  if lFileHandle = INVALID_HANDLE_VALUE then
    raise ECsiFile.Create('Cannot find file <' + pFileName + '>', slError, 1);
  FindClose(lFileHandle);

  case pTimeType of
    ftCreation:
      Result := CsiUtcFileTimeToDateTime(lFindData.ftCreationTime);

    ftLastWrite:
      Result := CsiUtcFileTimeToDateTime(lFindData.ftLastWriteTime);

    ftLastAccess:
      Result := CsiUtcFileTimeToDateTime(lFindData.ftLastAccessTime);

    else
      raise ECsiFile.Create('Invalid file time type <' +
                            IntToStr(Ord(pTimeType)) + '>', slError, 2);
  end;
end; }

//------------------------------------------------------------------------------
// CsiGetWriteableFileName
//
// Returns the file name of a file that can be written based on the base file
// name pBaseFileName. The pCanExist flag indicates whether the file can already
// exist
//------------------------------------------------------------------------------
{function CsiGetWriteableFileName(const pBaseFileName: string;
                                 pCanExist: Boolean): string;
var
  lBaseFileName: string;
  lBaseDirName: string;
  lBaseFileExt: string;
  lIndex: Integer;
begin
  if pBaseFileName = '' then
    raise ECsiFile.Create('Empty base writeable file name', slError, 3);

  // break the file name down into its constituent parts
  lBaseFileName := CsiExpandFileName(pBaseFileName);
  Result := lBaseFileName;
  lBaseDirName := CsiExtractFileDir(lBaseFileName);
  lBaseFileName := ExtractFileName(lBaseFileName);
  lBaseFileExt := ExtractFileExt(lBaseFileName);
  lBaseFileName := CsiLeftStr(lBaseFileName,
                              Length(lBaseFileName) - Length(lBaseFileExt));

  // get a file that can be written
  lIndex := 1;
  while not ((pCanExist and CanAppendFile(Result)) or
             (not pCanExist and not FileExists(Result))) do begin
    Result := lBaseDirName + lBaseFileName + '_' + IntToStr(lIndex) +
              lBaseFileExt;
    Inc(lIndex);
  end;
end;}

//------------------------------------------------------------------------------
// CsiIsFileReadable
//
// Returns whether the file given by pFileName is readable
//------------------------------------------------------------------------------
function CsiIsFileReadable(const pFileName: string): Boolean;
var
  lFileHandle: Integer;
begin
  lFileHandle := FileOpen(pFileName, fmOpenRead or fmShareDenyWrite);
  if lFileHandle > 0 then begin
    FileClose(lFileHandle);
    Result := True;
  end else
    Result := False;
end;

//------------------------------------------------------------------------------
// CsiIsFileWriteable
//
// Returns whether the file given by pFileName is writeable
//------------------------------------------------------------------------------
function CsiIsFileWriteable(const pFileName: string): Boolean;
var
  lFileHandle: Integer;
begin
  lFileHandle := FileOpen(pFileName, fmOpenReadWrite or fmShareDenyWrite);
  if lFileHandle > 0 then begin
    FileClose(lFileHandle);
    Result := True;
  end else
    Result := False;
end;

//------------------------------------------------------------------------------
// CsiMoveDir
//
// Moves the directory given by pExistingDirName to the directory given by
// pNewDirName. The return value is true if the directory was successfully moved
// or false if an error occurred. Use pForceMove to overwrite the files if they
// already exist. Use pBypassChecks to bypass all file moving checks
//------------------------------------------------------------------------------
function CsiMoveDir(const pExistingDirName: string; const pNewDirName: string;
                    pForceMove: Boolean; pBypassChecks: Boolean): Boolean;
var
  lExistingDirName: string;
  lNewDirName: string;
  lSearchRec: TSearchRec;
begin
  // it is painful to deal with the double sloshes unless we do it up front
  lExistingDirName := CsiExpandDirName(pExistingDirName);
  lNewDirName := CsiExpandDirName(pNewDirName);
  if StartsStr('\\', lExistingDirName) or
     StartsStr('\\', lNewDirName) then begin
    Result := False;
    Exit;
  end;

  // let us not move a directory we will regret!
  if IsProtectedDir(lExistingDirName) then begin
    Result := False;
    Exit;
  end;

  if not SameText(lNewDirName, lExistingDirName) then
    if not StartsStr(IncludeTrailingPathDelimiter(lNewDirName),
                        lExistingDirName, False) and
       not StartsStr(IncludeTrailingPathDelimiter(lExistingDirName),
                        lNewDirName, False) and
       DirectoryExists(lExistingDirName) and
       CsiCreateDir(lNewDirName) then begin
      Result := True;
      lExistingDirName := IncludeTrailingPathDelimiter(lExistingDirName);
      lNewDirName := IncludeTrailingPathDelimiter(lNewDirName);
      if FindFirst(lExistingDirName + '*', faAnyFile, lSearchRec) = 0 then
        try
          repeat
            with lSearchRec do
              if (Name <> '.') and (Name <> '..') then
                if (Attr and faDirectory) <> 0 then
                  // recursively move the sub-directories first
                  Result := CsiMoveDir(lExistingDirName + Name,
                                       lNewDirName + Name, pForceMove) and
                            Result
                else
                  // move the files in the directory
                  Result := CsiMoveFile(lExistingDirName + Name,
                                        lNewDirName + Name, pForceMove,
                                        pBypassChecks) and Result;
          until FindNext(lSearchRec) <> 0;
        finally
          SysUtils.FindClose(lSearchRec);
        end;

      if Result and not SameText(lNewDirName, lExistingDirName) then
        // delete the current directory
        Result := CsiDeleteDir(lExistingDirName, pBypassChecks);

    end else
      // cannot move the directory if it does not exist, or we cannot create the
      // destination directory, or the destination and source directories
      // overlap
      Result := False

    else
      // cannot move the directory if it does not exist
      Result := DirectoryExists(lExistingDirName);
end;

//------------------------------------------------------------------------------
// CsiMoveFile
//
// Moves the file given by pExistingFileName to the name given by pNewFileName.
// The return value is true if the file was successfully moved or false if an
// error occurred. Use pForceMove to overwrite the file if it already exists.
// Use pBypassChecks to bypass all file moving checks
//------------------------------------------------------------------------------
function CsiMoveFile(const pExistingFileName: string;
                     const pNewFileName: string; pForceMove: Boolean;
                     pBypassChecks: Boolean): Boolean;
var
  lExistingFileName: string;
  lNewFileName: string;
begin
  lExistingFileName := CsiExpandFileName(pExistingFileName);
  lNewFileName := CsiExpandFileName(pNewFileName);
  if not pBypassChecks and pForceMove and
     not SameText(lNewFileName, lExistingFileName) then
    // ensure that the destination file does not exist
    Result := CsiDeleteFile(lNewFileName, pBypassChecks)
  else
    Result := True;

  if Result then
    if not SameText(lNewFileName, lExistingFileName) then
      if FileExists(lExistingFileName) and not FileExists(lNewFileName) and
         not DirectoryExists(lNewFileName) then begin
        if not pBypassChecks then
          Result := CsiCreateDir(CsiExtractFileDir(lNewFileName, False));
        Result := Result and RenameFile(lExistingFileName, lNewFileName);

      end else
        // cannot move the file if it does not exist or the destination file
        // already exists
        Result := False

    else if not FileExists(lExistingFileName) then
      // cannot move the file if it does not exist
      Result := False;
end;

//------------------------------------------------------------------------------
// CsiSetFileTime
//
// Sets the corresponding file time to pFileTime of the type pTimeType for the
// file given by pFileName
//------------------------------------------------------------------------------
{procedure CsiSetFileTime(const pFileName: string; pTimeType: TECsiFileTimeType;
                         pFileTime: TDateTime);
var
  lFileHandle: Integer;
  lUtcFileTime: TFileTime;
begin
  lFileHandle := FileOpen(pFileName, fmOpenReadWrite or fmShareDenyWrite);
  if lFileHandle < 0 then
    raise ECsiFile.Create('Cannot open file <' + pFileName + '>', slError, 4);

  try
    lUtcFileTime := CsiDateTimeToUtcFileTime(pFileTime);

    case pTimeType of
      ftCreation:
        SetFileTime(lFileHandle, @lUtcFileTime, nil, nil);

      ftLastWrite:
        SetFileTime(lFileHandle, nil, nil, @lUtcFileTime);

      ftLastAccess:
        SetFileTime(lFileHandle, nil, @lUtcFileTime, nil);

      else
        raise ECsiFile.Create('Invalid file time type <' +
                              IntToStr(Ord(pTimeType)) + '>', slError, 5);
    end;
  finally
    FileClose(lFileHandle);
  end;
end; }

{

//------------------------------------------------------------------------------
// CsiLoadFromFile
//
// Loads pFileName into pData, an array of bytes pData
//------------------------------------------------------------------------------
procedure CsiLoadFromFile(const pFileName: string; out pData: TByteDynArray);
var
  lFileStream: TFileStream;
  lSize: Integer;
begin
  lFileStream := TFileStream.Create(pFileName, fmOpenRead or fmShareDenyWrite);
  with lFileStream do
    try
      lSize := Size;
      SetLength(pData, lSize);
      if Length(pData) > 0 then
        ReadBuffer(pData[0], lSize);
    finally
      Free;
    end;
end;

//------------------------------------------------------------------------------
// CsiLoadFromFile
//
// Loads pFileName into pIdValuePairs using the string encoding pStringEncoding
// (one of automatic, Ansi, UTF-16, or UTF-8) which includes the byte order mark
// if the string encoding is automatic (pWithKeyChars indicates whether
// pFileName has the id-value pairs key characters in the first line of the
// file)
//------------------------------------------------------------------------------
procedure CsiLoadFromFile(const pFileName: string;
                          pIdValuePairs: TCsiIdValuePairs;
                          pWithKeyChars: Boolean;
                          pStringEncoding: TECsiStringEncoding);
var
  lStrings: TCsiStringList;
  lKeyChars: string;
  lKeyChar: Char;
begin
  lStrings := TCsiStringList.Create;
  try
    lStrings.CaseSensitive := False;
    CsiLoadFromFile(pFileName, lStrings, pStringEncoding);

    if pWithKeyChars and (lStrings.Count >= 1) then begin
      // read the key characters from the first line
      lKeyChars := lStrings.Strings[0];
      if lKeyChars <> '' then begin
        pIdValuePairs.DelimiterChar := lKeyChars[1];

        if Length(lKeyChars) >= 2 then begin
          lKeyChar := lKeyChars[2];
          pIdValuePairs.AssignmentChar := lKeyChar;
          lStrings.NameValueSeparator := lKeyChar;
        end;
      end;

      lStrings.Delete(0);
    end;

    pIdValuePairs.Assign(lStrings);
  finally
    lStrings.Free;
  end;
end;

//------------------------------------------------------------------------------
// CsiLoadFromFile
//
// Loads pFileName into pStrings using the string encoding pStringEncoding (one
// of automatic, Ansi, UTF-16, or UTF-8) which includes the byte order mark if
// the string encoding is automatic
//------------------------------------------------------------------------------
procedure CsiLoadFromFile(const pFileName: string; pStrings: TStrings;
                          pStringEncoding: TECsiStringEncoding);
var
  lText: string;
begin
  CsiLoadFromFile(pFileName, lText, pStringEncoding);
  pStrings.Text := lText;
end;

//------------------------------------------------------------------------------
// CsiLoadFromFile
//
// Loads pFileName into pText using the string encoding pStringEncoding (one of
// automatic, Ansi, UTF-16, or UTF-8) which includes the byte order mark if the
// string encoding is automatic
//------------------------------------------------------------------------------
procedure CsiLoadFromFile(const pFileName: string; out pText: string;
                          pStringEncoding: TECsiStringEncoding);
var
  lData: TByteDynArray;
begin
  CsiLoadFromFile(pFileName, lData);
  pText := CsiBytesToStr(lData, pStringEncoding);
end;

 }




procedure GetDirs(const Path : string; Items : TStrings);
var
  FileInfo: TSearchRec;
  DosCode: Integer;
  S: string;
begin
  Items.Clear;
  if DirectoryExists(Path) then begin
    s := Path + '\*.*';
    DosCode := FindFirst(s, faDirectory, FileInfo);
    try
      while DosCode = 0 do begin
        if (FileInfo.Name[1] <> '.') and (FileInfo.Attr and faDirectory = faDirectory) then begin
          Items.Add(FileInfo.Name);
        end;
        DosCode := FindNext(FileInfo);
      end;
    finally
      SysUtils.FindClose(FileInfo);
    end;
  end;
end;

procedure GetFiles(const DirPath, FileExt: string; FileList: TStringList);
var
  Status: THandle;
  FindData: TWin32FindData;
begin
  Status := FindFirstFileW(PWideChar(DirPath + FileExt), FindData);
  if Status <> INVALID_HANDLE_VALUE then repeat
    if (FindData.cFileName[0] <> '.') and (FindData.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY = 0) then FileList.Add(FindData.cFileName);
  until not FindNextFile(Status, FindData);
  Windows.FindClose(Status);
end;

function NormalDir(const DirName: string): string;
begin
  Result := DirName;
  if (Result <> '') and not (Result[Length(Result)] = '\') then begin
    if Result[Length(Result)] = '/'
      then Result[Length(Result)] := '\'
      else begin
        if (Length(Result) = 1)
          then Result := Result + ':\'
          else Result := Result + '\';
      end;
  end;
end;

function DirExists(const DirName: string): Boolean;
begin
  Result := DirectoryExists(DirName);
end;

function CreateDir(const DirName: string): Boolean;
begin
  Result := CreateDirectoryW(PWideChar(DirName), nil);
end;

function RemoveDir(const DirName: string): Boolean;
begin
  Result := RemoveDirectoryW(PWideChar(DirName));
end;

function SetCurrentDir(const DirName: string): Boolean;
begin
  Result := SetCurrentDirectoryW(PWideChar(DirName));
end;

function GetCurrentDir: string;
var
  Buf: array[0..MAX_PATH] of WideChar;
begin
  GetCurrentDirectoryW(MAX_PATH, Buf);
  Result := Buf;
end;

function DeleteFile(const FileName: string): Boolean;
begin
  Result := DeleteFileW(PWideChar(FileName));
end;

function CopyFile(const ExistingFileName, NewFileName: string; bFailIfExists:
    Boolean): Boolean;
begin
  Result := CopyFileW(PWideChar(ExistingFileName), PWideChar(NewFileName), bFailIfExists);
end;

procedure CopyFiles(SrcMask, SrcDir: string; DstDir: string);
var
  FileInfo: TSearchRec;
  DosCode: Integer;
begin
  if not DirExists(DstDir) then CreateDir(DstDir);
  DstDir := NormalDir(DstDir);
  SrcDir := NormalDir(SrcDir);
  DosCode := FindFirst(SrcDir + SrcMask, faAnyFile, FileInfo);
  try
    while DosCode = 0 do begin
      if (FileInfo.Name[1] <> '.') and (FileInfo.Attr <> faVolumeID) then begin
        if (FileInfo.Attr and faVolumeID <> faVolumeID) then CopyFile(SrcDir + FileInfo.Name, DstDir + FileInfo.Name, False);
      end;
      DosCode := FindNext(FileInfo);
    end;
  finally
    FindClose(FileInfo);
  end;
end;


function FileSetAttr(const FileName: string; Attr: Cardinal): Integer;
begin
  Result := 0;
  if not SetFileAttributesW(PWideChar(FileName), Attr) then
    Result := Integer(GetLastError);
end;

function FileGetAttr(const FileName: string): Cardinal;
begin
  Result := GetFileAttributesW(PWideChar(FileName));
end;

function ClearDir(const Path: string; Delete: Boolean): Boolean;
const
  FileNotFound = 18;
var
  FileInfo: TSearchRec;
  DosCode: Integer;
begin
  Result := DirExists(Path);
  if not Result then Exit;
  DosCode := FindFirst(NormalDir(Path) + '*.*', faAnyFile, FileInfo);
  try
    while DosCode = 0 do begin
      if (FileInfo.Name[1] <> '.') and (FileInfo.Attr <> faVolumeID) then begin
        if (FileInfo.Attr and faDirectory = faDirectory) then begin
          Result := ClearDir(NormalDir(Path) + FileInfo.Name, Delete) and Result
        end
        else if (FileInfo.Attr and faVolumeID <> faVolumeID) then begin
          if (FileInfo.Attr and faReadOnly = faReadOnly) then begin
            FileSetAttr(NormalDir(Path) + FileInfo.Name, faArchive);
          end;
          Result := DeleteFile(NormalDir(Path) + FileInfo.Name) and Result;
        end;
      end;
      DosCode := FindNext(FileInfo);
    end;
  finally
    FindClose(FileInfo);
  end;
  if Delete and Result and (DosCode = FileNotFound) and not ((Length(Path) = 2) and (Path[2] = ':')) then begin
    Result := RemoveDir(Path) and Result;
  end;
end;

function GetIconForFile(const FullFileName: string; Flag : integer): TIcon;
var
  SH: TSHFileInfo;
begin
  Result := nil;
  if FileExists(FullFileName) then
  begin
    FillChar(SH, SizeOf(SH), 0);
    if SHGetFileInfo(PWideChar(FullFileName), 0, SH, SizeOf(SH), SHGFI_ICON or Flag) <> 0 then begin
      Result := TIcon.Create;
      Result.Handle := SH.hIcon;
      if Result.Empty then FreeAndNil(Result);
    end;
  end;
end;

function ValidFileName(const FileName: string): Boolean;
  function HasAny(const Str, Substr: string): Boolean;
  var
    I: Integer;
  begin
    Result := False;
    for I := 1 to Length(Substr) do begin
      if Pos(Substr[I], Str) > 0 then begin
        Result := True;
        Break;
      end;
    end;
  end;
begin
  Result := (FileName <> '') and (not HasAny(FileName, '<>"|*?/'));
  if Result then Result := Pos('\', ExtractFileName(FileName)) = 0;
end;

function ShortToLongFileName(const ShortName: string): string;
var
  Temp: TWin32FindDataW;
  SearchHandle: THandle;
begin
  SearchHandle := FindFirstFileW(PWideChar(ShortName), Temp);

  if SearchHandle <> INVALID_HANDLE_VALUE then begin
    Result := string(Temp.cFileName);
    if Result = '' then Result := string(Temp.cAlternateFileName);
  end
  else Result := '';
  Windows.FindClose(SearchHandle);
end;

function LongToShortFileName(const LongName: string): string;
var
  Temp: TWin32FindDataW;
  SearchHandle: THandle;
begin
  SearchHandle := FindFirstFileW(PWideChar(LongName), Temp);

  if SearchHandle <> INVALID_HANDLE_VALUE then begin
    Result := string(Temp.cAlternateFileName);
    if Result = '' then Result := string(Temp.cFileName);
  end
  else Result := '';
  Windows.FindClose(SearchHandle);
end;


function ShortToLongPath(ShortName: string): string;
var
  LastSlash: PWideChar;
  TempPathPtr: PWideChar;
begin
  Result := '';
  TempPathPtr := PWideChar(ShortName);
  UniqueString (ShortName);

  LastSlash := StrScan(TempPathPtr, '\');

  while LastSlash <> nil do begin
    Result := '\' + ShortToLongFileName(TempPathPtr) + Result;
    if LastSlash <> nil then begin
      LastSlash^ := #0;
      LastSlash := StrScan(TempPathPtr, '\');
    end;
  end;
  Result := TempPathPtr + Result;
end;


function LongToShortPath(LongName: string): string;
var
  LastSlash: PWideChar;
  TempPathPtr: PWideChar;
begin
  Result := '';
  UniqueString (LongName);
  TempPathPtr := PWideChar(LongName);

  LastSlash := StrScan(TempPathPtr, '\');

  while LastSlash <> nil do begin
    Result := '\' + LongToShortFileName(TempPathPtr) + Result;
    if LastSlash <> nil then begin
      LastSlash^ := #0;
      LastSlash := StrScan(TempPathPtr, '\');
    end;
  end;
  Result := TempPathPtr + Result;
end;


function RemoveEmptyFolders(const rootFolder: string): boolean;
var
 iRet: integer;
 bRemove: boolean;
 sr: TSearchRec;
begin
  RemoveEmptyFolders := False;
  bRemove := True;
  iRet := FindFirst(rootFolder + '\*.*', faAnyFile, sr) ;
  while (iRet = 0) do begin
   if (sr.Name[1] <> '.') then begin
     if (sr.Attr and faDirectory) <> 0 then begin
       if not RemoveEmptyFolders(rootFolder + '\' + sr.Name) then bRemove := False;
     end else begin
       bRemove := False;
     end;
   end;
   iRet := FindNext(sr) ;
  end;
  FindClose(sr) ;
  if bRemove then RemoveEmptyFolders := RemoveDir(rootFolder) ;
end;


function WriteTextToFile(const filename, text: string; Append: Boolean): Boolean;
begin
  with TStreamWriter.Create(filename, Append) do
  begin
    Write(text);
    Flush;
    Close;
  end;
end;

function DeleteFiles(const FileMask: String): Boolean;
var SRec : TSearchRec;
    Path : String;
begin
  Result := FindFirst(FileMask, faAnyFile, SRec) = 0;
  if not Result then
    exit;
  try
    Path := ExtractFilePath(FileMask);
    repeat
      if (SRec.Name <> '') and (SRec.Name  <> '.') and (SRec.Name <> '..') and
         (SRec.Attr and (faVolumeID + faDirectory) = 0) then
        begin
          Result := DeleteFile(Path + SRec.Name);
          if not Result then
            break;
        end;
    until FindNext(SRec) <> 0;
  finally
    FindClose(SRec);
  end;
end;
end.


