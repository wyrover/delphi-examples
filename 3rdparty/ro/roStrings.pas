unit roStrings;

interface

uses
  SysUtils, StrUtils, Classes, Windows;

function StartsStr(const pSubStr: string; const pInStr: string;
                      pCaseSensitive: Boolean = True): Boolean;

function MakeStr(C: AnsiChar; N: Integer): AnsiString;

function StringToFloat(S : String): Extended;

function SubStrInclude(const SubString, s : string; CaseInsensitive : boolean):
    boolean;

function WordPosition(const N: Integer; const S: AnsiString; const WordDelims:
    TSysCharSet): Integer;

function WordCount(const S: AnsiString; const WordDelims: TSysCharSet): Integer;

function AddChar(C: AnsiChar; const S: AnsiString; N: Integer): AnsiString;

function AddCharR(C: AnsiChar; const S: AnsiString; N: Integer): AnsiString;

function ReplaceStr(const S, Srch, Replace: string): string;

function AnsiProperCase(const S: AnsiString; const WordDelims: TSysCharSet):
    AnsiString;

function CorrectString(const s : string): string;

function DelBSpace(const S: string): string;

function DelChars(const S: string; Chr: Char): string;

function DelESpace(const S: string): string;

function DelRSpace(const S: string): string;

function ExtractWord(N: Integer; const S: AnsiString; const WordDelims:
    TSysCharSet): AnsiString;

function GetWordNumber(const W, S: string; const WordDelims: TSysCharSet):
    integer;

function IsEmptyStr(const S: AnsiString; const EmptyChars: TSysCharSet):
    Boolean;

function IsWordPresent(const W, S: string; const WordDelims: TSysCharSet):
    Boolean;

function OemToAnsiStr(const OemStr: string): string;

implementation

//------------------------------------------------------------------------------
// StartsStr
//
// Returns true if the leading part of pInStr matches, with or without case-
// sensitivity, pSubStr
//------------------------------------------------------------------------------
function StartsStr(const pSubStr: string; const pInStr: string;
                      pCaseSensitive: Boolean): Boolean;
begin
  if pCaseSensitive then
    Result := pSubStr = Copy(pInStr, 1, Length(pSubStr))
  else
    Result := SameText(pSubStr, Copy(pInStr, 1, Length(pSubStr)));
end;

function MakeStr(C: AnsiChar; N: Integer): AnsiString;
begin
  if N < 1 then begin
    Result := ''
  end
  else begin
    SetLength(Result, N);
    FillChar(Result[1], Length(Result), C);
  end;
end;

function StringToFloat(S : String): Extended;
var
  E, i: Integer;
begin
  s := Trim(s);
  for i := 1 to Length(s) do if S[i] = ',' then S[i] := '.';
  Val(S, Result, E);
  if E <> 0 then Result := 0;
end;

function SubStrInclude(const SubString, s : string; CaseInsensitive : boolean):
    boolean;
begin
  if CaseInsensitive then
    Result := pos(UpperCase(SubString), UpperCase(s)) > 0
  else
    Result := pos(SubString, s) > 0;
end;

function WordPosition(const N: Integer; const S: AnsiString; const WordDelims:
    TSysCharSet): Integer;
var
  Count, I: Integer;
begin
  Count := 0;
  I := 1;
  Result := 0;
  while (I <= Length(S)) and (Count <> N) do begin
    while (I <= Length(S)) and CharInSet(S[I], WordDelims) do Inc(I);
    if I <= Length(S) then Inc(Count);
    if Count <> N then while (I <= Length(S)) and not CharInSet(S[I], WordDelims) do Inc(I)
    else Result := I;
  end;
end;

function WordCount(const S: AnsiString; const WordDelims: TSysCharSet): Integer;
var
  SLen, I: Cardinal;
begin
  Result := 0;
  I := 1;
  SLen := Length(S);
  while I <= SLen do begin
    while (I <= SLen) and CharInSet(S[I], WordDelims) do Inc(I);
    if I <= SLen then Inc(Result);
    while (I <= SLen) and not CharInSet(S[I], WordDelims) do Inc(I);
  end;
end;

function ExtractWord(N: Integer; const S: AnsiString; const WordDelims:
    TSysCharSet): AnsiString;
var
  I: Integer;
  Len: Integer;
