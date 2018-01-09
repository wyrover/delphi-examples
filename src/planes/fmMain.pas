unit fmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TraceTool, ExtCtrls, VirtualTrees, xmldom, XMLIntf, msxmldom, XMLDoc,
  ImgList;

type
  PTreeData = ^TTreeData;
  TTreeData = record
    FCaption: string;
    FImageIndex: integer;
    FClassName: string;
  end;

  TMainForm = class(TForm)
    vTree: TVirtualStringTree;
    Splitter1: TSplitter;
    ContainerPanel: TPanel;
    ImageListMain: TImageList;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AfterConstruction; override;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure vTreeClick(Sender: TObject);
    procedure vTreeFreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
    procedure vTreeGetImageIndex(Sender: TBaseVirtualTree; Node: PVirtualNode;
        Kind: TVTImageKind; Column: TColumnIndex; var Ghosted: Boolean; var
        ImageIndex: Integer);
    procedure vTreeGetText(Sender: TBaseVirtualTree; Node: PVirtualNode; Column:
        TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure vTreeMouseDown(Sender: TObject; Button: TMouseButton; Shift:
        TShiftState; X, Y: Integer);
    procedure vTreeNodeClick(Sender: TBaseVirtualTree; const HitInfo: THitInfo);

  private
    procedure InitTreeView;
    //procedure CreateTestXML;
    { Private declarations }
  public
    { Public declarations }
  end;

procedure XML2Tree(tree: TVirtualStringTree; const filename: string);

procedure Tree2XML(tree: TVirtualStringTree);




var
  MainForm: TMainForm;

implementation

uses
  demoFactory, appUtils;

{$R *.dfm}

procedure Tree2XML(tree: TVirtualStringTree);
var
  tn: PVirtualNode;
  XMLDoc: IXMLDocument;
  iNode: IXMLNode;

  procedure ProcessTreeItem(tn: PVirtualNode; iNode: IXMLNode);
  var
    cNode: IXMLNode;
    Data: PTreeData;
  begin
    if (tn = nil) then Exit;
    Data := tree.GetNodeData(tn);
    cNode := iNode.AddChild('node');
    cNode.Attributes['caption'] := Data^.FCaption;
    cNode.Attributes['imageindex'] := Data^.FImageIndex;
    cNode.Attributes['classname'] := Data^.FClassName;

    tn := tn.FirstChild;
    while tn <> nil do
    begin
      ProcessTreeItem(tn, CNode);
      tn := tn.NextSibling;
    end;

  end;
begin
  XMLDoc := TXMLDocument.Create(nil);
  try
    XMLDoc.Active := True;
    XMLDoc.Version := '1.0';
    XMLDoc.Encoding := 'gb2312';
    XMLDoc.Options := [doNodeAutoCreate,doNodeAutoIndent,doAttrNull,doAutoPrefix,doNamespaceDecl];
    iNode := XMLDoc.AddChild('app');
    iNode.Attributes['file'] := ParamStr(0);

    tn := tree.TopNode;
    while tn <> nil do
    begin
      ProcessTreeItem(tn, iNode);
      tn := tn.NextSibling;
    end;

    XMLDoc.SaveToFile(ChangeFileExt(ParamStr(0),'.XML'));

  finally
    XMLDoc := nil;
  end;

end;

procedure XML2Tree(tree: TVirtualStringTree; const filename: string);
var
  iNode: IXMLNode;
  XMLDoc: IXMLDocument;

  procedure ProcessNode(Node: IXMLNode; tn: PVirtualNode);
  var
    cNode: IXMLNode;
    Data: PTreeData;
  begin
    if Node = nil then Exit;
    tn := tree.AddChild(tn);
    Data := tree.GetNodeData(tn);
    Data^.FCaption := Node.Attributes['caption'];
    Data^.FImageIndex := StrToInt(Node.Attributes['imageindex']);
    Data^.FClassName := Node.Attributes['classname'];

    cNode := Node.ChildNodes.First;
    while cNode <> nil do
    begin
      ProcessNode(cNode, tn);
      cNode := cNode.NextSibling;
    end;
  end;
begin
  tree.Clear;
  tree.BeginUpdate;
  XMLDoc := TXMLDocument.Create(nil);

  try
    XMLDoc.Active := True;
    XMLDoc.LoadFromFile(filename);
    XMLDoc.Encoding := 'gb2312';

    if XMLDoc.ChildNodes.First = nil then Exit;

    iNode := XMLDoc.DocumentElement.ChildNodes.First;

    while iNode <> nil do
    begin
      ProcessNode(iNode, nil);
      iNode := iNode.NextSibling;
    end;

    XMLDoc.Active := False;

  finally
    XMLDoc := nil;
  end;
  tree.EndUpdate;
end;


procedure TMainForm.FormDestroy(Sender: TObject);
begin

  if ContainerPanel.ControlCount > 0 then
    ContainerPanel.Controls[0].Free;
end;

procedure TMainForm.AfterConstruction;
begin
  inherited;
  TTrace.ClearAll;
  GetSQLiteDb;
  EnableWordInWebrowser;
  self.InitTreeView;
end;

//procedure TMainForm.CreateTestXML;
//var
//  sl: TStringList;
//  XMLDoc: IXMLDocument;
//  iNode: IXMLNode;
//  cNode: IXMLNode;
//  dNode: IXMLNode;
//begin
//  XMLDoc := TXMLDocument.Create(nil);
//  try
//    XMLDoc.Active := True;
//    XMLDoc.Version := '1.0';
//    XMLDoc.Encoding := 'gb2312';
//    XMLDoc.Options := [doNodeAutoCreate,doNodeAutoIndent,doAttrNull,doAutoPrefix,doNamespaceDecl];
//
//    iNode := XMLDoc.AddChild('app');
//    iNode.Attributes['file'] := ParamStr(0);
//
//    cNode := iNode.AddChild('node');
//    cNode.Attributes['caption'] := '倒萨范德法';
//    cNode.Attributes['imageindex'] := '0';
//    cNode.Attributes['classname'] := '';
//
//    dNode := cNode.AddChild('node');
//    dNode.Attributes['caption'] := 'testtest2';
//    dNode.Attributes['imageindex'] := '0';
//    dNode.Attributes['classname'] := 'TDemo1Form';
//
//    XMLDoc.SaveToFile(ChangeFileExt(ParamStr(0),'.XML'));
//
//  finally
//    XMLDoc := nil;
//  end;
//end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  Tree2XML(vTree);

end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  TTrace.Debug.EnterMethod('TMainForm.FormCreate');
end;


procedure TMainForm.InitTreeView;
begin
  vTree.NodeDataSize := SizeOf(TTreeData);
  vTree.Images := ImageListMain;

  XML2Tree(vTree, ChangeFileExt(ParamStr(0),'.XML'));

  vTree.TreeOptions.PaintOptions := vTree.TreeOptions.PaintOptions -[toShowRoot];
  vTree.FullExpand;

end;

procedure TMainForm.vTreeClick(Sender: TObject);
begin

end;

{ 释放结点 }
procedure TMainForm.vTreeFreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
var
  Data: PTreeData;
begin
  Data := Sender.GetNodeData(Node);
  if Assigned(Data) then
    Finalize(Data^);
end;

{ 设置结点图片 }
procedure TMainForm.vTreeGetImageIndex(Sender: TBaseVirtualTree; Node:
    PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex; var Ghosted:
    Boolean; var ImageIndex: Integer);
var
  Data: PTreeData;
begin
  Data := Sender.GetNodeData(Node);
  ImageIndex := Data^.FImageIndex;
end;

{ 设置结点内容 }
procedure TMainForm.vTreeGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
    Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
var
  Data: PTreeData;
begin
  Data:=Sender.GetNodeData(Node);
  CellText := Data^.FCaption;
end;

procedure TMainForm.vTreeMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
begin

end;

{ 点击结点 }
procedure TMainForm.vTreeNodeClick(Sender: TBaseVirtualTree; const HitInfo:
    THitInfo);
var
  Node: PVirtualNode;
  Data: PTreeData;
  NewDemoClass: TClass;
  NewDemo: TForm;
begin
  Node := vTree.FocusedNode;
  Data := Sender.GetNodeData(Node);

  if (ContainerPanel.ControlCount = 0) or not (ContainerPanel.Controls[0] is NewDemoClass) then
  begin
    if ContainerPanel.ControlCount > 0 then
      ContainerPanel.Controls[0].Free;

    NewDemo := TFormFactory.Instance.CreateForm(Data^.FClassName, Self, ContainerPanel);

    if Assigned(NewDemo) then
    begin
      NewDemo.Show;
    end;
  end;
end;




end.
