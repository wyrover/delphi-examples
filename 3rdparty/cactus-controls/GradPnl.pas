unit GradPnl;

interface

uses
  System.Classes, Vcl.Graphics, Vcl.Controls;

type
  TDirection = (TopToBottom, BottomToTop, LeftToRight, RightToLeft, EdgesToCenter, CenterToEdges, HCenterToEdges, EdgesToHCenter, VCenterToEdges, EdgesToVCenter, TopLeft, BottomLeft, TopRight, BottomRight, EllipticIn, EllipticOut);

type
  TCountOfColor = 1..255;

type
  TGradientPanel = class(TGraphicControl)
  private
    { Private declarations }
    FColorFrom: TColor;
    FColorTo: TColor;
    FCount: TCountOfColor;
    FDirection: TDirection;
  protected
    procedure Paint; override;
    procedure SetPaintColorFrom(Value: TColor);
    procedure SetPaintColorTo(Value: TColor);
    procedure SetPaintCount(Value: TCountOfColor);
    procedure SetPaintDirection(Value: TDirection);
  public
    constructor Create(AOwner: TComponent); override;
  published
    property ColorFrom: TColor read FColorFrom write SetPaintColorFrom;
    property ColorTo: TColor read FColorTo write SetPaintColorTo;
    property ColorCount: TCountOfColor read FCount write SetPaintCount;
    property Direction: TDirection read FDirection write SetPaintDirection;
    property Align;
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    property ParentColor;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property Visible;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
  end;

procedure Register;

implementation

uses
  Windows;



constructor TGradientPanel.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  FColorFrom := clBlue;
  FColorTo := clBlack;
  FCount := 64;

  Height := 100;
  Width := 100;
  Invalidate;
end;

procedure TGradientPanel.Paint;
var
  RedFrom, GreenFrom, BlueFrom, RedTo, GreenTo, BlueTo: Byte;
  DiffRed, DiffGreen, DiffBlue: Integer;
  i, StartHeight, EndHeight, StartWidth, EndWidth: Integer;
  StepHeight, StepWidth: Double;