begin
  Len := 0;
  I := WordPosition(N, S, WordDelims);
  if I <> 0 then begin
    while (I <= Length(S)) and not CharInSet(S[I], WordDelims) do begin
      Inc(Len);
      SetLength(Result, Len);
      Result[Len] := S[I];
      Inc(I);
    end;
  end;
  SetLength(Result, Len);
end;

function GetWordNumber(const W, S: string; const WordDelims: TSysCharSet):
    integer;
var
  Count, i: Integer;
begin
  Result := -1;
  Count := WordCount(S, WordDelims);
  for i := 1 to Count do begin
    if ExtractWord(i, S, WordDelims) = W then begin
      Result := i;
      Exit;
    end;
  end;
end;

function ReplaceStr(const S, Srch, Replace: string): string;
var
  I: Integer;
  Source: string;
begin
  Source := S;
  Result := '';
  repeat
    I := Pos(Srch, Source);
    if I > 0 then begin
      Result := Result + Copy(Source, 1, I - 1) + Replace;
      Source := Copy(Source, I + Length(Srch), MaxInt);
    end
    else begin
      Result := Result + Source;
    end;
  until I <= 0;
end;

function IsEmptyStr(const S: AnsiString; const EmptyChars: TSysCharSet):
    Boolean;
var
  I, SLen: Integer;
begin
  SLen := Length(S);
  I := 1;
  while I <= SLen do begin
    if not CharInSet(S[I], EmptyChars) then begin
      Result := False;
      Exit;
    end
    else begin
      Inc(I);
    end;
  end;
  Result := True;
end;

function OemToAnsiStr(const OemStr: string): string;
begin
  SetLength(Result, Length(OemStr));
  if Length(Result) > 0 then begin
    OemToCharBuff(PAnsiChar(OemStr), PChar(Result), Length(Result));
  end;
end;

function AddChar(C: AnsiChar; const S: AnsiString; N: Integer): AnsiString;
begin
  if Length(S) < N then begin
    Result := MakeStr(C, N - Length(S)) + S
  end
  else begin
    Result := S;
  end;
end;

function AddCharR(C: AnsiChar; const S: AnsiString; N: Integer): AnsiString;
begin
  if Length(S) < N then
    Result := S + MakeStr(C, N - Length(S))
  else Result := S;
end;

function IsWordPresent(const W, S: string; const WordDelims: TSysCharSet):
    Boolean;
var
  Count, I: Integer;
begin
  Result := False;
  Count := WordCount(S, WordDelims);
  for I := 1 to Count do begin
    if ExtractWord(I, S, WordDelims) = W then begin
      Result := True;
      Exit;
    end;
  end;
end;

function AnsiProperCase(const S: AnsiString; const WordDelims: TSysCharSet):
    AnsiString;
var
  SLen, I: Cardinal;
begin
  Result := AnsiLowerCase(S);
  I := 1;
  SLen := Length(Result);
  while I <= SLen do begin
    while (I <= SLen) and CharInSet(Result[I], WordDelims) do Inc(I);
    if I <= SLen then Result[I] := AnsiChar(AnsiUpperCase(Result[I])[1]);
    while (I <= SLen) and not CharInSet(Result[I], WordDelims) do Inc(I);
  end;
end;

function CorrectString(const s : string): string;
begin
  Result := s;
  Result := ReplaceStr(Result, '''', '`');
  Result := ReplaceStr(Result, '�', 'I');
  Result := ReplaceStr(Result, #13, ' ');
  Result := ReplaceStr(Result, #10, ' ');
  Result := DelRSpace(Result);
end;

function DelRSpace(const S: string): string;
begin
  Result := DelBSpace(DelESpace(S));
end;

function DelESpace(const S: string): string;
var
  I: Integer;
begin
  I := Length(S);
  while (I > 0) and (S[I] = ' ') do Dec(I);
  Result := Copy(S, 1, I);
end;

function DelBSpace(const S: string): string;
var
  I, L: Integer;
begin
  L := Length(S);
  I := 1;
  while (I <= L) and (S[I] = ' ') do Inc(I);
  Result := Copy(S, I, MaxInt);
end;

function DelChars(const S: string; Chr: Char): string;
var
  I: Integer;
begin
  Result := S;
  for I := Length(Result) downto 1 do begin
    if Result[I] = Chr then Delete(Result, I, 1);
  end;
end;


end.
