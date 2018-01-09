unit Btn360;

interface

uses
  SysUtils, Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  Vcl.Buttons, ColorUtils, Messages, Windows, GDIPAPI, GDIPOBJ, GDIPUTIL, Vcl.StdCtrls;

type
  TBtn360Style = class(TButton)
  private
    FBkgColor: TColor; // 鼠标悬停是的背景颜色
    FEdgColor: TColor; // 边框颜色
    FCanvas: TCanvas;
    FMouseEnter: Boolean;
    FPngFileName: string;
    procedure CNDrawItem(var Message: TWMDrawItem); message CN_DRAWITEM;
    procedure SetPngFileName(const Value: string);
    procedure SetBkgColor(const Value: TColor);
    procedure SetEdgColor(const Value: TColor);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
    procedure SetButtonStyle(ADefault: Boolean); override; // 必须重新找个函数 否则会按默认样式绘制
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property PngFileName: string read FPngFileName write SetPngFileName;
    property BkgColor: TColor read FBkgColor write SetBkgColor;
    property EdgColor: TColor read FEdgColor write SetEdgColor;
  end;

procedure Register;

implementation

constructor TBtn360Style.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  DoubleBuffered := True;
  FCanvas := TCanvas.Create;
  FBkgColor := clBlue;
  FEdgColor := clSkyBlue;
end;

destructor TBtn360Style.Destroy;
begin
  FCanvas.Free;
  inherited Destroy;
end;

procedure TBtn360Style.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    Style := Style or BS_OWNERDRAW;
end;

procedure TBtn360Style.SetEdgColor(const Value: TColor);
begin
  if FEdgColor <> Value then
  begin
    FEdgColor := Value;
    Invalidate;
  end;
end;

procedure TBtn360Style.SetBkgColor(const Value: TColor);
begin
  if FBkgColor <> Value then
  begin
    FBkgColor := Value;
    Invalidate;
  end;
end;

procedure TBtn360Style.SetButtonStyle(ADefault: Boolean);
begin
  if csDesigning in ComponentState then
    inherited;
end;

procedure TBtn360Style.SetPngFileName(const Value: string);
begin
  if FPngFileName <> Value then
  begin
    FPngFileName := Value;
    Invalidate;
  end;
end;

procedure TBtn360Style.CMMouseEnter(var Message: TMessage);
begin
  inherited;
  FMouseEnter := True;
  Invalidate;
end;

procedure TBtn360Style.CMMouseLeave(var Message: TMessage);
begin
  inherited;
  FMouseEnter := False;
  Invalidate;
end;

procedure TBtn360Style.CNDrawItem(var Message: TWMDrawItem);
var
  IsDown: Boolean;
  ARect: TRect;
  DrawItemStruct: TDrawItemStruct;
  wh: TSize;
  g: TGPGraphics;
  pen: TGPPen;
  img: TGPImage;
  img2: TGPBitmap;
  imgAtt: TGPImageAttributes;
  i, j: Integer;
const
  ColorMatrix: TColorMatrix = ((1.0, 0.0, 0.0, 0.0, 0.0), (0.0, 1.0, 0.0, 0.0, 0.0), (0.0, 0.0, 1.0, 0.0, 0.0), (0.0, 0.0, 0.0, 1.0, 0.0), (1.0, 0.0, 0.0, 0.0, 1.0));
begin
  DrawItemStruct := Message.DrawItemStruct^;
  FCanvas.Handle := DrawItemStruct.hDC;
  g := TGPGraphics.Create(FCanvas.Handle);
  pen := TGPPen.Create(GDIPAPI.MakeColor(128, FEdgColor and $FF, (FEdgColor shr 8) and $FF, (FEdgColor shr 16) and $FF));
  img := TGPImage.Create(FPngFileName);
  img2 := TGPBitmap.Create(Width, Height);
  for i := 0 to img2.GetWidth do
    for j := 0 to img2.GetHeight do
    begin
      color := GDIPAPI.MakeColor(128, FBkgColor and $FF, (FBkgColor shr 8) and $FF, (FBkgColor shr 16) and $FF);
      img2.SetPixel(i, j, color);
    end;
  ARect := ClientRect;
  with DrawItemStruct do
    IsDown := itemState and ODS_SELECTED <> 0;
  if FMouseEnter then   // 鼠标在按钮上 则绘制一个背景及边框
  begin
    Perform($000B, 0, 0);
    g.DrawImage(img2, 0, 0, Width, Height);
    g.DrawRectangle(pen, 0, 0, Width - 1, Height - 1);
    Perform($000B, 1, 0);
  end;
  // 按钮被按下时的状态绘制
  if IsDown then
  begin
    imgAtt := TGPImageAttributes.Create;
    imgAtt.SetColorMatrix(ColorMatrix, ColorMatrixFlagsDefault, ColorAdjustTypeDefault);
    g.DrawImage(img, MakeRect(0, 0, img.GetWidth, img.GetHeight), -10, -10, img.GetWidth + 10, img.GetHeight + 10, UnitPixel, imgAtt);
    FreeAndNil(imgAtt);
  end
  else  // 绘制一个未按下的按钮
    g.DrawImage(img, (Width - img.GetWidth) div 2, 10);
  FreeAndNil(img);
  FreeAndNil(img2);
  FreeAndNil(g);
  FreeAndNil(pen);

  // 绘制 Caption 文本内容
  FCanvas.Font := Self.Font;
  ARect := ClientRect;
  wh := FCanvas.TextExtent(Caption);
  FCanvas.Pen.Width := 1;
  FCanvas.Brush.Style := bsClear;
  if not Enabled then
  begin // 按钮失效时应多绘一次 Caption 文本
    FCanvas.Font.Color := clBtnHighlight;
    FCanvas.TextOut((Width div 2) - (wh.cx div 2), height - wh.cy - 10, Caption);
    FCanvas.Font.Color := clBtnShadow;
  end
  else
    FCanvas.TextOut((Width div 2) - (wh.cx div 2), height - wh.cy - 10, Caption);
  FCanvas.Handle := 0;
end;

procedure Register;
begin
  RegisterComponents('cactus', [TBtn360Style]);
end;

end.

