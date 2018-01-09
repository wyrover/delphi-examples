unit ColorUtils;

interface

uses
  Windows, Messages, SysUtils, Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs,  Vcl.ExtCtrls, Vcl.Buttons;

type
  TAdvColors = 0 .. 100;
  TColorCalcType = (lighten, darken);
  TNumGlyphs = 1 .. 4;
  TTransparentMode = (tmAlways, tmNotFocused, tmNone);
  TCheckBoxLayout = (checkboxLeft, checkboxRight);
  TFlatTabPosition = (tpTop, tpBottom);
  TProgressBarOrientation = (pbHorizontal, pbVertical);

  function HSLtoRGB(H, S, L: double): TColor;
  function HSLRangeToRGB(H, S, L: integer): TColor;
  procedure RGBtoHSL(RGB: TColor; var H, S, L: double);
  procedure RGBtoHSLRange(RGB: TColor; var H, S, L: integer);

  procedure DrawParentImage(Control: TControl; Dest: TCanvas);
  procedure Frame3DBorder(Canvas: TCanvas; Rect: TRect; TopColor, BottomColor: TColor; Width: Integer);
  function CalcAdvancedColor(ParentColor, OriginalColor: TColor; Percent: Byte; ColorType: TColorCalcType): TColor;
  procedure CalcButtonLayout(Canvas: TCanvas; const Client: TRect; const Offset: TPoint; Layout: TButtonLayout;
  Spacing, Margin: Integer; FGlyph: TBitmap; FNumGlyphs: Integer; const Caption: string; var TextBounds: TRect;
  var GlyphPos: TPoint);

  function CreateDisabledBitmap(FOriginal: TBitmap; OutlineColor, BackColor, HighlightColor, ShadowColor: TColor;
  DrawHighlight: Boolean): TBitmap;

implementation


var
  HSLRange: integer = 240;


function HSLtoRGB(H, S, L: double): TColor;
var
  M1, M2: double;

  function HueToColourValue(Hue: double): byte;
  var
    V: double;
  begin
    if Hue < 0 then
      Hue := Hue + 1
    else if Hue > 1 then
      Hue := Hue - 1;

    if 6 * Hue < 1 then
      V := M1 + (M2 - M1) * Hue * 6
    else if 2 * Hue < 1 then
      V := M2
    else if 3 * Hue < 2 then
      V := M1 + (M2 - M1) * (2 / 3 - Hue) * 6
    else
      V := M1;
    Result := round(255 * V)
  end;

var
  R, G, B: byte;
begin
  if S = 0 then
  begin
    R := round(255 * L);
    G := R;
    B := R
  end
  else
  begin
    if L <= 0.5 then
      M2 := L * (1 + S)
    else
      M2 := L + S - L * S;
    M1 := 2 * L - M2;
    R := HueToColourValue(H + 1 / 3);
    G := HueToColourValue(H);
    B := HueToColourValue(H - 1 / 3)
  end;

  Result := RGB(R, G, B)
end;

function HSLRangeToRGB(H, S, L: integer): TColor;
begin
  Result := HSLtoRGB(H / (HSLRange - 1), S / HSLRange, L / HSLRange)
end;

procedure RGBtoHSL(RGB: TColor; var H, S, L: double);

  function Max(a, B: double): double;
  begin
    if a > B then
      Result := a
    else
      Result := B
  end;

  function Min(a, B: double): double;
  begin
    if a < B then
      Result := a
    else
      Result := B
  end;

var
  R, G, B, D, Cmax, Cmin: double;
begin
  R := GetRValue(RGB) / 255;
  G := GetGValue(RGB) / 255;
  B := GetBValue(RGB) / 255;
  Cmax := Max(R, Max(G, B));
  Cmin := Min(R, Min(G, B));

  // calculate luminosity
  L := (Cmax + Cmin) / 2;

  if Cmax = Cmin then // it's grey
  begin
    H := 0; // it's actually undefined
    S := 0
  end
  else
  begin
    D := Cmax - Cmin;

    // calculate Saturation
    if L < 0.5 then
      S := D / (Cmax + Cmin)
    else
      S := D / (2 - Cmax - Cmin);

    // calculate Hue
    if R = Cmax then
      H := (G - B) / D
    else if G = Cmax then
      H := 2 + (B - R) / D
    else
      H := 4 + (R - G) / D;

    H := H / 6;
    if H < 0 then
      H := H + 1
  end
end;

procedure RGBtoHSLRange(RGB: TColor; var H, S, L: integer);
var
  Hd, Sd, Ld: double;
begin
  RGBtoHSL(RGB, Hd, Sd, Ld);
  H := round(Hd * (HSLRange - 1));
  S := round(Sd * HSLRange);
  L := round(Ld * HSLRange);
