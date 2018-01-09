unit roGraph;

interface

uses
  Windows, Graphics, Classes, Types, Math, Forms, Controls;

procedure FillDC(DC: HDC; const aRect: TRect; const Color: TColor);

procedure FillDCBorder(const DC: HDC; const aRect: TRect; const wl, wt, wr, wb
    : integer; const Color: TColor);

procedure BitBltBorder(const DestDC: HDC; const X, Y, Width, Height: Integer;
    const SrcDC: HDC; const XSrc, YSrc: Integer; const BorderWidth : integer);

function HeightOf(const r: TRect; CheckNegative : boolean = False): integer;

function OffsetPoint(p: TPoint; x,y : integer): TPoint;

function RectInRect(BigRect, SmallRect : TRect): boolean;

function RectIsVisible(const ParentRect, Rect : TRect): boolean;

function RectsAnd(const R1, R2 : TRect): TRect;

function RotateRect(R : TRect): TRect;

function WidthOf(const r: TRect; CheckNegative : boolean = False): integer;

{function HLStoRGB(hlsc: integer): integer;
function RGBtoHLS(rgbc: integer): integer;}

var
  User32Lib: Cardinal = 0;
  UpdateLayeredWindow: function (Handle: THandle; hdcDest: HDC; pptDst: PPoint; _psize: PSize;
    hdcSrc: HDC; pptSrc: PPoint; crKey: COLORREF; pblend: PBLENDFUNCTION; dwFlags: DWORD): Boolean; stdcall;
  SetLayeredWindowAttributes: function (Hwnd: THandle; crKey: COLORREF; bAlpha: Byte; dwFlags: DWORD): Boolean; stdcall;

implementation





var
  FCheckWidth, FCheckHeight: Integer;


procedure BitBltBorder(const DestDC: HDC; const X, Y, Width, Height: Integer;
    const SrcDC: HDC; const XSrc, YSrc: Integer; const BorderWidth : integer);
begin
  BitBlt(DestDC, X, Y, BorderWidth, Height, SrcDC, XSrc, YSrc, SRCCOPY);
  BitBlt(DestDC, X + BorderWidth, Y, Width, BorderWidth, SrcDC, XSrc + BorderWidth, YSrc, SRCCOPY);
  BitBlt(DestDC, Width - BorderWidth, Y + BorderWidth, Width, Height, SrcDC, XSrc + Width - BorderWidth, YSrc + BorderWidth, SRCCOPY);
  BitBlt(DestDC, X + BorderWidth, Height - BorderWidth, Width - BorderWidth, Height, SrcDC, XSrc + BorderWidth, YSrc + Height - BorderWidth, SRCCOPY);
end;

function RectIsVisible(const ParentRect, Rect : TRect): boolean;
begin
  Result := (Rect.Bottom > ParentRect.Top) and
              (Rect.Right > ParentRect.Left) and
                (Rect.Left < ParentRect.Right) and
                  (Rect.Top < ParentRect.Bottom) and not IsRectEmpty(Rect);
end;

function RectInRect(BigRect, SmallRect : TRect): boolean;
begin
  inc(BigRect.Bottom); inc(BigRect.Right);
  Result := PtInRect(BigRect, SmallRect.TopLeft) and PtInRect(BigRect, SmallRect.BottomRight);
end;

function RotateRect(R : TRect): TRect;
var
  i : integer;
begin
  i := R.left;
  R.left := R.top;
  R.top := i;

  i := R.right;
  R.right := R.bottom;
  R.bottom := i;
  Result := R;
end;

function RectsAnd(const R1, R2 : TRect): TRect;
begin
  Result.Left := max(R1.Left, R2.Left);
  Result.Top := max(R1.Top, R2.Top);
  Result.Right := min(R1.Right, R2.Right);
  Result.Bottom := min(R1.Bottom, R2.Bottom);
end;

function OffsetPoint(p: TPoint; x,y : integer): TPoint;
begin
  Result := p;
  inc(Result.x, x);
  inc(Result.y, y);
end;

function WidthOf(const r: TRect; CheckNegative : boolean = False): integer;
begin
  Result := integer(r.Right - r.Left);
  if CheckNegative and (Result < 0) then Result := 0;
end;

function HeightOf(const r: TRect; CheckNegative : boolean = False): integer;
begin
  Result := integer(r.Bottom - r.Top);
  if CheckNegative and (Result < 0) then Result := 0;
end;


procedure DrawColorArrow(Canvas : TCanvas; Color : TColor; R : TRect; Direction : integer);
const
  aWidth = 6;
  aHeight = 3;
var
  x, y, Left, Top, i : integer;
begin
  i := 0;
  case Direction of
    BF_BOTTOM : begin
      Left := R.Left + (WidthOf(R) - aWidth) div 2 - 1;
      Top := R.Top + (HeightOf(R) - aHeight) div 2 - 1;
      for y := Top to Top + aHeight do begin
        for x := i to aHeight do begin
          Canvas.Pixels[Left + x, y] := Color;
          Canvas.Pixels[Left + aWidth - x + 1, y] := Color;
        end;
        inc(i);
      end;
    end;
    BF_RIGHT : begin
      Left := R.Left + (WidthOf(R) - aHeight) div 2;
      Top := R.Top + (HeightOf(R) - aWidth) div 2;
      for x := Left to Left + aHeight do begin
        for y := Top + i to Top + aHeight do begin
          Canvas.Pixels[x, y] := Color;
          Canvas.Pixels[x, y + aHeight - i] := Color;
        end;
        inc(i);
      end;
    end;
  end;
end;








{$IFNDEF ACHINTS}




{$ENDIF}

procedure FillDC(DC: HDC; const aRect: TRect; const Color: TColor);
var
  OldBrush, NewBrush : hBrush;
  SavedDC : hdc;
begin
  SavedDC := SaveDC(DC);
  NewBrush := CreateSolidBrush(Cardinal(ColorToRGB(Color)));
  OldBrush := SelectObject(dc, NewBrush);
  try
    FillRect(DC, aRect, NewBrush);
  finally
    SelectObject(dc, OldBrush);
    DeleteObject(NewBrush);
    RestoreDC(DC, SavedDC);
  end;
end;

procedure FillDCBorder(const DC: HDC; const aRect: TRect; const wl, wt, wr, wb : integer; const Color: TColor);
var
  OldBrush, NewBrush : hBrush;
  SavedDC : hWnd;
begin
  SavedDC := SaveDC(DC);
  NewBrush := CreateSolidBrush(Cardinal(ColorToRGB(Color)));
  OldBrush := SelectObject(dc, NewBrush);
  try
    FillRect(DC, Rect(aRect.Left, aRect.Top, aRect.Right, aRect.Top + wt), NewBrush);
    FillRect(DC, Rect(aRect.Left, aRect.Top + wt, aRect.Left + wl, aRect.Bottom), NewBrush);
    FillRect(DC, Rect(aRect.Left + wl, aRect.Bottom - wb, aRect.Right, aRect.Bottom), NewBrush);
    FillRect(DC, Rect(aRect.Right - wr, aRect.Top + wt, aRect.Right, aRect.Bottom - wb), NewBrush);
  finally
    SelectObject(dc, OldBrush);
    DeleteObject(NewBrush);
    RestoreDC(DC, SavedDC);
  end;
end;


function CreateBmpLike(const Bmp: TBitmap): TBitmap;
begin
  Result := TBitmap.Create;
  Result.Width := Bmp.Width;
  Result.Height := Bmp.Height;
  Result.PixelFormat := Bmp.PixelFormat
end;





end.
