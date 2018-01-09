unit roIni;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, IniFiles;

procedure GetIniSections(IniList, SectionsList : TStringList);

procedure GetIniSection(const Section: string; Sections, Strings: TStrings);

function ReadIniInteger(IniList, SectionsList : TStringList; const Section,
    Ident: string; Default: Longint): Longint;

function ReadIniString(IniList, SectionsList : TStringList; const Section,
    Ident, Default: string): string;

implementation

procedure GetIniSections(IniList, SectionsList : TStringList);
var
  I: Integer;
  S: string;
  Strings: TStrings;
begin
  SectionsList.Clear;
  Strings := nil;
  for I := 0 to IniList.Count - 1 do begin
    S := IniList[I];
    if (S <> '') and (S[1] <> ';') then begin
      if (S[1] = '[') and (S[Length(S)] = ']') then begin
        Strings := TStringList.Create;
        try
          SectionsList.AddObject(Copy(S, 2, Length(S) - 2), Strings);
        except
          FreeAndNil(Strings);
        end;
      end
      else begin
        if Strings <> nil then Strings.Add(S);
      end;
    end;
  end;
end;

procedure GetIniSection(const Section: string; Sections, Strings: TStrings);
var
  I, J: Integer;
  SectionStrings: TStrings;
begin
  Strings.BeginUpdate;
  try
    Strings.Clear;
    I := Sections.IndexOf(Section);
    if I >= 0 then
    begin
      SectionStrings := TStrings(Sections.Objects[I]);
      for J := 0 to SectionStrings.Count - 1 do
        Strings.Add(SectionStrings.Names[J]);
    end;
  finally
    Strings.EndUpdate;
  end;
end;

function ReadIniString(IniList, SectionsList : TStringList; const Section,
    Ident, Default: string): string;
var
  I: Integer;
  Strings: TStrings;
begin
  I := SectionsList.IndexOf(Section);
  if I >= 0 then begin
    Strings := TStrings(SectionsList.Objects[I]);
    I := Strings.IndexOfName(Ident);
    if I >= 0 then begin
      Result := Copy(Strings[I], Length(Ident) + 2, Maxint);
      Exit;
    end;
  end;
  Result := Default;
end;

function ReadIniInteger(IniList, SectionsList : TStringList; const Section,
    Ident: string; Default: Longint): Longint;
var
  IntStr: string;
begin
  IntStr := ReadIniString(IniList, SectionsList, Section, Ident, '');
  if (Length(IntStr) > 2) and (IntStr[1] = '0') and ((IntStr[2] = 'X') or (IntStr[2] = 'x')) then IntStr := '$' + Copy(IntStr, 3, Maxint);
  Result := StrToIntDef(IntStr, Default);
end;

end.
