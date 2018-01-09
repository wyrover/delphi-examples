unit roShell;

interface

uses
  SysUtils, StrUtils, Classes, Windows;


function PathRemoveExtension(const Path: string): string;
function PathExtractFileNameNoExt(const Path: string): string;

// ºÍIncludeTrailingPathDelimiterÏàÍ¬
function DisposePath(const Path: string): string;

function GetWindowsDir: string;
function GetSystemDir: string;

function GetCurrentDir: string;
function SetCurrentDir(const DirName: string): Boolean;

function DeleteFile(const FileName: string): Boolean;

function CopyFile(const ExistingFileName, NewFileName: string; bFailIfExists:
    Boolean): Boolean;

function GetAppName: string;

function GetAppPath: string;

function RunAsAdmin(const Handle: Hwnd; const Path, Params: string): Boolean;

implementation

uses
  ShellApi;

const
  DirDelimiter = '\';

function PathRemoveExtension(const Path: string): string;
var
  I: Integer;
begin
  I := LastDelimiter(':.' + DirDelimiter, Path);
  if (I > 0) and (Path[I] = '.') then
    Result := Copy(Path, 1, I - 1)
  else
    Result := Path;
end;

function PathExtractFileNameNoExt(const Path: string): string;
begin
  Result := PathRemoveExtension(ExtractFileName(Path));
end;

function DisposePath(const path: string): string;
begin
  Result := IncludeTrailingPathDelimiter(Path);
end;

//------------------------------------------------------------------------------
// GetWindowsDir
//
// Wrapper around the GetWindowsDirectory Windows API function
//------------------------------------------------------------------------------
function GetWindowsDir: string;
var
  lBuf: array[0..MAX_PATH] of Char;
begin
  Result := '';
  if GetWindowsDirectory(@lBuf[0], MAX_PATH + 1) <> 0 then
    Result := ExcludeTrailingPathDelimiter(lBuf);
  if Result = '' then
    Result := 'C:\Windows';
end;

//------------------------------------------------------------------------------
// GetSystemDir
//
// Wrapper around the GetSystemDirectory Windows API function
//------------------------------------------------------------------------------
function GetSystemDir: string;
var
  lBuf: array[0..MAX_PATH] of Char;
begin
  Result := '';
  if GetSystemDirectory(@lBuf[0], MAX_PATH + 1) <> 0 then
    Result := ExcludeTrailingPathDelimiter(lBuf);
  if Result = '' then
    Result := 'C:\Windows\System32';
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

function GetAppName: string;
begin
  Result := LowerCase(ChangeFileExt( ExtractFileName(ParamStr(0)), ''));
end;

function GetAppPath: string;
begin
  Result := ExtractFilePath(ParamStr(0));
end;

function RunAsAdmin(const Handle: Hwnd; const Path, Params: string): Boolean;
var
  sei: TShellExecuteInfo;
begin
  FillChar(sei, SizeOf(sei), 0);
  sei.cbSize := SizeOf(sei);
  sei.Wnd := Handle;
  sei.fMask := SEE_MASK_FLAG_DDEWAIT or SEE_MASK_FLAG_NO_UI;
  sei.lpVerb := 'runas';
  sei.lpFile := PChar(Path);
  sei.lpParameters := PChar(Params);
  sei.nShow := SW_SHOWNORMAL;
  Result := ShellExecuteExA(@sei);
end;


end.
