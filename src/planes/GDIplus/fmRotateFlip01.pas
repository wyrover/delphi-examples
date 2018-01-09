//{$WARNINGS OFF}
//
//  Windows XP(SP3)    + Delphi XE Pro
//  Windows 7 U64(SP1) + Delphi XE Pro
//
//  Presented by Mr.XRAY
//  http://mrxray.on.coocan.jp/
//=============================================================================
unit fmRotateFlip01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, GDIPAPI, GDIPOBJ;

type
  TMyPanel = class(TPanel)
  private
    FRotateFlipNo : Integer;
    procedure SetRotateFlipNo(const Value: Integer);
  protected
    procedure Paint; override;
  public
    constructor Create(AOwner: TComponent); override;
    property RotateFlipNo : Integer read FRotateFlipNo write SetRotateFlipNo;
  end;

  TFormRotateFlip01 = class(TForm)
    RadioGroup1: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
  private
    { Private 宣言 }
    MyPanel : TMyPanel;
  public
    { Public 宣言 }
  end;

var
  FormRotateFlip01: TFormRotateFlip01;

implementation

uses TypInfo;

{$R *.DFM}


procedure TFormRotateFlip01.FormCreate(Sender: TObject);
var
  ATypeInfo : PTypeInfo;
  AInfoData : PTypeData;
  i         : Integer;
begin
  Caption := 'GDI+  RotateFlip';


  MyPanel := TMyPanel.Create(Self);
  with MyPanel do begin
    Parent := Self;
    SetBounds(160, 5, Self.ClientWidth - 168, Self.ClientHeight - 10);
    DoubleBuffered   := True;
    ControlStyle     := MyPanel.ControlStyle + [csOpaque];
    BevelOuter       := bvNone;
    Visible          := True;
    Color            := clWhite;
    ParentBackground := False;
  end;


  //列挙型の最小値と最大値を取得
  ATypeInfo := TypeInfo(TRotateFlipType);
  AInfoData := GetTypeData(ATypeInfo);

  //列挙型の値を文字列として取得．RadioGroup1に表示
  for i := AInfoData^.MinValue to AInfoData^.MaxValue do begin
    RadioGroup1.Items.Add(GetEnumName(TypeInfo(TRotateFlipType), i));
  end;
  RadioGroup1.ItemIndex := 0;
end;

//=============================================================================
//  RadioGroup1のOnClickイベント処理
//  RotateFilpの値を変更したら，TMyPanelを再描画
//=============================================================================
procedure TFormRotateFlip01.RadioGroup1Click(Sender: TObject);
begin
  if not Assigned(MyPanel) then exit;
  MyPanel.RotateFlipNo := RadioGroup1.ItemIndex;
end;

{ TMyPanel }

//-----------------------------------------------------------------------------
//  コンストラクタ
//  各種プロパティと内部で使用する変数の初期化
//-----------------------------------------------------------------------------
constructor TMyPanel.Create(AOwner: TComponent);
begin
  inherited;
  FRotateFlipNo := 0;
end;

//-----------------------------------------------------------------------------
//  RotateFlipNoプロパティの設定用メソッド
//  回転と反転の設定が変更になったら再描画
//-----------------------------------------------------------------------------
procedure TMyPanel.SetRotateFlipNo(const Value: Integer);
begin
  if not Assigned(Parent) then exit;

  if FRotateFlipNo <> Value then begin
    FRotateFlipNo := Value;
    Invalidate;
  end;
end;

//-----------------------------------------------------------------------------
//  TMyPanelクラスのPaintメソッド
//  実際の描画コード
//-----------------------------------------------------------------------------
procedure TMyPanel.Paint;
var
  ObjWidth      : Integer;
  ObjHeight     : Integer;
  ImageFilePath : String;
  GDPImage      : TGPImage;
  GDPGraphic    : TGPGraphics;
begin
  inherited;

  //画像の表示サイズ
  ObjWidth  := 150;
  ObjHeight := 100;

  //画像ファイルを指定．TGPImaageインスタンスを生成して読み込む
  ImageFilePath := ExtractFilePath(ParamStr(0)) + '503.bmp';
  GDPImage      := TGPImage.Create(ImageFilePath);

  //このTMyPanelのCanvasを描画先にしてTGPGraphicsのインスタンスを生成
  GDPGraphic := TGPGraphics.Create(Canvas.Handle);

  //回転と反転を設定
  GDPImage.RotateFlip(TRotateFlipType(FRotateFlipNo));
  //描画
  GDPGraphic.DrawImage(GDPImage, 20, 20, ObjWidth, ObjHeight);

  GDPImage.Free;
  GDPGraphic.Free;
end;

end.