begin
  StartHeight := 0;
  StartWidth := 0;
  EndHeight := 0;
  EndWidth := 0;
  StepHeight := 0;
  StepWidth := 0;

  case FDirection of
    TopToBottom, BottomToTop:
      begin
        EndHeight := Height;
        StepHeight := Height / (FCount + 1);
      end;
    LeftToRight, RightToLeft:
      begin
        EndWidth := Width;
        StepWidth := Width / (FCount + 1);
      end;
    EdgesToCenter, CenterToEdges, EllipticIn, EllipticOut:
      begin
        EndWidth := Trunc(Width / 2);
        StepWidth := Width / (2 * FCount + 2);

        EndHeight := Trunc(Height / 2);
        StepHeight := Height / (2 * FCount + 2);
      end;
    HCenterToEdges, EdgesToHCenter:
      begin
        EndHeight := Trunc(Height / 2);
        StepHeight := Height / (2 * FCount + 2);
      end;
    VCenterToEdges, EdgesToVCenter:
      begin
        EndWidth := Trunc(Width / 2);
        StepWidth := Width / (2 * FCount + 2);
      end;
    TopLeft, BottomLeft, TopRight, BottomRight:
      begin
        EndWidth := Width;
        StepWidth := Width / (FCount + 1);

        EndHeight := Trunc(Height / 2);
        StepHeight := Height / (FCount + 1);
      end;
  end;

  {óñòàíàâëèâàåì íà÷àëüíûé öâåò è ðàçíèöó ìåæäó íà÷àëüíûì è êîíå÷íûì}
  if (FDirection in [BottomToTop, RightToLeft, CenterToEdges, EllipticOut, HCenterToEdges, VCenterToEdges, TopLeft, BottomLeft, TopRight, BottomRight]) then
  begin
    RedFrom := (FColorTo and $000000FF);
    GreenFrom := (FColorTo and $0000FF00) shr 8;
    BlueFrom := (FColorTo and $00FF0000) shr 16;

    RedTo := (FColorFrom and $000000FF);
    GreenTo := (FColorFrom and $0000FF00) shr 8;
    BlueTo := (FColorFrom and $00FF0000) shr 16;
  end
  else
  begin
    RedFrom := (FColorFrom and $000000FF);
    GreenFrom := (FColorFrom and $0000FF00) shr 8;
    BlueFrom := (FColorFrom and $00FF0000) shr 16;

    RedTo := (FColorTo and $000000FF);
    GreenTo := (FColorTo and $0000FF00) shr 8;
    BlueTo := (FColorTo and $00FF0000) shr 16;
  end;
  DiffRed := RedTo - RedFrom;
  DiffGreen := GreenTo - GreenFrom;
  DiffBlue := BlueTo - BlueFrom;

  if (FDirection in [EllipticIn, EllipticOut]) then
  begin
    with inherited Canvas do
    begin
      Pen.Style := psClear;
      Brush.Color := RGB(RedFrom, GreenFrom, BlueFrom);
      Rectangle(0, 0, Width, Height);
    end;
  end;

  for i := 0 to FCount - 1 do
  begin
    with inherited Canvas do
    begin
      Pen.Style := psClear;
      if FCount > 1 then
        Brush.Color := RGB(RedFrom + MulDiv(i, DiffRed, FCount - 1), GreenFrom + MulDiv(i, DiffGreen, FCount - 1), BlueFrom + MulDiv(i, DiffBlue, FCount - 1))
      else
        Brush.Color := RGB(RedFrom, GreenFrom, BlueFrom);

      case FDirection of
        TopToBottom, BottomToTop:
          Rectangle(0, StartHeight + Trunc(StepHeight * i) - 1, Width, StartHeight + Trunc(StepHeight * (i + 1)));
        LeftToRight, RightToLeft:
          Rectangle(StartWidth + Trunc(StepWidth * i) - 1, 0, StartWidth + Trunc(StepWidth * (i + 1)), Height);
        EdgesToCenter, CenterToEdges:
          Rectangle(StartWidth + Trunc(StepWidth * i) - 1, StartHeight + Trunc(StepHeight * i) - 1, Width - StartWidth - Trunc(StepWidth * i), Height - StartHeight - Trunc(StepHeight * i));
        HCenterToEdges, EdgesToHCenter:
          begin
            Rectangle(0, StartHeight + Trunc(StepHeight * i) - 1, Width, StartHeight + Trunc(StepHeight * (i + 1)));
            Rectangle(0, Height - StartHeight - Trunc(StepHeight * i) + 1, Width, Height - StartHeight - Trunc(StepHeight * (i + 1)));
          end;
        VCenterToEdges, EdgesToVCenter:
          begin
            Rectangle(StartWidth + Trunc(StepWidth * i) - 1, 0, StartWidth + Trunc(StepWidth * (i + 1)), Height);
            Rectangle(Width - StartWidth - Trunc(StepWidth * i) + 1, 0, Width - StartWidth - Trunc(StepWidth * (i + 1)), Height);
          end;
        TopLeft:
          Rectangle(0, 0, Width - StartWidth - Trunc(StepWidth * i) + 1, Height - StartHeight - Trunc(StepHeight * i) + 1);
        BottomLeft:
          Rectangle(0, StartHeight + Trunc(StepHeight * i) - 1, Width - StartWidth - Trunc(StepWidth * i) + 1, Height);
        TopRight:
          Rectangle(StartWidth + Trunc(StepWidth * i) - 1, 0, Width, Height - StartHeight - Trunc(StepHeight * i) + 1);
        BottomRight:
          Rectangle(StartWidth + Trunc(StepWidth * i) - 1, StartHeight + Trunc(StepHeight * i) - 1, Width, Height);
        EllipticIn, EllipticOut:
          Ellipse(StartWidth + Trunc(StepWidth * i) - 1, StartHeight + Trunc(StepHeight * i) - 1, Width - StartWidth - Trunc(StepWidth * i), Height - StartHeight - Trunc(StepHeight * i));
      end;
    end;
  end;
  with inherited Canvas do
  begin
    Pen.Style := psClear;
    Brush.Color := RGB(RedTo, GreenTo, BlueTo);
    case FDirection of
      TopToBottom, BottomToTop:
        Rectangle(0, StartHeight + Trunc(StepHeight * FCount) - 1, Width, EndHeight);
      LeftToRight, RightToLeft:
        Rectangle(StartWidth + Trunc(StepWidth * FCount) - 1, 0, EndWidth, Height);
      HCenterToEdges, EdgesToHCenter:
        begin
          Rectangle(0, StartHeight + Trunc(StepHeight * FCount) - 1, Width, EndHeight);
          Rectangle(0, EndHeight - 1, Width, Height - StartHeight - Trunc(StepHeight * (FCount - 1)));
        end;
      VCenterToEdges, EdgesToVCenter:
        begin
          Rectangle(StartWidth + Trunc(StepWidth * FCount) - 1, 0, EndWidth, Height);
          Rectangle(EndWidth - 1, 0, Width - StartWidth - Trunc(StepWidth * (FCount - 1)), Height);
        end;
    end;
  end;
end;

procedure TGradientPanel.SetPaintColorFrom(Value: TColor);
begin
  if FColorFrom <> Value then
  begin
    FColorFrom := Value;
    Paint;
  end;
end;

procedure TGradientPanel.SetPaintColorTo(Value: TColor);
begin
  if FColorTo <> Value then
  begin
    FColorTo := Value;
    Paint;
  end;
end;

procedure TGradientPanel.SetPaintCount(Value: TCountOfColor);
begin
  if FCount <> Value then
  begin
    FCount := Value;
    Paint;
  end;
end;

procedure TGradientPanel.SetPaintDirection(Value: TDirection);
begin
  if FDirection <> Value then
  begin
    FDirection := Value;
    Paint;
  end;
end;


procedure Register;
begin
  RegisterComponents('cactus', [TGradientPanel]);
end;

end.

