unit fmDemo2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, VirtualTrees, ExtCtrls, OleCtrls, SHDocVw, cmpExWebBrowser;

type
  TTSendLinkEvent = procedure(Sender: TObject; const ALink, AText: string) of object;
  TWantuThread = class(TThread)
  private
    FLink: string;
    FText: string;
    FGroupCount: integer;
    FOnSendLink: TTSendLinkEvent;
    procedure SendLink;
  protected
    procedure Execute; override;
  published
    property OnSendLink: TTSendLinkEvent read FOnSendLink write FOnSendLink;
  end;

  PTreeData = ^TTreeData;
  TTreeData = record
    FLink: string;
    FText: string;
  end;




  TDemo2Form = class(TForm)
    vTree: TVirtualStringTree;
    spl1: TSplitter;
    wb1: TWebBrowser;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure vTreeFreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
    procedure vTreeGetText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column:
        TColumnIndex; TextType: TVSTTextType; var CellText: string);
  private
    procedure InitTreeView;
    procedure SendLink(Sender: TObject; const ALink, AText: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Demo1Form: TDemo2Form;

implementation

uses
  RegularExpressions, TraceTool, appUtils, roShell, roFiles, IdURI;

{$R *.dfm}

{ TYonghengThread }

procedure TWantuThread.Execute;
var
  input: string;
  Regex: IRegex;
  match: IMatch;
  Group: IGroup;
  dir:   string;
  page:  Integer;
  idurl: TIdURI;
begin
  inherited;

  dir := NormalDir(GetAppPath + 'wantu');
  CreateDir(dir);

  page := 1;

  Regex := TRegex.Create('"picPath":"(.*?)"', [roIgnoreCase, roMultiline]);

  try
    while page > 0 do
    begin
      input := GetHtml('http://wantu.taobao.com/meinv/hot/tag-178?spm=a1z0j.1000826.0.564.AMTvvL&bySort=&cateId=&p=' + IntToStr(page));
      match := Regex.Match(input);

      if match.Success then
        Inc(page)
      else
        page := 0;

      while match.Success do
      begin
        Self.FLink := match.Groups[1].value;
        Self.FText := '';
        Self.FGroupCount := match.Groups.Count;
        Synchronize(self.SendLink);

        idurl := TIdURI.Create(Self.FLink);
        if not FileExists(dir + idurl.Document) then
          DownloadToFile(Self.FLink, dir + idurl.Document);
        idurl.Free;
        match := match.NextMatch;
      end;
    end;
  finally
    Regex := nil;
  end;


end;

procedure TWantuThread.SendLink;
begin
  if Assigned(FOnSendLink) then
    FOnSendLink(Self, FLink, FText);
end;


procedure TDemo2Form.FormDestroy(Sender: TObject);
begin
  TTrace.Debug.EnterMethod('TDemo2Form.FormDestroy');
  TTrace.Debug.ExitMethod('TDemo2Form.FormDestroy');
end;

procedure TDemo2Form.FormCreate(Sender: TObject);
begin
  InitTreeView;

  with TWantuThread.Create(false) do
  begin
    OnSendLink := self.SendLink;
    Resume;
  end;
end;

procedure TDemo2Form.InitTreeView;
var
  rootNode: PVirtualNode;
  childNode: PVirtualNode;
  Data: PTreeData;
begin
  vTree.NodeDataSize := SizeOf(TTreeData);
  //vTree.Images := ImageListMain;

  //XML2Tree(vTree, ChangeFileExt(ParamStr(0),'.XML'));

  vTree.TreeOptions.PaintOptions := vTree.TreeOptions.PaintOptions -[toShowRoot];
  //vTree.FullExpand;

end;

procedure TDemo2Form.SendLink(Sender: TObject; const ALink, AText: string);
var
  Data: PTreeData;
  tn: PVirtualNode;
begin
  tn := vTree.AddChild(nil);
  Data := vTree.GetNodeData(tn);
  Data^.FLink := alink;
  Data^.FText := aText;
end;

procedure TDemo2Form.vTreeFreeNode(Sender: TBaseVirtualTree; Node:
    PVirtualNode);
var
  Data: PTreeData;
begin
  Data := Sender.GetNodeData(Node);
  if Assigned(Data) then
    Finalize(Data^);
end;

procedure TDemo2Form.vTreeGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
    Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
var
  Data: PTreeData;
begin
  Data:=Sender.GetNodeData(Node);
  CellText := Data^.FLink;
end;

end.
