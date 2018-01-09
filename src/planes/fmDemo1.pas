unit fmDemo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, VirtualTrees, ExtCtrls, OleCtrls, SHDocVw, cmpExWebBrowser;

type
  TTSendLinkEvent = procedure(Sender: TObject; const ALink, AText: string) of object;
  TYonghengThread = class(TThread)
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




  TDemo1Form = class(TForm)
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
  Demo1Form: TDemo1Form;

implementation

uses
  RegularExpressions, TraceTool, appUtils;

{$R *.dfm}

{ TYonghengThread }

procedure TYonghengThread.Execute;
var
  input: string;
  Regex: IRegex;
  match: IMatch;
  Group: IGroup;
begin
  inherited;

  input := GetHtml('http://www.jrqh.com.cn/news/jryj-hq.aspx?tid=1110');

  Regex := TRegex.Create('<div\s+class="tit2">[^\b]+?href="(.*?)"[^\b]+?>(.*?)</a>', [roIgnoreCase, roMultiline]);
  try
    match := Regex.Match(input);
    while match.Success do
    begin
      Self.FLink := match.Groups[1].value;
      Self.FText := match.Groups[2].value;
      Self.FGroupCount := match.Groups.Count;
      Synchronize(self.SendLink);
      match := match.NextMatch;
    end;
  finally
    Regex := nil;
  end;
end;

procedure TYonghengThread.SendLink;
begin
  if Assigned(FOnSendLink) then
    FOnSendLink(Self, FLink, FText);
end;


procedure TDemo1Form.FormDestroy(Sender: TObject);
begin
  TTrace.Debug.EnterMethod('TDemo1Form.FormDestroy');
  TTrace.Debug.ExitMethod('TDemo1Form.FormDestroy');
end;

procedure TDemo1Form.FormCreate(Sender: TObject);
begin
  InitTreeView;

  with TYonghengThread.Create(false) do
  begin
    OnSendLink := self.SendLink;
    Resume;
  end;
end;

procedure TDemo1Form.InitTreeView;
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

procedure TDemo1Form.SendLink(Sender: TObject; const ALink, AText: string);
var
  Data: PTreeData;
  tn: PVirtualNode;
begin
  tn := vTree.AddChild(nil);
  Data := vTree.GetNodeData(tn);
  Data^.FLink := alink;
  Data^.FText := aText;
end;

procedure TDemo1Form.vTreeFreeNode(Sender: TBaseVirtualTree; Node:
    PVirtualNode);
var
  Data: PTreeData;
begin
  Data := Sender.GetNodeData(Node);
  if Assigned(Data) then
    Finalize(Data^);
end;

procedure TDemo1Form.vTreeGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
    Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
var
  Data: PTreeData;
begin
  Data:=Sender.GetNodeData(Node);
  CellText := Data^.FText;
end;

end.
