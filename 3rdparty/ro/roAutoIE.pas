{$WARNINGS OFF}

unit roAutoIE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, SHDocVw, ComObj, ActiveX, MSHTML;

type
  TIEBeforeNavigate2Event = procedure(Sender: TObject; const pDisp: IDispatch;
    var URL: OleVariant; var Flags: OleVariant; var TargetFrameName: OleVariant;
    var PostData: OleVariant; var Headers: OleVariant; var Cancel: WordBool) of object;

  TIEDocumentCompleteEvent = procedure(Sender: TObject; doc: IHTMLDocument) of object;

  TAutoIEThread = class(TThread, IUnknown, IDispatch)
  private
    FURL:                     string;
    FText:                    string;
    FIEApp:                   IWebBrowser2;
    FConnected:               Boolean;
    FSinkIID:                 TGuid;
    FCPContainer:             IConnectionPointContainer;
    FCP:                      IConnectionPoint;
    FCookie:                  Integer;
    FBeforeNavigate2:         TIEBeforeNavigate2Event;
    FIEDocumentCompleteEvent: TIEDocumentCompleteEvent;

    function  GetHtml           (const url: string):          string;
    function  InsertZhuanjiTable(const url, caption: string): Boolean;
    function  ProcessZhuanji    (const url: string):          Boolean;
    function  CreateIE:                                       Boolean;
    procedure ConnectTo(Source: IWebBrowser2);
    procedure Disconnect;
    procedure SendLink;
    procedure SendDocumentComplete;
  protected
    procedure Execute; override;

    // Protected declaratios for IUnknown
    function QueryInterface(const IID: TGUID; out Obj): HResult; stdcall;
    function _AddRef:                                   Integer; stdcall;
    function _Release:                                  Integer; stdcall;
    // Protected declaratios for IDispatch
    function GetIDsOfNames(const IID: TGUID; Names: Pointer; NameCount, LocaleID:
      Integer; DispIDs: Pointer):                       HResult; virtual; stdcall;

    function GetTypeInfo(Index, LocaleID: Integer; out TypeInfo): HResult; virtual; stdcall;
    function GetTypeInfoCount(out Count: Integer): HResult; virtual; stdcall;
    function Invoke(DispID: Integer; const IID: TGUID; LocaleID: Integer;
      Flags: Word; var Params; VarResult, ExcepInfo, ArgErr: Pointer): HResult; virtual; stdcall;

    // 处理IE事件
    procedure DoBeforeNavigate2(const pDisp: IDispatch; var URL: OleVariant;
      var Flags: OleVariant; var TargetFrameName: OleVariant; var PostData: OleVariant;
      var Headers: OleVariant; var Cancel: WordBool); safecall;
  public
    constructor Create(CreateSuspended: Boolean; const url: string);
    destructor Destroy; override;
  published
    property OnBeforeNavigate2: TIEBeforeNavigate2Event read FBeforeNavigate2 write FBeforeNavigate2;
    property OnDocumentComplete: TIEDocumentCompleteEvent read FIEDocumentCompleteEvent write FIEDocumentCompleteEvent;
  end;



  TAutoIE = class
  private
    FThread: TAutoIEThread;
    FURL: string;
    FIEDocumentCompleteEvent: TIEDocumentCompleteEvent;
    procedure SendDocumentComplete(Sender: TObject; doc: IHTMLDocument);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Navigate(const url: string);
  published
    property  URL: string read FURL write FURL;
    property OnDocumentComplete: TIEDocumentCompleteEvent read FIEDocumentCompleteEvent write FIEDocumentCompleteEvent;
  end;

implementation

{ TAutoIE }

constructor TAutoIE.Create;
begin

end;

destructor TAutoIE.Destroy;
begin

  inherited;
end;

procedure TAutoIE.Navigate(const url: string);
begin
  with TAutoIEThread.Create(false, url) do
  begin
    OnDocumentComplete := Self.SendDocumentComplete;
    Resume;
  end;
end;

procedure TAutoIE.SendDocumentComplete(Sender: TObject; doc: IHTMLDocument);
begin
  if Assigned(FIEDocumentCompleteEvent) then
    FIEDocumentCompleteEvent(Self, doc);