end;

procedure DrawParentImage(Control: TControl; Dest: TCanvas);
var
  SaveIndex: Integer;
  DC: HDC;
  Position: TPoint;
begin
  with Control do
  begin
    if Parent = nil then
      Exit;
    DC := Dest.Handle;
    SaveIndex := SaveDC(DC);
{$IFDEF DFS_COMPILER_2}
    GetViewportOrgEx(DC, @Position);
{$ELSE}
    GetViewportOrgEx(DC, Position);
{$ENDIF}
    SetViewportOrgEx(DC, Position.x - Left, Position.y - Top, nil);
    IntersectClipRect(DC, 0, 0, Parent.ClientWidth, Parent.ClientHeight);
    Parent.Perform(WM_ERASEBKGND, DC, 0);
    Parent.Perform(WM_PAINT, DC, 0);
    RestoreDC(DC, SaveIndex);
  end;
end;

procedure Frame3DBorder(Canvas: TCanvas; Rect: TRect; TopColor, BottomColor: TColor; Width: Integer);

  procedure DoRect;
  var
    TopRight, BottomLeft: TPoint;
  begin
    with Canvas, Rect do
    begin
      TopRight.x := Right;
      TopRight.y := Top;
      BottomLeft.x := Left;
      BottomLeft.y := Bottom;
      Pen.Color := TopColor;
      PolyLine([BottomLeft, TopLeft, TopRight]);
      Pen.Color := BottomColor;
      Dec(BottomLeft.x);
      PolyLine([TopRight, BottomRight, BottomLeft]);
    end;
  end;

begin
  Canvas.Pen.Width := 1;
  Dec(Rect.Bottom);
  Dec(Rect.Right);
  while Width > 0 do
  begin
    Dec(Width);
    DoRect;
    InflateRect(Rect, -1, -1);
  end;
  Inc(Rect.Bottom);
  Inc(Rect.Right);
end;

function CalcAdvancedColor(ParentColor, OriginalColor: TColor; Percent: Byte; ColorType: TColorCalcType): TColor;
var
  H, S, L: Integer;
begin
  if Percent <> 0 then
  begin
    RGBtoHSLRange(ColorToRGB(ParentColor), H, S, L);
    Inc(L, 10);
    if ColorType = lighten then
      if L + Percent > 100 then
        L := 100
      else
        Inc(L, Percent)
      else if L - Percent < 0 then
        L := 0
      else
        Dec(L, Percent);

    Result := HSLRangeToRGB(H, S, L);
  end
  else
    Result := OriginalColor;
end;


procedure CalcButtonLayout(Canvas: TCanvas; const Client: TRect; const Offset: TPoint; Layout: TButtonLayout;
  Spacing, Margin: Integer; FGlyph: TBitmap; FNumGlyphs: Integer; const Caption: string; var TextBounds: TRect;
  var GlyphPos: TPoint);
var
  TextPos: TPoint;
  ClientSize, GlyphSize, TextSize: TPoint;
  TotalSize: TPoint;
