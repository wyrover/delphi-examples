unit roUtils;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, IniFiles,
  TypInfo;

type
  TroSearchRec  = TSearchRec;
  TroStrings    = TStrings;
  TroStringList = TStringList;
  TroFileStream = TFileStream;
  TroWIN32FindData = TWin32FindData;

{ µ÷ÊÔÓÃ }
procedure Alert; overload;
procedure Alert(const s : string); overload;
procedure Alert(i : integer); overload;

{ Qustom request}
function CustomRequest(const s : string): boolean;

{ Request for item deleting}
function DeleteRequest: boolean;

{ Show message S with icon mtWarning }
procedure ShowWarning(const S:string);

{ Show message S with icon mtError }
procedure ShowError(const s:string);

function IsNTFamily: boolean;



{ Returns formated string, represented float value}
function FormatFloatStr(const S: AnsiString; Thousands: Boolean): string;
function GetCaptionFontSize: integer;
function GetTitleFont: hFont;
function CheckLimits(Value, MinValue, MaxValue : integer) : integer; //overload;

//function CheckLimits(Value : real; MinValue, MaxValue : integer) : integer; overload;
function IntToByte(const Value : integer) : byte; register; //Nick

function HexToInt(HexStr : AnsiString) : Int64;




function MakeMessage(Msg : Longint; WParam : WPARAM; LParam : LPARAM; aResult : LRESULT) : TMessage;
{ Returns percent i2 of i1}
function SumTrans(i1, i2 : integer): integer;

{ Returns max value from i1 and i2}
function Maxi(i1, i2 : integer) : integer;

{ Returns min value from i1 and i2}
function Mini(i1, i2 : integer) : integer;

{ Set value to Minvalue or Maxvalue if it not placed between them}
function LimitIt(Value, MinValue, MaxValue : integer): integer;

{ Returns True if Value is valid float}
function IsValidFloat(const Value: AnsiString; var RetValue: Extended): Boolean;

function GetAnimation: Boolean;
procedure SetAnimation(Value: Boolean);


{ Returns string s1 if L, else return s2}
function iff(L : boolean; const s1, s2 : string) : string;
{ Returns TObject o1 if L, else return o2}
function iffo(L : boolean; o1, o2 : TObject) : TObject;
{ Returns integer o1 if L, else return o2}
function iffi(L : boolean; i1, i2 : integer) : integer;


function IsIDERunning: boolean;
function IsWOW64Proc: Windows.bool;


{ Returns True if value placed berween i1 and i2}
function Between(Value, i1, i2 : integer) : boolean;

{ Change values of i1 and i2}
procedure Changei(var i1, i2 : integer);


{ Rounds value F up to two chars after a point}
function CurRound(f : real) : real;
{ Delay in milliseconds}
procedure Delay(MSecs: Integer);

function GetCents(Value : Extended) : smallint;

// Properties
function HasProperty(Component : TObject; PropName: String ): Boolean;
function GetIntProp(Component: TObject; PropName: String): Integer;
procedure SetIntProp(Component: TObject; PropName: String; Value: Integer);
function GetObjProp(Component: TObject; PropName: String): TObject;
procedure SetObjProp(Component: TObject; PropName: String; Value: TObject);
function CheckSetProp(Component: TObject; PropName, Value: String): Boolean;
function SetSetPropValue(Component: TObject; PropName, ValueName: String; Value : boolean): Boolean;


implementation

uses
  Dialogs;


var
  hKern32: HMODULE = 0;
  IsDebuggerPresent : function (): Boolean; stdcall;
  IsWow64Process : function (hProc : THandle; out Is64 : Windows.bool): Windows.Bool; stdcall;

procedure Alert; overload;
begin
  ShowWarning('Alert');
end;

procedure Alert(i : integer); overload;
begin
  ShowWarning(IntToStr(i));
end;

procedure Alert(const s : string); overload;
begin
  ShowWarning(s);
end;

procedure ShowError(const s:string);
begin
   MessageDlg(s, mtError, [mbOk], 0);
