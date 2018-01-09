unit HTMLEvent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, OleCtrls, SHDocVw, MSHTML,
  ActiveX;

type
  TObjectProcedure = procedure of object;
  TEventObject = class(TInterfacedObject, IDispatch)
  private
    FOnEvent: TObjectProcedure;
  protected
    function GetTypeInfoCount(out Count: Integer): HResult; stdcall;
    function GetTypeInfo(Index, LocaleID: Integer; out TypeInfo): HResult;
      stdcall;
    function GetIDsOfNames(const IID: TGUID; Names: Pointer; NameCount,
      LocaleID: Integer; DispIDs: Pointer): HResult; stdcall;
    function Invoke(DispID: Integer; const IID: TGUID; LocaleID: Integer; Flags:
      Word; var Params; VarResult, ExcepInfo, ArgErr: Pointer): HResult;
      stdcall;
  public
    constructor Create(const OnEvent: TObjectProcedure);
    property OnEvent: TObjectProcedure read FOnEvent write FOnEvent;
  end;

implementation

constructor TEventObject.Create(const OnEvent: TObjectProcedure);
begin
  inherited Create;
  FOnEvent := OnEvent;
end;

function TEventObject.GetIDsOfNames(const IID: TGUID; Names: Pointer; NameCount,
  LocaleID: Integer; DispIDs: Pointer): HResult;
begin
  Result := E_NOTIMPL;
end;

function TEventObject.GetTypeInfo(Index, LocaleID: Integer; out TypeInfo):
  HResult;
begin
  Result := E_NOTIMPL;
end;

function TEventObject.GetTypeInfoCount(out Count: Integer): HResult;
begin
  Result := E_NOTIMPL;
end;

function TEventObject.Invoke(DispID: Integer; const IID: TGUID; LocaleID:
  Integer; Flags: Word; var Params; VarResult, ExcepInfo, ArgErr: Pointer):
  HResult;
begin
  if (DispID = DISPID_VALUE) then
  begin
    if Assigned(FOnEvent) then FOnEvent;
    Result := S_OK;
  end
  else
    Result := E_NOTIMPL;
end;

end.