end;

{ TAutoIEThread }

procedure TAutoIEThread.ConnectTo(Source: IWebBrowser2);
begin

end;

constructor TAutoIEThread.Create(CreateSuspended: Boolean; const url: string);
begin
  inherited Create(CreateSuspended);
  FURL := url;
end;

function TAutoIEThread.CreateIE: Boolean;
var
  IE:                OleVariant;
begin
  try
    if not Assigned(FIEApp) then
    begin
      FSinkIID := DWebBrowserEvents2;
      IE := CreateOleObject('InternetExplorer.Application');
      if (IDispatch(IE).QueryInterface(IWebBrowser2, FieApp) = S_OK) then
      begin

        FieApp.visible := True;
        FieApp.AddressBar := True;
        FieApp.menubar := True;
        //FieApp.ToolBar := True;
        FieApp.StatusBar := True;
        FieApp.width := 800;
        FieApp.height := 600;
        FieApp.resizable := True;

        {Self.Disconnect;

        OleCheck(FieApp.QueryInterface(IConnectionPointContainer, FCPContainer));
        OleCheck(FCPContainer.FindConnectionPoint(FSinkIID, FCP));
        OleCheck(FCP.Advise(Self, FCookie));

        // We are in a connected state
        FConnected := True;
        // Release the temp interface
        FCPContainer := nil;   }
      end;
    end;
    Result := True;
  except
    Result := False;
  end;
end;

destructor TAutoIEThread.Destroy;
begin

  inherited;
end;

procedure TAutoIEThread.Disconnect;
begin
  // Do we have the IWebBrowser2 interface?
  if Assigned(FieApp) then
  begin
    try
      if Assigned(FCP) then
        OleCheck(FCP.Unadvise(FCookie));
        // Release the interfaces
      FCP := nil;
    except
      Pointer(FCP) := nil;
      Pointer(FieApp) := nil;
    end;
  end;

  // Disconnected state
  FConnected := False;
end;

procedure TAutoIEThread.DoBeforeNavigate2(const pDisp: IDispatch; var URL,
  Flags, TargetFrameName, PostData, Headers: OleVariant; var Cancel: WordBool);
begin

end;

procedure TAutoIEThread.Execute;
var
  flags, TargetFrameName, PostData, Headers: OleVariant;
begin
  inherited;
  CoInitialize(nil);

  if CreateIE then
  begin
    FIEApp.Navigate(FURL, flags,TargetFrameName,PostData,Headers);
    while (FieApp.busy) or (FieApp.ReadyState <>READYSTATE_COMPLETE) do
      Application.ProcessMessages;
    Self.ConnectTo(FieApp);

    Synchronize(self.SendDocumentComplete);
  end;


  CoUninitialize;
end;

function TAutoIEThread.GetHtml(const url: string): string;
begin

end;

function TAutoIEThread.GetIDsOfNames(const IID: TGUID; Names: Pointer;
  NameCount, LocaleID: Integer; DispIDs: Pointer): HResult;
begin

end;

function TAutoIEThread.GetTypeInfo(Index, LocaleID: Integer;
  out TypeInfo): HResult;
begin

end;

function TAutoIEThread.GetTypeInfoCount(out Count: Integer): HResult;
begin

end;

function TAutoIEThread.InsertZhuanjiTable(const url, caption: string): Boolean;
begin

end;

function TAutoIEThread.Invoke(DispID: Integer; const IID: TGUID;
  LocaleID: Integer; Flags: Word; var Params; VarResult, ExcepInfo,
  ArgErr: Pointer): HResult;
begin

end;

function TAutoIEThread.ProcessZhuanji(const url: string): Boolean;
begin

end;

function TAutoIEThread.QueryInterface(const IID: TGUID; out Obj): HResult;
begin

end;

procedure TAutoIEThread.SendDocumentComplete;
begin
  if Assigned(FIEDocumentCompleteEvent) then
    FIEDocumentCompleteEvent(Self, FIEApp.Document as IHTMLDocument);
end;

procedure TAutoIEThread.SendLink;
begin

end;

function TAutoIEThread._AddRef: Integer;
begin

end;

function TAutoIEThread._Release: Integer;
begin

end;

end.