begin
  // calculate the item sizes
  ClientSize := Point(Client.Right - Client.Left, Client.Bottom - Client.Top);

  if FGlyph <> nil then
    GlyphSize := Point(FGlyph.Width div FNumGlyphs, FGlyph.Height)
  else
    GlyphSize := Point(0, 0);

  if Length(Caption) > 0 then
  begin
    TextBounds := Rect(0, 0, Client.Right - Client.Left, 0);
    DrawText(Canvas.Handle, PChar(Caption), Length(Caption), TextBounds, DT_CALCRECT or DT_SINGLELINE);
    TextSize := Point(TextBounds.Right - TextBounds.Left, TextBounds.Bottom - TextBounds.Top);
  end
  else
  begin
    TextBounds := Rect(0, 0, 0, 0);
    TextSize := Point(0, 0);
  end;

  // If the layout has the glyph on the right or the left, then both the
  // text and the glyph are centered vertically.  If the glyph is on the top
  // or the bottom, then both the text and the glyph are centered horizontally.
  if Layout in [blGlyphLeft, blGlyphRight] then
  begin
    GlyphPos.y := (ClientSize.y - GlyphSize.y + 1) div 2;
    TextPos.y := (ClientSize.y - TextSize.y + 1) div 2;
  end
  else
  begin
    GlyphPos.x := (ClientSize.x - GlyphSize.x + 1) div 2;
    TextPos.x := (ClientSize.x - TextSize.x + 1) div 2;
  end;

  // if there is no text or no bitmap, then Spacing is irrelevant
  if (TextSize.x = 0) or (GlyphSize.x = 0) then
    Spacing := 0;

  // adjust Margin and Spacing
  if Margin = -1 then
  begin
    if Spacing = -1 then
    begin
      TotalSize := Point(GlyphSize.x + TextSize.x, GlyphSize.y + TextSize.y);
      if Layout in [blGlyphLeft, blGlyphRight] then
        Margin := (ClientSize.x - TotalSize.x) div 3
      else
        Margin := (ClientSize.y - TotalSize.y) div 3;
      Spacing := Margin;
    end
    else
    begin
      TotalSize := Point(GlyphSize.x + Spacing + TextSize.x, GlyphSize.y + Spacing + TextSize.y);
      if Layout in [blGlyphLeft, blGlyphRight] then
        Margin := (ClientSize.x - TotalSize.x + 1) div 2
      else
        Margin := (ClientSize.y - TotalSize.y + 1) div 2;
    end;
  end
  else
  begin
    if Spacing = -1 then
    begin
      TotalSize := Point(ClientSize.x - (Margin + GlyphSize.x), ClientSize.y - (Margin + GlyphSize.y));
      if Layout in [blGlyphLeft, blGlyphRight] then
        Spacing := (TotalSize.x - TextSize.x) div 2
      else
        Spacing := (TotalSize.y - TextSize.y) div 2;
    end;
  end;

  case Layout of
    blGlyphLeft:
      begin
        GlyphPos.x := Margin;
        TextPos.x := GlyphPos.x + GlyphSize.x + Spacing;
      end;
    blGlyphRight:
      begin
        GlyphPos.x := ClientSize.x - Margin - GlyphSize.x;
        TextPos.x := GlyphPos.x - Spacing - TextSize.x;
      end;
    blGlyphTop:
      begin
        GlyphPos.y := Margin;
        TextPos.y := GlyphPos.y + GlyphSize.y + Spacing;
      end;
    blGlyphBottom:
      begin
        GlyphPos.y := ClientSize.y - Margin - GlyphSize.y;
        TextPos.y := GlyphPos.y - Spacing - TextSize.y;
      end;
  end;

  // fixup the result variables
  with GlyphPos do
  begin  {d2010: Client.Left ?Integer;Offset.x ?Integer  }
  {d2010: Offset - Types.TPoint (PPoint = ^TPoint;TPoint = record X: Longint;Y: Longint;end;)}
{$IF CompilerVersion <= 21}
    Inc(x, Client.Left + Offset.x);
    Inc(y, Client.Top + Offset.y);
{$IFEND}
{$IFDEF VER260}
   // Inc(x, Client.Left + Offset.x);
  //  Inc(y, Client.Top + Offset.y);
{$ENDIF}
  end;
  OffsetRect(TextBounds, TextPos.x + Client.Left + Offset.x, TextPos.y + Client.Top + Offset.x);
end;

function CreateDisabledBitmap(FOriginal: TBitmap; OutlineColor, BackColor, HighlightColor, ShadowColor: TColor;
  DrawHighlight: Boolean): TBitmap;
const
  ROP_DSPDxax = $00E20746;
var
  MonoBmp: TBitmap;
  IRect: TRect;
begin
  IRect := Rect(0, 0, FOriginal.Width, FOriginal.Height);
  Result := TBitmap.Create;
  try
    Result.Width := FOriginal.Width;
    Result.Height := FOriginal.Height;
    MonoBmp := TBitmap.Create;
    try
      with MonoBmp do
      begin
        Width := FOriginal.Width;
        Height := FOriginal.Height;
        Canvas.CopyRect(IRect, FOriginal.Canvas, IRect);
{$IFDEF DFS_DELPHI_3_UP}
        HandleType := bmDDB;
{$ENDIF}
        Canvas.Brush.Color := OutlineColor;
        if Monochrome then
        begin
          Canvas.Font.Color := clWhite;
          Monochrome := False;
          Canvas.Brush.Color := clWhite;
        end;
        Monochrome := True;
      end;
      with Result.Canvas do
      begin
        Brush.Color := BackColor;
        FillRect(IRect);
        if DrawHighlight then
        begin
          Brush.Color := HighlightColor;
          SetTextColor(Handle, clBlack);
          SetBkColor(Handle, clWhite);
          BitBlt(Handle, 1, 1, IRect.Right - IRect.Left, IRect.Bottom - IRect.Top, MonoBmp.Canvas.Handle, 0, 0,
            ROP_DSPDxax);
        end;
        Brush.Color := ShadowColor;
        SetTextColor(Handle, clBlack);
        SetBkColor(Handle, clWhite);
        BitBlt(Handle, 0, 0, IRect.Right - IRect.Left, IRect.Bottom - IRect.Top, MonoBmp.Canvas.Handle, 0, 0,
          ROP_DSPDxax);
      end;
    finally
      MonoBmp.Free;
    end;
  except
    Result.Free;
    raise ;
  end;
end;

end.