end;

procedure ShowWarning(const S:string);
begin
   MessageDlg(s, mtWarning, [mbOk], 0);
end;

function IsNTFamily: boolean;
begin
  Result := (Win32MajorVersion > 5) or ((Win32MajorVersion = 5) and (Win32MinorVersion >= 1));
end;

function CustomRequest(const s : string): boolean;
begin
  Result := MessageDlg(s, mtConfirmation, [mbYes, mbNo], 0) = mrYes;
end;

function DeleteRequest: boolean;
begin
  Result := MessageDlg('Delete this item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes;
end;



function FormatFloatStr(const S: AnsiString; Thousands: Boolean): string;
var
  I, MaxSym, MinSym, Group: Integer;
  IsSign: Boolean;
begin
{  Result := '';
  MaxSym := Length(S);
  IsSign := (MaxSym > 0) and CharInSet(S[1], ['-', '+']);
  if IsSign then MinSym := 2
  else MinSym := 1;
  I := Pos(DecimalSeparator, S);
  if I > 0 then MaxSym := I - 1;
  I := Pos('E', AnsiUpperCase(S));
  if I > 0 then MaxSym := Mini(I - 1, MaxSym);
  Result := Copy(S, MaxSym + 1, MaxInt);
  Group := 0;
  for I := MaxSym downto MinSym do begin
    Result := S[I] + Result;
    Inc(Group);
    if (Group = 3) and Thousands and (I > MinSym) then begin
      Group := 0;
      Result := ThousandSeparator + Result;
    end;
  end;
  if IsSign then Result := S[1] + Result;    }
end;

function GetCaptionFontSize: integer;
var
  NonClientMetrics: TNonClientMetrics;
begin
  NonClientMetrics.cbSize := SizeOf(NonClientMetrics);
  if SystemParametersInfo(SPI_GETNONCLIENTMETRICS, 0, @NonClientMetrics, 0) then
    Result := NonClientMetrics.lfCaptionFont.lfHeight
  else
    Result := 0;
end;

function GetTitleFont: hFont;
var
  NonClientMetrics: TNonClientMetrics;
begin
  NonClientMetrics.cbSize := SizeOf(NonClientMetrics);

  if SystemParametersInfo(SPI_GETNONCLIENTMETRICS, 0, @NonClientMetrics, 0) then
    Result := CreateFontIndirect(NonClientMetrics.lfCaptionFont)
  else
    Result := 0;
end;

function CheckLimits(Value, MinValue, MaxValue : integer) : integer;
begin
  if Value < MinValue then
    Result := MinValue
  else if Value > MaxValue then
    Result := MaxValue
  else
    Result := Value;
end;

function IntToByte(const Value : integer) : byte; register; // Nick
asm
  test eax, $80000000
  jz @q1
  mov al, 0
  ret
  @q1:
  test eax, $FFFFFF00
  jnz @q2
  ret
  @q2:
  mov al, 255
end;

function HexToInt(HexStr : AnsiString) : Int64;
var
  i : byte;
begin
  if HexStr = '' then begin
    Result := 0;
    Exit;
  end;
  HexStr := UpperCase(HexStr);
  if HexStr[length(HexStr)] = 'H' then Delete(HexStr,length(HexStr),1);
  Result := 0;
  for i := 1 to length(HexStr) do begin
    Result := Result shl 4;
    if CharInSet(HexStr[i], ['0'..'9'])
      then Result := Result + (byte(HexStr[i]) - 48)
      else if CharInSet(HexStr[i], ['A'..'F']) then Result := Result + (byte(HexStr[i]) - 55) else begin
        Result := 0;
        break;
      end;
  end;
end;


function MakeMessage(Msg : Longint; WParam : WPARAM; LParam : LPARAM; aResult : LRESULT) : TMessage;
begin
  Result.Msg := Msg;
  Result.WParam := WParam;
  Result.LParam := LParam;
  Result.Result := aResult;
end;

function SumTrans(i1, i2 : integer): integer;
begin
  Result := Round(i2 + (100 - i2) * (i1 / 100));
end;

function Maxi(i1, i2 : integer) : integer;
begin
  if i1 > i2 then Result := i1 else Result := i2;
end;

function Mini(i1, i2 : integer) : integer;
begin
  if i1 > i2 then Result := i2 else Result := i1;
end;

function LimitIt(Value, MinValue, MaxValue : integer): integer;
begin
  if Value < MinValue then Result := MinValue
  else if Value > MaxValue then Result := MaxValue
  else Result := Value;
end;


procedure Changei(var i1, i2 : integer);
var
  i : integer;
begin
  i := i2;
  i2 := i1;
  i1 := i;
end;

function IsValidFloat(const Value: AnsiString; var RetValue: Extended): Boolean;
var
  I: Integer;
  Buffer: array[0..63] of Char;
begin
// Result := False;
//  for I := 1 to Length(Value) do
//    if not CharInSet(Value[I], [DecimalSeparator, '-', '+', '0'..'9', 'e', 'E']) then
//      Exit;
//  Result := TextToFloat(StrPLCopy(Buffer, Value,
//    SizeOf(Buffer) - 1), RetValue {$IFDEF WIN32}, fvExtended {$ENDIF});
end;

function GetAnimation: Boolean;
var
  Info: TAnimationInfo;
begin
  Info.cbSize := SizeOf(TAnimationInfo);
  if SystemParametersInfo(SPI_GETANIMATION, SizeOf(Info), @Info, 0) then
    Result := Info.iMinAnimate <> 0 else
    Result := False;
end;

procedure SetAnimation(Value: Boolean);
var
  Info: TAnimationInfo;
begin
  Info.cbSize := SizeOf(TAnimationInfo);
  BOOL(Info.iMinAnimate) := Value;
  SystemParametersInfo(SPI_SETANIMATION, SizeOf(Info), @Info, 0);
end;

function iff(L : boolean; const s1, s2 : string) : string;
begin
  if l then Result := s1 else Result := s2;
end;

function iffo(L : boolean; o1, o2 : TObject) : TObject;
begin
  if l then Result := o1 else Result := o2;
end;

function iffi(L : boolean; i1, i2 : integer) : integer;
begin
  if l then Result := i1 else Result := i2;
end;

function IsIDERunning: boolean;
begin
  if Assigned(roUtils.IsDebuggerPresent) then
    Result := roUtils.IsDebuggerPresent
  else
    Result := True;
end;

function IsWOW64Proc: Windows.bool;
begin
  if Assigned(IsWow64Process) then begin
    if not IsWow64Process(GetCurrentProcess, Result) then Result := False;
  end
  else Result := False;
end;

function Between(Value, i1, i2 : integer) : boolean;
begin
  if i1 < i2 then
    Result := (Value >= i1) and (Value <= i2)
  else
    Result := (Value <= i1) and (Value >= i2);
end;

function CurRound(f : real) : real;
begin
  Result := Round((f+0.000001)*100)/100;
end;

procedure Delay(MSecs: Integer);
var
  FirstTickCount : DWord;
begin
  FirstTickCount := GetTickCount;
  repeat Application.ProcessMessages until ((GetTickCount - FirstTickCount) >= DWord(MSecs));
end;

function GetCents(Value : Extended) : smallint;
var
  e : extended;
begin
  e := Value;
  Result := Round(Frac(e) * 100);
end;

// Prop Info
function HasProperty(Component : TObject; PropName: String ): Boolean;
begin
  Result := GetPropInfo(Component.ClassInfo, PropName) <> nil;
end;

function GetObjProp(Component: TObject; PropName: String): TObject;
var
  ptrPropInfo : PPropInfo;
begin
  ptrPropInfo := GetPropInfo(Component.ClassInfo, PropName);
  if ptrPropInfo = nil
    then Result := nil
    else Result := TObject(GetObjectProp(Component, ptrPropInfo, TObject));
end;

procedure SetObjProp(Component: TObject; PropName: String; Value: TObject);
var
  ptrPropInfo : PPropInfo;
begin
  ptrPropInfo := GetPropInfo(Component.ClassInfo, PropName);
  if ptrPropInfo <> nil then SetObjectProp(Component, ptrPropInfo, Value);
end;

function CheckSetProp(Component: TObject; PropName, Value: String): Boolean;
var
  PropInfo : PPropInfo;
  TypeInfo: PTypeInfo;
  i : integer;
  S: TIntegerSet;
begin
  Result := False;
  PropInfo := GetPropInfo(Component.ClassInfo, PropName);
  if PropInfo <> nil then begin
    Integer(S) := GetOrdProp(Component, PropInfo);
    TypeInfo := GetTypeData(PropInfo^.PropType^)^.CompType^;
    for I := 0 to SizeOf(Integer) * 8 - 1 do if I in S then if GetEnumName(TypeInfo, I) = Value then begin
      Result := True;
      Break
    end;
  end;
end;

{$IFNDEF DELPHI6UP}
function SetToString(PropInfo: PPropInfo; Value: Integer): string;
var
  S: TIntegerSet;
  TypeInfo: PTypeInfo;
  I: Integer;
begin
  Result := '';
  Integer(S) := Value;
  TypeInfo := GetTypeData(PropInfo^.PropType^)^.CompType^;
  for I := 0 to SizeOf(Integer) * 8 - 1 do
    if I in S then begin
      if Result <> '' then
        Result := Result + ',';
      Result := Result + GetEnumName(TypeInfo, I);
    end;
end;
{$ENDIF}

function SetSetPropValue(Component: TObject; PropName, ValueName: String; Value : boolean): Boolean;
var
  PropInfo : PPropInfo;
  i : integer;
  s : string;
begin
  Result := False;
  PropInfo := GetPropInfo(Component.ClassInfo, PropName);
  if PropInfo <> nil then begin
    Integer(I) := GetOrdProp(Component, PropInfo);
    s := SetToString(PropInfo, I);
    if Value then begin
      if pos(s, ValueName) < 1 then begin
        s := s + ',' + ValueName;
        SetSetProp(Component, PropInfo, s);
      end;
    end
    else begin
      i := pos(',' + ValueName, s);
      if i > 0 then Delete(s, i, Length(',' + ValueName)) else begin
        i := pos(ValueName + ',', s);
        if i > 0 then Delete(s, i, Length(',' + ValueName)) else begin
          i := pos(ValueName, s);
          if i > 0 then Delete(s, i, Length(ValueName)) else Exit;
        end;
      end;
      SetSetProp(Component, PropInfo, s);
    end;
  end;
end;

function GetIntProp(Component: TObject; PropName: String): Integer;
var
  ptrPropInfo : PPropInfo;
begin
  ptrPropInfo := GetPropInfo(Component.ClassInfo, PropName);
  if ptrPropInfo = nil
    then Result := -1
    else Result := Integer(GetOrdProp(Component, ptrPropInfo));
end;

procedure SetIntProp(Component: TObject; PropName: String; Value: Integer);
var
  ptrPropInfo : PPropInfo;
begin
  ptrPropInfo := GetPropInfo(Component.ClassInfo, PropName);
  if ptrPropInfo <> nil
     then SetOrdProp(Component, ptrPropInfo, Value);
end;

function AeroIsEnabled : boolean;
var
  b : Longbool;
begin
  Result := True;
  {if (Win32MajorVersion >= 6) then begin
    b := False;
    if Assigned(_DwmIsCompositionEnabled) then Result := _DwmIsCompositionEnabled(b) = S_OK else begin
      InitDwmApi;
      if hDWMAPI > 0 then begin
        _DwmIsCompositionEnabled := GetProcAddress(hDWMAPI, 'DwmIsCompositionEnabled');
        if Assigned(_DwmIsCompositionEnabled) then Result := _DwmIsCompositionEnabled(b) = S_OK;
      end
    end;
  end;
  Result := Result and b;}
end;





end.
