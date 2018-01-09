unit appUtils;

interface

uses
  Forms, SysUtils, Windows, Messages, Controls, Variants, Classes, SQLiteTable3;

function GetSQLiteDb: TSQLiteDatabase;

procedure EnableWordInWebrowser;

function GetHtml(url: string): string;

function DownloadToFile(const url, filename: string): boolean;

function GetAiGuangJieDb: TSQLiteDatabase;

implementation

uses
  Registry, IdHTTP, roShell;

function GetSQLiteDb: TSQLiteDatabase;
var
  db: TSQLiteDatabase;
  sql: string;
begin
  db := TSQLiteDatabase.Create(GetAppPath + 'down.db3');
  try
    if not db.TableExists('task') then
    begin
      sql := 'CREATE TABLE [task] ('
        + '[id] INTEGER  PRIMARY KEY AUTOINCREMENT NOT NULL,'
        + '[webid] INTEGER  NOT NULL,'
        + '[appname] VARCHAR(255)  NOT NULL,'
        + '[appicon] VARCHAR(2084)  NOT NULL,'
        + '[fileurl] VARCHAR(2084)  NOT NULL,'
        + '[filename] VARCHAR(255)  NOT NULL,'
        + '[filesize] INTEGER  NULL,'
        + '[filemd5] VARCHAR(255)  NOT NULL,'
        + '[done] BOOLEAN  NOT NULL)';
      db.ExecSQL(sql);
    end;
    Result := db;
  except
    db.Free;
    Result := nil;
  end;

end;


function GetAiGuangJieDb: TSQLiteDatabase;
var
  db: TSQLiteDatabase;
  sql: string;
begin
  db := TSQLiteDatabase.Create(GetAppPath + 'aiguangjie.db3');
  try
    if not db.TableExists('zhuanji') then
    begin
      sql := 'CREATE TABLE [zhuanji] ('
        + '[id] INTEGER  PRIMARY KEY AUTOINCREMENT NOT NULL,'
        + '[url] VARCHAR(255)  NOT NULL,'
        + '[caption] VARCHAR(255)  NOT NULL,'
        + '[done] BOOLEAN  NOT NULL DEFAULT 0)';
      db.ExecSQL(sql);
    end;
    Result := db;
  except
    db.Free;
    Result := nil;
  end;
end;


procedure EnableWordInWebrowser;
var
  reg: TRegistry;
begin
  // 设置word2007可以在WebBrowser中打开
  reg := TRegistry.Create;
  with reg do begin
    try
      RootKey := HKEY_LOCAL_MACHINE;
      if OpenKey('\SOFTWARE\Classes\Word.Document.12', false) then
      begin
        reg.WriteInteger('BrowserFlags', 2147483684);
      end;
      reg.CloseKey;
      if OpenKey('\SOFTWARE\Classes\Word.Document.8', false) then
      begin
        reg.WriteInteger('BrowserFlags', 2147483684);
      end;
      reg.CloseKey;
    finally
      reg.Free;
    end;
  end;
end;


function GetHtml(url: string): string;
var
  s: string;
  outputStream: TStringStream;

  idhtp: TIdHTTP;
begin
  idhtp := TIdHTTP.Create;
  idhtp.HandleRedirects := true;
  idhtp.Request.UserAgent := 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; WOW64; Trident/6.0)';
  //idhtp.Request.AcceptEncoding := 'gzip, deflate';
  idhtp.Request.ContentType := 'application/x-www-form-urlencoded';
  outputStream := TStringStream.Create('');
  try
    idhtp.Get(url, outputStream);
    s := outputStream.DataString;
    Result := s;
  finally
    outputStream.Free;
    idhtp.Free;
  end;
end;

function DownloadToFile(const url, filename: string): boolean;
var
  outputStream: TMemoryStream;
  idhtp: TIdHTTP;
begin
  idhtp := TIdHTTP.Create;
  idhtp.HandleRedirects := true;
  outputStream := TMemoryStream.Create;
  try
    try
      idhtp.Get(url, outputStream);
      outputStream.SaveToFile(filename);
      Result := true;
    except
      Result := False;
    end;
  finally
    outputStream.Free;
    idhtp.Free;
  end;
end;

end.
