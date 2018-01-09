unit BitmapUtils;

interface

uses
  Winapi.Windows, Vcl.Graphics, Vcl.Forms, Vcl.Controls, System.Classes,
  System.Math, Vcl.Imaging.jpeg;

const
  CAPTUREBLT = $40000000;

type
  TBitmapCompareResult = record
    Bitmap: TBitmap;
    Count: Integer;
  end;

function BitmapCrop(aBitmap: TBitmap; const aRect: TRect): TBitmap;

function BitmapControl(aForm: TForm; const aControl: TControl): TBitmap; overload;

function BitmapControl(aForm: TForm; const aControl: TControl; aBorder: TRect): TBitmap; overload;

function BitmapCompare(aBitmap1, aBitmap2: TBitmap; aThreshold: Integer): TBitmapCompareResult;

procedure BitmapGrayscale(aBitmap: TBitmap);

function BmpToIco( // 位图处理成图标
  mBitmap: TBitmap; // 位图
  mIcon: TIcon; // 图标
  mSize32: Boolean = True; // 是否为大图标
  mTransparentColor: TColor = clDefault; // 透明颜色 默认为左下角
  mHotspotX: Integer = 0; // 热点 X
  mHotspotY: Integer = 0 // 热点 Y
): Boolean; // 返回处理是否成功

function IcoToBmp( // 图标处理成位图
  mIcon: TIcon; // 图标
  mBitmap: TBitmap // 位图
): Boolean; // 返回处理是否成功

function JpegToBmp( // Jpg 图片处理成位图
  mJPEGImage: TJPEGImage; // Jpg 图片
  mBitmap: TBitmap // 位图
): Boolean; // 返回处理是否成功

function BmpToJpeg( // 位图处理成 Jpg 图片
  mBitmap: TBitmap; // 位图
  mJPEGImage: TJPEGImage; // Jpg 图片
  mCompressionQuality: Integer = 75 // 压缩率
): Boolean; // 返回处理是否成功

function BitmapRGBScale( // 位图颜色调配
  mBitmap: TBitmap; // 目标位图
  R, G, B: Integer; // 颜色变化参数
  mTransparentColor: TColor // 透明不处理的颜色
): Boolean; // 返回处理是否成功

function BitmapGrayScale2( // 位图灰度处理
  mBitmap: TBitmap; // 位图
  mTransparentColor: TColor // 透明不处理的颜色
): Boolean; // 返回处理是否成功

function BitmapReverseRGB( // 颠倒位图的 RGB 值
  mBitmap: TBitmap // 位图
): Boolean; // 返回处理是否成功

function BitmapTransparent( // 位图透明绘制
  mBitmapBack: TBitmap; // 背景图
  mBitmapFace: TBitmap; // 绘制图
  mTransparentColor: TColor; // 透明不处理的颜色
  mScale: Byte; // 程度 0~255
  mOffset: TPoint // 绘制的偏移坐标
): Boolean; // 返回处理是否成功

function BitmapRotate90( // 将位图旋转 90 度
  mSource: TBitmap; // 源位图
  mDest: TBitmap // 目标位图
): Boolean; overload; // 返回处理是否成功

function BitmapRotate180( // 将位图旋转 90 度
  mSource: TBitmap; // 源位图
  mDest: TBitmap // 目标位图
): Boolean; overload; // 返回处理是否成功

function BitmapRotate270( // 将位图旋转 90 度
  mSource: TBitmap; // 源位图
  mDest: TBitmap // 目标位图
): Boolean; overload; // 返回处理是否成功

function BitmapRotateHorizontal( // 将位图水平旋转
  mSource: TBitmap; // 源位图
  mDest: TBitmap // 目标位图
): Boolean; overload; // 返回处理是否成功

function BitmapRotateVertical( // 将位图垂直旋转
  mSource: TBitmap; // 源位图
  mDest: TBitmap // 目标位图
): Boolean; overload; // 返回处理是否成功

function BitmapBlur( // 位图模糊处理
  mBitmap: TBitmap; // 目标位图
  mScale: Real; // 模糊度
  mTransparentColor: TColor // 透明不处理的颜色
): Boolean; // 返回处理是否成功

function BitmapGridPoint( // 位图网点处理
  mBitmap: TBitmap; // 目标位图
  mOffset: Boolean; // 错位处理
  mTransparentColor: TColor // 透明颜色
): Boolean; // 返回处理是否成功

function BitmapDraw( // 透明绘制，透明时 Canvas.Draw 的快些
  mBitmapBack: TBitmap; // 底图
  mBitmapFace: TBitmap; // 贴图
  mOffset: TPoint; // 偏移
  mTransparentColor: TColor // 透明不处理的颜色
): Boolean; // 返回处理是否成功

function BitmapMask( // 取得位图的模式图 // 黑白图
  mBitmap: TBitmap; // 源位图
  mTransparentColor: TColor; // 透明颜色
  mForeColor: TColor = clBlack; // 前景色
  mBackColor: TColor = clWhite // 背景色
): Boolean; // 返回处理是否成功

function BitmapReplace( // 替换位图中的颜色
  mBitmap: TBitmap; // 源位图
  mFromColor: TColor; // 历史颜色
  mToColor: TColor // 目标颜色
): Boolean; // 返回替换是否成功

procedure HSL2RGB( // HSL 处理成 RGB
  H, S, L: Integer; // HSL
  var R, G, B: Integer // 三原色
); overload;

procedure HSL2RGB( // HSL 处理成 RGB
  H, S, L: Integer; // HSL
  var nRGB: TColor // RGB
); overload;

procedure RGB2HSL( // RGB 处理成 HSL
  R, G, B: Integer; // RGB
  var H, S, L: Integer // HSL
); overload;

procedure RGB2HSL( // RGB 处理成 HSL
  mRGB: TColor; // RGB
  var H, S, L: Integer // HSL
); overload;

function HSLOffset( // HSL 偏移
  mRGB: TColor; // RGB
  mOffsetH, mOffsetS, mOffsetL: Integer // HSL
): TColor; // 返回偏移后的颜色

function GraphicToRGN( // 得到图片的不规则区域
  mGraphic: TGraphic; // 图片
  mTransparentColor: TColor = clBlack; // 透明色
  mSpace: Integer = 0 // 颜色容余度
): HRGN; // 返回图片的不规则区域句柄

function CompareColor( // 比较两个颜色的差别
  mColorA, mColorB: TColor): Integer; overload;

function CompareColor( // 比较两个颜色的差别
  mColorA, mColorB: TRGBTriple): Integer; overload;

function TakePicture( // 获取窗体图片
  mHandle: THandle; // 窗体句柄
  mBitmap: TBitmap; // 输出位图
  mCursor: Boolean = False // 是否截取光标
): Boolean; // 返回截取是否成功

function TakeDesktop( // 获取屏幕指定区域的图像
  mBitmap: TBitmap; // 输出位图
  mRect: TRect; //  获取的区域
  mCursor: Boolean = False // 是否截取光标
): Boolean; // 返回截取是否成功

function BitmapDrawHorizontal( // 位图水平拉伸绘制
  mBitmap: TBitmap; // 源位图
  mCanvas: TCanvas; // 绘制的画布
  mLeft: Integer; // 绘制的左边界
  mTop: Integer; // 绘制的上边界
  mWidth: Integer; // 绘制的宽度
  mCenterX: Integer // 位图拉伸的中心 X 坐标
): Boolean; // 返回绘制是否成功

function BitmapDrawVertical( // 位图垂直拉伸绘制
  mBitmap: TBitmap; // 源位图
  mCanvas: TCanvas; // 绘制的画布
  mLeft: Integer; // 绘制的左边界
  mTop: Integer; // 绘制的上边界
  mHeight: Integer; // 绘制的宽度
  mCenterY: Integer // 位图拉伸的中心 X 坐标
): Boolean; // 返回绘制是否成功

function CircleCursor( // 创建一个圆形的鼠标图案
  AColor: TColor; // 指定圆形的颜色
  ASize: Integer // 指定圆形的直径
): HCursor; // 返回鼠标图案句柄

function DrawThunderEllipse( // 绘制闪电线条
  mCanvas: TCanvas; // 画布
  mOrigin: TPoint; // 原点
  mRadialMin: Integer; mRadialMax: Integer; mAngleCount: Integer): Boolean;

function DrawThunderLine( // 绘制闪电线条
  mCanvas: TCanvas; // 画布
  mFromPoint: TPoint; // 来源坐标
  mToPoint: TPoint; // 目标坐标
  mAngle: Double; // 角度范围 +/-
  mSpaceMin: Integer; // 折线长度
  mSpaceMax: Integer // 折线长度
): Boolean; // 返回处理是否成功

function DrawCursor( // 绘制鼠标指针
  mCanvas: TCanvas; // 画布
  mCursor: THandle; // 鼠标指针句柄
  mPostion: TPoint // 鼠标位置
): Boolean; // 返回绘制是否成功

 function PointToPoint( // 计算点到点的距离
  mPointA, mPointB: TPoint // 两个点的坐标
): Double; // 返回点与点间的距离

function PointToAngle( // 计算坐标的角度
  mOrigin: TPoint; // 原坐标
  mPoint: TPoint; // 计算坐标
  mEccentricity: Double = 1 // 离心率 a / b // 计算椭圆的角度
): Double; // 返回该坐标相对原坐标的角度 // Pi 为单位


implementation

type
  PRGB32Record = ^TRGB32Record;

  TRGB32Record = packed record
    Blue: Byte;
    Green: Byte;
    Red: Byte;
    Alpha: Byte;
  end;

  PRGB32Array = ^TRGB32Array;

  TRGB32Array = packed array[0..MaxInt div SizeOf(TRGB32Record) - 1] of TRGB32Record;

function BitmapCrop(aBitmap: TBitmap; const aRect: TRect): TBitmap;
begin
  Result := TBitmap.Create;
  Result.Width := aRect.Right - aRect.Left;
  Result.Height := aRect.Bottom - aRect.Top;

  Result.PixelFormat := pf32bit;

  Result.Canvas.CopyRect(Rect(0, 0, Result.Width, Result.Height), aBitmap.Canvas, aRect);
end;

function BitmapControl(aForm: TForm; const aControl: TControl): TBitmap;
var
  b: TBitmap;
  r: TRect;
begin
  b := aForm.GetFormImage;
  b.PixelFormat := pf32bit;
  try
    r.Top := aControl.Top;
    r.Left := aControl.Left;
    r.Width := aControl.Width;
    r.Height := aControl.Height;

    Result := BitmapCrop(b, r);
  finally
    b.free;
  end;
end;

function BitmapControl(aForm: TForm; const aControl: TControl; aBorder: TRect): TBitmap; overload;
var
  zz: TBitmap;
  rr: TRect;
begin
  zz := BitmapControl(aForm, aControl);
  try
    rr.Top := aBorder.Top;
    rr.Left := aBorder.Left;
    rr.Right := zz.Width - aBorder.Right;
    rr.Bottom := zz.Height - aBorder.Bottom;

    Result := BitmapCrop(zz, rr);
    Result.PixelFormat := pf32bit;
  finally
    zz.free;
  end;
end;

procedure BitmapGrayscale(aBitmap: TBitmap);
var
  X: Integer;
  Y: Integer;
  P: PRGB32Record;
  G: Byte;
begin
  Assert(aBitmap.PixelFormat = pf32bit);
  for Y := 0 to (aBitmap.Height - 1) do
  begin
    P := aBitmap.ScanLine[Y];
    for X := 0 to (aBitmap.Width - 1) do
    begin
      G := Round(0.30 * P.Red + 0.59 * P.Green + 0.11 * P.Blue);
      P.Red := G;
      P.Green := G;
      P.Blue := G;
      Inc(P);
    end;
  end;
end;

function BitmapCompare(aBitmap1, aBitmap2: TBitmap; aThreshold: Integer): TBitmapCompareResult;
var
  l1: PRGB32Array;
  l2: PRGB32Array;
  X: Integer;
  Y: Integer;
begin
  Result.Count := 0;

  Result.Bitmap := TBitmap.Create;
  Result.Bitmap.Width := Max(aBitmap1.Width, aBitmap2.Width);
  Result.Bitmap.Height := Max(aBitmap1.Height, aBitmap2.Height);

  Result.Bitmap.PixelFormat := pf32bit;

  // Unione delle bitmap clLime
  Result.Bitmap.Canvas.Pen.Color := clLime;
  Result.Bitmap.Canvas.Brush.Color := clLime;
  Result.Bitmap.Canvas.Rectangle(0, 0, Max(aBitmap1.Width, aBitmap2.Width), Max(aBitmap1.Height, aBitmap2.Height));

  // Intersezione delle bitmap clWhite
  Result.Bitmap.Canvas.Pen.Color := clWhite;
  Result.Bitmap.Canvas.Brush.Color := clWhite;
  Result.Bitmap.Canvas.Rectangle(0, 0, Min(aBitmap1.Width, aBitmap2.Width), Min(aBitmap1.Height, aBitmap2.Height));

  // differenze clRed
  for Y := 0 to Min(aBitmap1.Height, aBitmap2.Height) - 1 do
  begin
    l1 := aBitmap1.ScanLine[Y];
    l2 := aBitmap2.ScanLine[Y];

    for X := 0 to Min(aBitmap1.Width, aBitmap2.Width) - 1 do
      if (abs(l1[X].Red - l2[X].Red) > aThreshold) or (abs(l1[X].Blue - l2[X].Blue) > aThreshold) or (abs(l1[X].Green - l2[X].Green) > aThreshold) then
      begin
        Result.Count := Result.Count + 1;
        Result.Bitmap.Canvas.Pixels[X, Y] := clRed
      end;
  end;
end;


function DrawThunderEllipse( // 绘制闪电线条
  mCanvas: TCanvas; // 画布
  mOrigin: TPoint; // 原点
  mRadialMin: Integer;
  mRadialMax: Integer;
  mAngleCount: Integer
): Boolean;
var
  vPoint: TPoint;
  vStart: TPoint;
  vRadial: Integer;
  I: Integer;
begin
  Result := False;
  if not Assigned(mCanvas) then Exit;
  vRadial := mRadialMin + Random(mRadialMax - mRadialMin);
  vStart.X := mOrigin.X + Trunc(Cos(0) * vRadial);
  vStart.Y := mOrigin.Y + Trunc(Sin(0) * vRadial);
  mCanvas.MoveTo(vStart.X, vStart.Y);
  for I := 1 to mAngleCount - 1 do
  begin
    vRadial := mRadialMin + Random(mRadialMax - mRadialMin);
    vPoint.X := mOrigin.X + Trunc(Cos(I / mAngleCount * 2 * PI) * vRadial);
    vPoint.Y := mOrigin.Y + Trunc(Sin(I / mAngleCount * 2 * PI) * vRadial);
    mCanvas.LineTo(vPoint.X, vPoint.Y);
  end;
  mCanvas.LineTo(vStart.X, vStart.Y);
  Result := True;
end; { DrawThunderEllipse }

function DrawThunderLine( // 绘制闪电线条
  mCanvas: TCanvas; // 画布
  mFromPoint: TPoint; // 来源坐标
  mToPoint: TPoint; // 目标坐标
  mAngle: Double; // 角度范围 +/-
  mSpaceMin: Integer; // 折线长度
  mSpaceMax: Integer // 折线长度
): Boolean; // 返回处理是否成功
 var
  vPoint: TPoint;
  vAngle: Double;
  vSpace: Integer;
begin
  Result := False;
  if not Assigned(mCanvas) then Exit;
  mCanvas.MoveTo(mFromPoint.X, mFromPoint.Y);
  while PointToPoint(mFromPoint, mToPoint) >= mSpaceMax do
  begin
    vAngle := PointToAngle(mFromPoint, mToPoint);
    vAngle := vAngle + mAngle * Random - mAngle / 2;
    vSpace := mSpaceMin + Random(mSpaceMax - mSpaceMin);
    vPoint.X := mFromPoint.X + Trunc(Cos(vAngle) * vSpace);
    vPoint.Y := mFromPoint.Y + Trunc(Sin(vAngle) * vSpace);
    mFromPoint := vPoint;
    mCanvas.LineTo(mFromPoint.X, mFromPoint.Y);
  end;
  mCanvas.LineTo(mToPoint.X, mToPoint.Y);
  Result := True;
end; { DrawThunder }

function DrawCursor( // 绘制鼠标指针
  mCanvas: TCanvas; // 画布
  mCursor: THandle; // 鼠标指针句柄
  mPostion: TPoint // 鼠标位置
): Boolean; // 返回绘制是否成功
 var
  vIconInfo: TIconInfo;
begin
  Result := False;
  if not Assigned(mCanvas) then Exit;
  GetIconInfo(mCursor, vIconInfo);
  try
    DrawIcon(mCanvas.Handle,
      mPostion.X - Integer(vIconInfo.xHotspot),
      mPostion.Y - Integer(vIconInfo.yHotspot),
      mCursor);
  finally
    DeleteObject(vIconInfo.hbmMask);                                            //2007-11-19 ZswangY37 No.1
    DeleteObject(vIconInfo.hbmColor);                                           //2007-11-19 ZswangY37 No.1
  end;
  Result := True;
end; { DrawCursor }

function TakePicture( // 获取窗体图片
  mHandle: THandle; // 窗体句柄
  mBitmap: TBitmap; // 输出位图
  mCursor: Boolean = False // 是否截取光标
): Boolean; // 返回截取是否成功
 var
  vRect: TRect;
  vDC: HDC;
  vCursorInfo: TCursorInfo;
  vIconInfo: TIconInfo;
  vMaxLogPalette: TMaxLogPalette;
begin
  Result := False;
  if mHandle = 0 then mHandle := GetDesktopWindow;
  if not IsWindow(mHandle) then Exit;
  if not Assigned(mBitmap) then Exit;
  GetWindowRect(mHandle, vRect);
  mBitmap.Width := vRect.Right - vRect.Left;
  mBitmap.Height := vRect.Bottom - vRect.Top;
  mBitmap.Canvas.FillRect(mBitmap.Canvas.ClipRect);

  vDC := GetDC(mHandle);
  try
    if GetDeviceCaps(vDC, RASTERCAPS) and RC_PALETTE = RC_PALETTE then
    begin
      FillChar(vMaxLogPalette, SizeOf(TMaxLogPalette), #0);
      vMaxLogPalette.palVersion := $300;
      vMaxLogPalette.palNumEntries := GetSystemPaletteEntries(
        vDC, 0, 256, vMaxLogPalette.palPalEntry);
      if (vMaxLogPalette.PalNumEntries <> 0) then
        mBitmap.Palette := CreatePalette(PLogPalette(@vMaxLogPalette)^);
    end;

    BitBlt(mBitmap.Canvas.Handle, 0, 0, mBitmap.Width, mBitmap.Height,
      vDC, 0, 0, SRCCOPY or CAPTUREBLT);
    if mCursor then
    begin
      vCursorInfo.cbSize := SizeOf(vCursorInfo);
      GetCursorInfo(vCursorInfo);
      try
        GetIconInfo(vCursorInfo.hCursor, vIconInfo);
        try
          DrawIcon(mBitmap.Canvas.Handle,
            vCursorInfo.ptScreenPos.X - vRect.Left - Integer(vIconInfo.xHotspot),
            vCursorInfo.ptScreenPos.Y - vRect.Top - Integer(vIconInfo.yHotspot),
            vCursorInfo.hCursor);
        finally
          DeleteObject(vIconInfo.hbmMask);                                      //2007-11-19 ZswangY37 No.1
          DeleteObject(vIconInfo.hbmColor);                                     //2007-11-19 ZswangY37 No.1
        end;
      finally
        DestroyCursor(vCursorInfo.hCursor);                                     //2007-11-19 ZswangY37 No.1
      end;
    end;
  finally
    DeleteDC(vDC);
  end;
  Result := True;
end; { TakePicture }

function TakeDesktop( // 获取屏幕指定区域的图像
  mBitmap: TBitmap; // 输出位图
  mRect: TRect; //  获取的区域
  mCursor: Boolean = False // 是否截取光标
): Boolean; // 返回截取是否成功
 var
  vDC: HDC;
  vCursorInfo: TCursorInfo;
  vIconInfo: TIconInfo;
  vMaxLogPalette: TMaxLogPalette;
begin
  Result := False;
  if not Assigned(mBitmap) then Exit;
  mBitmap.Width := mRect.Right - mRect.Left;
  mBitmap.Height := mRect.Bottom - mRect.Top;
  vDC := GetDC(0);
  mBitmap.Canvas.Lock;
  try
    if GetDeviceCaps(vDC, RASTERCAPS) and RC_PALETTE = RC_PALETTE then
    begin
      FillChar(vMaxLogPalette, SizeOf(TMaxLogPalette), #0);
      vMaxLogPalette.palVersion := $300;
      vMaxLogPalette.palNumEntries := GetSystemPaletteEntries(
        vDC, 0, 256, vMaxLogPalette.palPalEntry);
      if (vMaxLogPalette.PalNumEntries <> 0) then
        mBitmap.Palette := CreatePalette(PLogPalette(@vMaxLogPalette)^);
    end;

    BitBlt(mBitmap.Canvas.Handle, 0, 0, mBitmap.Width, mBitmap.Height,
      vDC, mRect.Left, mRect.Top, SRCCOPY or CAPTUREBLT);
    if mCursor then
    begin
      vCursorInfo.cbSize := SizeOf(vCursorInfo);
      GetCursorInfo(vCursorInfo);
      try
        GetIconInfo(vCursorInfo.hCursor, vIconInfo);
        try
          DrawIcon(mBitmap.Canvas.Handle,
            vCursorInfo.ptScreenPos.X - mRect.Left - Integer(vIconInfo.xHotspot),
            vCursorInfo.ptScreenPos.Y - mRect.Top - Integer(vIconInfo.yHotspot),
            vCursorInfo.hCursor);
        finally
          DeleteObject(vIconInfo.hbmMask);                                      //2007-11-19 ZswangY37 No.1
          DeleteObject(vIconInfo.hbmColor);                                     //2007-11-19 ZswangY37 No.1
        end;
      finally
        DestroyCursor(vCursorInfo.hCursor);                                     //2007-11-19 ZswangY37 No.1
      end;
    end;
  finally
    mBitmap.Canvas.Unlock;
    ReleaseDC(0, vDC);
  end;
  Result := True;
end; { TakeDesktop }

function BitmapDraw( // 透明绘制，透明时 Canvas.Draw 的快些
  mBitmapBack: TBitmap; // 底图
  mBitmapFace: TBitmap; // 贴图
  mOffset: TPoint; // 偏移
  mTransparentColor: TColor // 透明不处理的颜色
): Boolean; // 返回处理是否成功
 var
  X, Y: Integer;
  vRGBQuadFace: PRGBQuad;
  vRGBQuadBack: PRGBQuad;
  vTransparence: TRGBQuad;
  vPixelFormatFace: TPixelFormat;
  vPixelFormatBack: TPixelFormat;
begin
  Result := False;
  if not Assigned(mBitmapFace) then Exit;
  if not Assigned(mBitmapBack) then Exit;
  mTransparentColor := ColorToRGB(mTransparentColor);
  vTransparence.rgbBlue := GetBValue(mTransparentColor);
  vTransparence.rgbGreen := GetGValue(mTransparentColor);
  vTransparence.rgbRed := GetRValue(mTransparentColor);
  vTransparence.rgbReserved := 0;
  if not (mBitmapFace.PixelFormat in [pf24bit, pf32bit]) then
    mBitmapFace.PixelFormat := pf24bit;
  vPixelFormatFace := mBitmapFace.PixelFormat;
  if not (mBitmapBack.PixelFormat in [pf24bit, pf32bit]) then
    mBitmapBack.PixelFormat := pf24bit;
  vPixelFormatBack := mBitmapBack.PixelFormat;
  for Y := 0 to mBitmapFace.Height - 1 do begin
    if Y + mOffset.Y < 0 then Continue;
    if Y + mOffset.Y >= mBitmapBack.Height then Continue;
    vRGBQuadFace := mBitmapFace.ScanLine[Y];
    vRGBQuadBack := mBitmapBack.ScanLine[Y + mOffset.Y];
    Inc(Integer(vRGBQuadBack),
      mOffset.X * (SizeOf(TRGBTriple) + Ord(vPixelFormatBack = pf32bit)));
    for X := 0 to mBitmapFace.Width - 1 do begin
      if (DWORD(mTransparentColor) <> RGB(vRGBQuadFace^.rgbRed,
        vRGBQuadFace^.rgbGreen, vRGBQuadFace^.rgbBlue)) and
        (X + mOffset.X>= 0) and
        (X + mOffset.X < mBitmapBack.Width) then
      begin
        vRGBQuadBack^.rgbBlue := vRGBQuadFace^.rgbBlue;
        vRGBQuadBack^.rgbGreen := vRGBQuadFace^.rgbGreen;
        vRGBQuadBack^.rgbRed := vRGBQuadFace^.rgbRed;
      end;
      Inc(Integer(vRGBQuadFace),
        SizeOf(TRGBTriple) + Ord(vPixelFormatFace = pf32bit));
      Inc(Integer(vRGBQuadBack),
        SizeOf(TRGBTriple) + Ord(vPixelFormatBack = pf32bit));
    end;
  end;
  Result := True;
end; { BitmapDraw }

function BitmapMask( // 取得位图的模式图 // 黑白图
  mBitmap: TBitmap; // 源位图
  mTransparentColor: TColor; // 透明颜色
  mForeColor: TColor = clBlack; // 前景色
  mBackColor: TColor = clWhite // 背景色
): Boolean; // 返回处理是否成功
 var
  X: Integer;
  Y: Integer;
  vRGBQuad: PRGBQuad;
  vPixelFormat: TPixelFormat;
begin
  Result := False;
  if not Assigned(mBitmap) then Exit;
  if not (mBitmap.PixelFormat in [pf24bit, pf32bit]) then
    mBitmap.PixelFormat := pf24bit;
  vPixelFormat := mBitmap.PixelFormat;
  mTransparentColor := ColorToRGB(mTransparentColor);
  mForeColor := ColorToRGB(mForeColor);
  mBackColor := ColorToRGB(mBackColor);
  for Y := 0 to mBitmap.Height - 1 do
  begin
    vRGBQuad := mBitmap.ScanLine[Y];
    for X := 0 to mBitmap.Width - 1 do
    begin
      if (DWORD(mTransparentColor) = RGB(vRGBQuad^.rgbRed,
        vRGBQuad^.rgbGreen, vRGBQuad^.rgbBlue)) then
        Move(mBackColor, vRGBQuad^, 3)
      else Move(mForeColor, vRGBQuad^, 3);
      Inc(Integer(vRGBQuad), SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
    end;
  end;
  Result := True;
end; { BitmapMask }

function BitmapReplace( // 替换位图中的颜色
  mBitmap: TBitmap; // 源位图
  mFromColor: TColor; // 历史颜色
  mToColor: TColor // 目标颜色
): Boolean; // 返回替换是否成功
 var
  X: Integer;
  Y: Integer;
  vRGBQuad: PRGBQuad;
  vPixelFormat: TPixelFormat;
begin
  Result := False;
  if not Assigned(mBitmap) then Exit;
  if not (mBitmap.PixelFormat in [pf24bit, pf32bit]) then
    mBitmap.PixelFormat := pf24bit;
  vPixelFormat := mBitmap.PixelFormat;
  mFromColor := ColorToRGB(mFromColor);
  mToColor := ColorToRGB(mToColor);
  for Y := 0 to mBitmap.Height - 1 do
  begin
    vRGBQuad := mBitmap.ScanLine[Y];
    for X := 0 to mBitmap.Width - 1 do
    begin
      if (DWORD(mFromColor) = RGB(vRGBQuad^.rgbRed,
        vRGBQuad^.rgbGreen, vRGBQuad^.rgbBlue)) then
        Move(mToColor, vRGBQuad^, 3);
      Inc(Integer(vRGBQuad), SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
    end;
  end;
  Result := True;
end; { BitmapReplace }

procedure HSL2RGB( // HSL 处理成 RGB
  H, S, L: Integer; // HSL
  var R, G, B: Integer // 三原色
); overload;
var
  Sat, Lum: Double;
begin
  R := 0;
  G := 0;
  B := 0;
  if (H>= 360) or (H < 0) then Exit;
  if (S> 100) or (S < 0) then Exit;
  if (L> 100) or (L < 0) then Exit;
  if H <= 60 then begin
    R := 255;
    G := Round((255 / 60) * H);
    B := 0;
  end else if H <= 120 then begin
    R := Round(255 - (255 / 60) * (H - 60));
    G := 255;
    B := 0;
  end else if H <= 180 then begin
    R := 0;
    G := 255;
    B := Round((255 / 60) * (H - 120));
  end else if H <= 240 then begin
    R := 0;
    G := Round(255 - (255 / 60) * (H - 180));
    B := 255;
  end else if H <= 300 then begin
    R := Round((255 / 60) * (H - 240));
    G := 0;
    B := 255;
  end else if H < 360 then begin
    R := 255;
    G := 0;
    B := Round(255 - (255 / 60) * (H - 300));
  end;

  Sat := Abs((S - 100) / 100);
  R := Round(R - ((R - 128) * Sat));
  G := Round(G - ((G - 128) * Sat));
  B := Round(B - ((B - 128) * Sat));

  Lum := (L - 50) / 50;
  if Lum > 0 then begin
    R := Round(R + ((255 - R) * Lum));
    G := Round(G + ((255 - G) * Lum));
    B := Round(B + ((255 - B) * Lum));
  end else if Lum < 0 then begin
    R := Round(R + (R * Lum));
    G := Round(G + (G * Lum));
    B := Round(B + (B * Lum));
  end;
end; { HSL2RGB }

procedure HSL2RGB( // HSL 处理成 RGB
  H, S, L: Integer; // HSL
  var nRGB: TColor // RGB
); overload;
var
  R, G, B: Integer;
begin
  HSL2RGB(H, S, L, R, G, B);
  nRGB := RGB(R, G, B);
end; { HSL2RGB }

procedure RGB2HSL( // RGB 处理成 HSL
  R, G, B: Integer; // RGB
  var H, S, L: Integer // HSL
); overload;
var
  T: Double;
  vMax, vMin: Double;
  Red, Green, Blue, Hue, Sat, Lum: Double;
begin
  Red := R / 255;
  Green := G / 255;
  Blue := B / 255;
  vMax := Max(Red, Max(Green, Blue));
  vMin := Min(Red, Min(Green, Blue));
  Lum := (vMax + vMin) / 2;
  if vMax = vMin then begin
   Sat := 0;
   Hue := 0;
  end else begin
    if Lum < 0.5 then
      Sat := (vMax - vMin) / (vMax + vMin)
    else Sat := (vMax - vMin) / (2 - vMax - vMin);
    T := vMax - vMin;
    if Red = vMax then
      Hue := (Green - Blue) / T
    else if Green = vMax then
      Hue := 2 + (Blue - Red) / T
    else Hue := 4.0 + (Red - Green) / T;
    Hue := Hue / 6;
    if Hue < 0 then Hue := Hue + 1;
  end;
  H := Round(Hue * 360);
  S := Round(Sat * 100);
  L := Round(Lum * 100);
end; { RGB2HSL }

procedure RGB2HSL( // RGB 处理成 HSL
  mRGB: TColor; // RGB
  var H, S, L: Integer // HSL
); overload;
begin
  mRGB := ColorToRGB(mRGB);
  RGB2HSL(GetRValue(mRGB), GetGValue(mRGB), GetBValue(mRGB), H, S, L);
end; { RGB2HSL }

function HSLOffset( // HSL 偏移
  mRGB: TColor; // RGB
  mOffsetH, mOffsetS, mOffsetL: Integer // HSL
): TColor; // 返回偏移后的颜色
 var
  H, S, L: Integer;
begin
  RGB2HSL(mRGB, H, S, L);
  H := H + mOffsetH;
  S := S + mOffsetS;
  L := L + mOffsetL;
  HSL2RGB(H, S, L, Result);
end; { HSLOffset }

function BitmapGridPoint( // 位图网点处理
  mBitmap: TBitmap; // 目标位图
  mOffset: Boolean; // 错位处理
  mTransparentColor: TColor // 透明颜色
): Boolean; // 返回处理是否成功
 var
  X, Y: Integer;
  vRGBQuad: PRGBQuad;
  vTransparent: RGBQuad;
  vPixelFormat: TPixelFormat;
begin
  Result := False;
  if not Assigned(mBitmap) then Exit;
  if not (mBitmap.PixelFormat in [pf24bit, pf32bit]) then
    mBitmap.PixelFormat := pf24bit;
  vPixelFormat := mBitmap.PixelFormat;
  mTransparentColor := ColorToRGB(mTransparentColor);
  vTransparent.rgbBlue := GetBValue(mTransparentColor);
  vTransparent.rgbRed := GetRValue(mTransparentColor);
  vTransparent.rgbGreen := GetGValue(mTransparentColor);

  for Y := 0 to mBitmap.Height - 1 do
  begin
    vRGBQuad := mBitmap.ScanLine[Y];
    for X := 0 to mBitmap.Width - 1 do
    begin
      if Odd(X) xor Odd(Y) xor mOffset then
        Move(vTransparent, vRGBQuad^,
          SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
      Inc(Integer(vRGBQuad), SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
    end;
  end;
  Result := True;
end; { BitmapGridPoint }

function BitmapBlur( // 位图模糊处理
  mBitmap: TBitmap; // 目标位图
  mScale: Real; // 模糊度
  mTransparentColor: TColor // 透明不处理的颜色
): Boolean; // 返回处理是否成功
 var
  X, Y: Integer;
  C: Real;
  vRGBQuadCenter,
  vRGBQuadRight, vRGBQuadLeft,
  vRGBQuadTop, vRGBQuadBottom,
  vRGBQuadLeftTop, vRGBQuadLeftBottom,
  vRGBQuadRightTop, vRGBQuadRightBottom: PRGBQuad;
  vRGBQuad: PRGBQuad;
  vPixelFormat: TPixelFormat;
  vBitmap: TBitmap;
begin
  Result := False;
  if not Assigned(mBitmap) then Exit;
  if not (mBitmap.PixelFormat in [pf24bit, pf32bit]) then
    mBitmap.PixelFormat := pf24bit;
  vPixelFormat := mBitmap.PixelFormat;
  vBitmap := TBitmap.Create;
  try
    vBitmap.Assign(mBitmap);
    for Y := 0 to mBitmap.Height - 1 do
    begin
      vRGBQuadCenter := vBitmap.ScanLine[Y];
      vRGBQuad := mBitmap.ScanLine[Y];
      if Y > 0 then
        vRGBQuadTop := vBitmap.ScanLine[Y - 1]
      else vRGBQuadTop := vRGBQuadCenter;
      if Y < mBitmap.Height - 1 then
        vRGBQuadBottom := vBitmap.ScanLine[Y + 1]
      else vRGBQuadBottom := vRGBQuadCenter;
      for X := 0 to mBitmap.Width - 1 do
      begin
        if DWORD(mTransparentColor) <> RGB(vRGBQuad^.rgbRed,
           vRGBQuad^.rgbGreen, vRGBQuad^.rgbBlue) then
        begin
          vRGBQuadLeft := vRGBQuadCenter;
          if X > 0 then Dec(Integer(vRGBQuadLeft),
            SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
          vRGBQuadRight := vRGBQuadCenter;
          if X < mBitmap.Width - 1 then Inc(Integer(vRGBQuadRight),
            SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));

          vRGBQuadLeftTop := vRGBQuadTop;
          if X > 0 then Dec(Integer(vRGBQuadLeftTop),
            SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
          vRGBQuadRightTop := vRGBQuadTop;
          if X < mBitmap.Width - 1 then Inc(Integer(vRGBQuadRightTop),
            SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));

          vRGBQuadLeftBottom := vRGBQuadBottom;
          if X > 0 then Dec(Integer(vRGBQuadLeftBottom),
            SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
          vRGBQuadRightBottom := vRGBQuadBottom;
          if X < mBitmap.Width - 1 then Inc(Integer(vRGBQuadRightBottom),
            SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));

          C := (vRGBQuadLeftTop^.rgbRed + vRGBQuadLeftBottom^.rgbRed +
            vRGBQuadRightTop^.rgbRed + vRGBQuadRightBottom^.rgbRed +
            vRGBQuadCenter^.rgbRed * mScale + vRGBQuadRight^.rgbRed +
            vRGBQuadLeft^.rgbRed + vRGBQuadTop^.rgbRed +
            vRGBQuadBottom^.rgbRed);
          vRGBQuad^.rgbRed := Max(0, Min(255, Round(C / 9)));

          C := (vRGBQuadLeftTop^.rgbBlue + vRGBQuadLeftBottom^.rgbBlue +
            vRGBQuadRightTop^.rgbBlue + vRGBQuadRightBottom^.rgbBlue +
            vRGBQuadCenter^.rgbBlue * mScale + vRGBQuadRight^.rgbBlue +
            vRGBQuadLeft^.rgbBlue + vRGBQuadTop^.rgbBlue +
            vRGBQuadBottom^.rgbBlue);
          vRGBQuad^.rgbBlue := Max(0, Min(255, Round(C / 9)));

          C := (vRGBQuadLeftTop^.rgbGreen + vRGBQuadLeftBottom^.rgbGreen +
            vRGBQuadRightTop^.rgbGreen + vRGBQuadRightBottom^.rgbGreen +
            vRGBQuadCenter^.rgbGreen * mScale + vRGBQuadRight^.rgbGreen +
            vRGBQuadLeft^.rgbGreen + vRGBQuadTop^.rgbGreen +
            vRGBQuadBottom^.rgbGreen);
          vRGBQuad^.rgbGreen := Max(0, Min(255, Round(C / 9)));
        end;
        Inc(Integer(vRGBQuad),
          SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
        Inc(Integer(vRGBQuadTop),
          SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
        Inc(Integer(vRGBQuadBottom),
          SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
        Inc(Integer(vRGBQuadCenter),
          SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
      end;
    end;
  finally
    vBitmap.Free;
  end;
  Result := True;
end; { BitmapBlur }

function BitmapRotateHorizontal( // 将位图水平旋转
  mSource: TBitmap; // 源位图
  mDest: TBitmap // 目标位图
): Boolean; overload; // 返回处理是否成功
 var
  I: Integer;
  J: Integer;
  A, B: PRGBQuad;
  vPixelFormat: TPixelFormat;
begin
  Result := False;
  if not (Assigned(mSource) and Assigned(mDest)) then Exit;
  if not (mSource.PixelFormat in [pf24bit, pf32bit]) then
    mSource.PixelFormat := pf24bit;
  vPixelFormat := mSource.PixelFormat;
  mDest.Assign(mSource);
  mDest.Width := mSource.Width;
  mDest.Height := mSource.Height;

  for J := 0 to mSource.Height - 1 do
  begin
    A := mSource.ScanLine[J];
    B := mDest.ScanLine[J];
    Inc(Integer(B),
      (SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit)) * mSource.Width);
    for I := 0 to mSource.Width - 1 do
    begin
      Dec(Integer(B), SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
      Move(A^, B^, SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
      Inc(Integer(A), SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
    end;
  end;
  Result := True;
end; { BitmapRotateHorizontal }

function BitmapRotateVertical( // 将位图垂直旋转
  mSource: TBitmap; // 源位图
  mDest: TBitmap // 目标位图
): Boolean; overload; // 返回处理是否成功
 var
  I: Integer;
  J: Integer;
  A, B: PRGBQuad;
  vPixelFormat: TPixelFormat;
begin
  Result := False;
  if not (Assigned(mSource) and Assigned(mDest)) then Exit;
  if not (mSource.PixelFormat in [pf24bit, pf32bit]) then
    mSource.PixelFormat := pf24bit;
  vPixelFormat := mSource.PixelFormat;
  mDest.Assign(mSource);
  mDest.Width := mSource.Width;
  mDest.Height := mSource.Height;

  for J := 0 to mSource.Height - 1 do
  begin
    A := mSource.ScanLine[J];
    B := mDest.ScanLine[mSource.Height - J - 1];
    for I := 0 to mSource.Width - 1 do
    begin
      Move(A^, B^, SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
      Inc(Integer(A), SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
      Inc(Integer(B), SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
    end;
  end;
  Result := True;
end; { BitmapRotateVertical }

function BitmapRotate90( // 将位图旋转 90 度
  mSource: TBitmap; // 源位图
  mDest: TBitmap // 目标位图
): Boolean; overload; // 返回处理是否成功
 var
  I: Integer;
  J: Integer;
  A, B: PRGBQuad;
  vPixelFormat: TPixelFormat;
begin
  Result := False;
  if not (Assigned(mSource) and Assigned(mDest)) then Exit;
  if not (mSource.PixelFormat in [pf24bit, pf32bit]) then
    mSource.PixelFormat := pf24bit;
  vPixelFormat := mSource.PixelFormat;
  mDest.Assign(mSource);
  mDest.Width := mSource.Height;
  mDest.Height := mSource.Width;
  for J := 0 to mSource.Height - 1 do
  begin
    A := mSource.ScanLine[J];
    for I := 0 to mSource.Width - 1 do
    begin
      B := mDest.ScanLine[mSource.Width - I - 1];
      Inc(Integer(B),
        (SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit)) * J);
      Move(A^, B^, SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
      Inc(Integer(A), SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
    end;
  end;
  Result := True;
end; { BitmapRotate90 }

function BitmapRotate180( // 将位图旋转 18 度
  mSource: TBitmap; // 源位图
  mDest: TBitmap // 目标位图
): Boolean; overload; // 返回处理是否成功
 var
  I: Integer;
  J: Integer;
  A, B: PRGBQuad;
  vPixelFormat: TPixelFormat;
begin
  Result := False;
  if not (Assigned(mSource) and Assigned(mDest)) then Exit;
  if not (mSource.PixelFormat in [pf24bit, pf32bit]) then
    mSource.PixelFormat := pf24bit;
  vPixelFormat := mSource.PixelFormat;
  mDest.Assign(mSource);
  mDest.Width := mSource.Width;
  mDest.Height := mSource.Height;
  for J := 0 to mSource.Height - 1 do
  begin
    A := mSource.ScanLine[J];
    B := mDest.ScanLine[mSource.Height - J - 1];
    Inc(Integer(B),
      (SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit)) * mSource.Width);
    for I := 0 to mSource.Width - 1 do
    begin
      Dec(Integer(B), SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
      Move(A^, B^, SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
      Inc(Integer(A), SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
    end;
  end;
  Result := True;
end; { BitmapRotate180 }

function BitmapRotate270( // 将位图旋转 90 度
  mSource: TBitmap; // 源位图
  mDest: TBitmap // 目标位图
): Boolean; overload; // 返回处理是否成功
 var
  I: Integer;
  J: Integer;
  A, B: PRGBQuad;
  vPixelFormat: TPixelFormat;
begin
  Result := False;
  if not (Assigned(mSource) and Assigned(mDest)) then Exit;
  if not (mSource.PixelFormat in [pf24bit, pf32bit]) then
    mSource.PixelFormat := pf24bit;
  vPixelFormat := mSource.PixelFormat;
  mDest.Assign(mSource);
  mDest.Width := mSource.Height;
  mDest.Height := mSource.Width;
  for J := 0 to mSource.Height - 1 do
  begin
    A := mSource.ScanLine[J];
    for I := 0 to mSource.Width - 1 do
    begin
      B := mDest.Scanline[I];
      Inc(Integer(B),
        (SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit)) *
        (mSource.Height - J - 1));
      Move(A^, B^, SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
      Inc(Integer(A), SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
    end;
  end;
end; { BitmapRotate270 }

function BitmapTransparent( // 位图透明绘制
  mBitmapBack: TBitmap; // 背景图
  mBitmapFace: TBitmap; // 绘制图
  mTransparentColor: TColor; // 透明不处理的颜色
  mScale: Byte; // 程度 0~255
  mOffset: TPoint // 绘制的偏移坐标
): Boolean; // 返回处理是否成功
 var
  X, Y: Integer;
  vRGBQuadFace: PRGBQuad;
  vRGBQuadBack: PRGBQuad;
  vPixelFormatFace: TPixelFormat;
  vPixelFormatBack: TPixelFormat;
begin
  Result := False;
  if not Assigned(mBitmapFace) then Exit;
  if not Assigned(mBitmapBack) then Exit;
  if not (mBitmapFace.PixelFormat in [pf24bit, pf32bit]) then
    mBitmapFace.PixelFormat := pf24bit;
  vPixelFormatFace := mBitmapFace.PixelFormat;
  if not (mBitmapBack.PixelFormat in [pf24bit, pf32bit]) then
    mBitmapBack.PixelFormat := pf24bit;
  vPixelFormatBack := mBitmapBack.PixelFormat;
  mTransparentColor := ColorToRGB(mTransparentColor);
  for Y := 0 to mBitmapFace.Height - 1 do
  begin
    if Y + mOffset.Y < 0 then Continue;
    if Y + mOffset.Y >= mBitmapBack.Height then Continue;
    vRGBQuadFace := mBitmapFace.ScanLine[Y];
    vRGBQuadBack := mBitmapBack.ScanLine[Y + mOffset.Y];
    Inc(Integer(vRGBQuadBack),
      mOffset.X * (SizeOf(TRGBTriple) + Ord(vPixelFormatBack = pf32bit)));
    for X := 0 to mBitmapFace.Width - 1 do
    begin
      if (DWORD(mTransparentColor) <> RGB(vRGBQuadFace^.rgbRed,
        vRGBQuadFace^.rgbGreen, vRGBQuadFace^.rgbBlue)) and
        (X + mOffset.X>= 0) and
        (X + mOffset.X < mBitmapBack.Width) then
      begin
        vRGBQuadBack^.rgbBlue :=
          (vRGBQuadBack^.rgbBlue * mScale +
            vRGBQuadFace^.rgbBlue * (255 - mScale)) shr 8 and $FFFFFF;
        vRGBQuadBack^.rgbRed :=
          (vRGBQuadBack^.rgbRed * mScale +
            vRGBQuadFace^.rgbRed * (255 - mScale)) shr 8 and $FFFFFF;
        vRGBQuadBack^.rgbGreen :=
          (vRGBQuadBack^.rgbGreen * mScale +
            vRGBQuadFace^.rgbGreen * (255 - mScale)) shr 8 and $FFFFFF;
      end;
      Inc(Integer(vRGBQuadFace),
        SizeOf(TRGBTriple) + Ord(vPixelFormatFace = pf32bit));
      Inc(Integer(vRGBQuadBack),
        SizeOf(TRGBTriple) + Ord(vPixelFormatBack = pf32bit));
    end;
  end;
  Result := True;
end; { BitmapTransparent }

function BitmapRGBScale( // 位图颜色调配
  mBitmap: TBitmap; // 目标位图
  R, G, B: Integer; // 颜色变化参数
  mTransparentColor: TColor // 透明不处理的颜色
): Boolean; // 返回处理是否成功
 var
  X, Y: Integer;
  I: Byte;
  vColorTable: array[0..255] of TRGBTriple;
  vRGBQuad: PRGBQuad;
  vPixelFormat: TPixelFormat;
begin
  Result := False;
  if not Assigned(mBitmap) then Exit;
  if not (mBitmap.PixelFormat in [pf24bit, pf32bit]) then
    mBitmap.PixelFormat := pf24bit;
  vPixelFormat := mBitmap.PixelFormat;
  for I := 0 to 255 do
  begin
    vColorTable[I].rgbtRed := Max(Min(255, I + R), 0);
    vColorTable[I].rgbtGreen := Max(Min(255, I + G), 0);
    vColorTable[I].rgbtBlue := Max(Min(255, I + B), 0);
  end;
  for Y := 0 to mBitmap.Height - 1 do
  begin
    vRGBQuad := mBitmap.ScanLine[Y];
    for X := 0 to mBitmap.Width - 1 do
    begin
      if (DWORD(mTransparentColor) <> RGB(vRGBQuad^.rgbRed,
        vRGBQuad^.rgbGreen, vRGBQuad^.rgbBlue)) then
      begin
        vRGBQuad^.rgbRed := vColorTable[vRGBQuad^.rgbRed].rgbtRed;
        vRGBQuad^.rgbGreen := vColorTable[vRGBQuad^.rgbGreen].rgbtGreen;
        vRGBQuad^.rgbBlue := vColorTable[vRGBQuad^.rgbBlue].rgbtBlue;
      end;
      Inc(Integer(vRGBQuad), SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
    end;
  end;
  Result := True;
end; { BitmapRGBScale }

function BmpToIco( // 位图处理成图标
  mBitmap: TBitmap; // 位图
  mIcon: TIcon; // 图标
  mSize32: Boolean = True; // 是否为大图标
  mTransparentColor: TColor = clDefault; // 透明颜色 默认为左下角
  mHotspotX: Integer = 0; // 热点 X
  mHotspotY: Integer = 0 // 热点 Y
): Boolean; // 返回处理是否成功
 var
  vIconWidth: Integer;
  vIconHeight: Integer;
  vBitmapMask: TBitmap;
  vBitmapColor: TBitmap;
  vIconInfo: TIconInfo;
begin
  Result := True;
  if mSize32 then begin
    vIconWidth := 32;
    vIconHeight := 32;
  end else begin
    vIconWidth := 16;
    vIconHeight := 16;
  end;

  vBitmapMask := TBitmap.Create;
  vBitmapColor := TBitmap.Create;
  try
    vBitmapMask.Width := vIconWidth;
    vBitmapMask.Height := vIconHeight;
    SetStretchBltMode(vBitmapColor.Canvas.Handle, COLORONCOLOR);                //2006-11-17 ZswangY37 No.1
    if mTransparentColor = clNone then
    begin
      vBitmapMask.Canvas.Brush.Color := clWhite;
      vBitmapMask.Canvas.FillRect(vBitmapMask.Canvas.ClipRect);
    end else
    begin
      StretchBlt(vBitmapMask.Canvas.Handle, 0, 0, vIconWidth, vIconHeight,
        mBitmap.Canvas.Handle, 0, 0, mBitmap.Width, mBitmap.Height, SRCCOPY);
      if mTransparentColor = clDefault then
        mTransparentColor := vBitmapMask.Canvas.Pixels[0, vBitmapMask.Height - 1];
      BitmapMask(vBitmapMask, mTransparentColor);
    end;
    vBitmapColor.Width := vIconWidth;
    vBitmapColor.Height := vIconHeight;
    StretchBlt(vBitmapColor.Canvas.Handle, 0, 0, vIconWidth, vIconHeight,
      mBitmap.Canvas.Handle, 0, 0, mBitmap.Width, mBitmap.Height, SRCCOPY);
    if mTransparentColor <> clNone then
      BitmapReplace(vBitmapColor, mTransparentColor, clBlack);

    vIconInfo.fIcon := True;
    vIconInfo.xHotspot := mHotspotX;
    vIconInfo.yHotspot := mHotspotY;
    vIconInfo.hbmMask := vBitmapMask.Handle;
    vIconInfo.hbmColor := vBitmapColor.Handle;
    mIcon.Handle := CreateIconIndirect(vIconInfo);
  except
    Result := False;
  end;
  vBitmapMask.Free;
  vBitmapColor.Free;
end; { BmpToIco }

function IcoToBmp( // 图标处理成位图
  mIcon: TIcon; // 图标
  mBitmap: TBitmap // 位图
): Boolean; // 返回处理是否成功
 var
  vIconWidth: Integer;
  vIconHeight: Integer;
begin
  Result := True;
  try
    vIconWidth := mIcon.Width;
    vIconHeight := mIcon.Height;
    mBitmap.Width := vIconWidth;
    mBitmap.Height := vIconHeight;
    mBitmap.Canvas.FillRect(Rect(0, 0, vIconWidth, vIconHeight));
    mBitmap.Canvas.Draw(0, 0, mIcon);
  except
    Result := False;
  end;
end; { IcoToBmp }

function JpegToBmp( // Jpg 图片处理成位图
  mJPEGImage: TJPEGImage; // Jpg 图片
  mBitmap: TBitmap // 位图
): Boolean; // 返回处理是否成功
 begin
  Result := True;
  try
    mBitmap.Assign(mJPEGImage);
  except
    Result := False;
  end;
end; { JpegToBmp }

function BmpToJpeg( // 位图处理成 Jpg 图片
  mBitmap: TBitmap; // 位图
  mJPEGImage: TJPEGImage; // Jpg 图片
  mCompressionQuality: Integer = 75 // 压缩率
): Boolean; // 返回处理是否成功
 begin
  Result := True;
  try
    mJPEGImage.Assign(mBitmap);
    mJPEGImage.CompressionQuality := mCompressionQuality;
    mJPEGImage.Compress;
  except
    Result := False;
  end;
end; { BmpToJpeg }

function BitmapGrayScale2( // 位图灰度处理
  mBitmap: TBitmap; // 位图
  mTransparentColor: TColor // 透明不处理的颜色
): Boolean; // 返回处理是否成功
 var
  X: Integer;
  Y: Integer;
  vRGBQuad: PRGBQuad;
  vPixelFormat: TPixelFormat;
begin
  Result := False;
  if not Assigned(mBitmap) then Exit;
  if not (mBitmap.PixelFormat in [pf24bit, pf32bit]) then
    mBitmap.PixelFormat := pf24bit;
  vPixelFormat := mBitmap.PixelFormat;
  mTransparentColor := ColorToRGB(mTransparentColor);
  for Y := 0 to mBitmap.Height - 1 do
  begin
    vRGBQuad := mBitmap.ScanLine[Y];
    for X := 0 to mBitmap.Width - 1 do
    begin
      if (DWORD(mTransparentColor) <> RGB(vRGBQuad^.rgbRed,
        vRGBQuad^.rgbGreen, vRGBQuad^.rgbBlue)) then
      begin
        vRGBQuad^.rgbRed := (77 * vRGBQuad^.rgbRed +
          151 * vRGBQuad^.rgbGreen + 28 * vRGBQuad^.rgbBlue) shr 8;
        vRGBQuad^.rgbGreen := vRGBQuad^.rgbRed;
        vRGBQuad^.rgbBlue := vRGBQuad^.rgbRed;
      end;
      Inc(Integer(vRGBQuad), SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
    end;
  end;
  Result := True;
end; { BitmapGrayScale }

function BitmapReverseRGB( // 颠倒位图的 RGB 值
  mBitmap: TBitmap // 位图
): Boolean; // 返回处理是否成功
 var
  X: Integer;
  Y: Integer;
  T: Byte;
  vRGBQuad: PRGBQuad;
  vPixelFormat: TPixelFormat;
begin
  Result := False;
  if not Assigned(mBitmap) then Exit;
  if mBitmap.PixelFormat in [pf1bit] then Exit; // 单色没有颠倒的必要
   if not (mBitmap.PixelFormat in [pf24bit, pf32bit]) then
    mBitmap.PixelFormat := pf24bit;
  vPixelFormat := mBitmap.PixelFormat;
  for Y := 0 to mBitmap.Height - 1 do
  begin
    vRGBQuad := mBitmap.ScanLine[Y];
    for X := 0 to mBitmap.Width - 1 do
    begin
      T := vRGBQuad^.rgbRed;
      vRGBQuad^.rgbRed := vRGBQuad^.rgbBlue;
      vRGBQuad^.rgbBlue := T;
      Inc(Integer(vRGBQuad), SizeOf(TRGBTriple) + Ord(vPixelFormat = pf32bit));
    end;
  end;
  Result := True;
end; { BitmapReverseRGB }

function CompareColor( // 比较两个颜色的差别
  mColorA, mColorB: TColor
): Integer; overload;
begin
  mColorA := ColorToRGB(mColorA);
  mColorB := ColorToRGB(mColorB);
  Result := Abs(GetRValue(mColorA) - GetRValue(mColorB)) +
    Abs(GetGValue(mColorA) - GetGValue(mColorB)) +
    Abs(GetBValue(mColorA) - GetBValue(mColorB));
  Result := Result div 3;
end; { CompareColor }

function CompareColor(  // 比较两个颜色的差别
  mColorA, mColorB: TRGBTriple
): Integer; overload;
begin
  Result := Abs(mColorA.rgbtRed - mColorB.rgbtRed) +
    Abs(mColorA.rgbtBlue - mColorB.rgbtBlue) +
    Abs(mColorA.rgbtGreen - mColorB.rgbtGreen);
  Result := Result div 3;
end; { CompareColor }

function GraphicToRGN( // 得到图片的不规则区域
  mGraphic: TGraphic; // 图片
  mTransparentColor: TColor = clBlack; // 透明色
  mSpace: Integer = 0 // 颜色容余度
): HRGN; // 返回图片的不规则区域句柄
 const
  cAllocRect = $FF; // 预留开辟区域的数量
  cHeaderSize = SizeOf(TRgnDataHeader);
  cRectSize = SizeOf(TRect);
var
  vRGN: HRGN;
  vRgnData: PRgnData;
  X, Y, X0: Integer;
  vScanLinePtr: Pointer;
  vScanLineInc: Integer;
  vMaxRects: Cardinal;
  vTransparent: TRGBTriple;
  vBitmap: TBitmap;
begin
  Result := 0;
  if not Assigned(mGraphic) then Exit;
  if mGraphic.Height <= 0 then Exit;
  if mGraphic.Width <= 0 then Exit;
  mTransparentColor := ColorToRGB(mTransparentColor);
  vTransparent.rgbtBlue := GetBValue(mTransparentColor);
  vTransparent.rgbtGreen := GetGValue(mTransparentColor);
  vTransparent.rgbtRed := GetRValue(mTransparentColor);
  vMaxRects := cAllocRect;
  GetMem(vRgnData, cHeaderSize + cRectSize * vMaxRects);
  if mGraphic is TBitmap then
    vBitmap := mGraphic as TBitmap
  else vBitmap := TBitmap.Create;
  with vBitmap do try
    PixelFormat := pf24bit;
    if not (mGraphic is TBitmap) then
    begin
      Width := mGraphic.Width;
      Height := mGraphic.Height;
      Canvas.Draw(0, 0, mGraphic);
    end;

    with vRgnData^.rdh do
    begin
      dwSize := cHeaderSize;
      iType := RDH_RECTANGLES;
      nCount := 0;
      nRgnSize := 0;
      SetRect(rcBound, MAXLONG, MAXLONG, 0, 0);
    end;
    vScanLinePtr := ScanLine[0];
    if Height > 1 then
      vScanLineInc := Integer(ScanLine[1]) - Integer(vScanLinePtr)              //2007-03-22 ZswangY37 No.1
    else vScanLineInc := Width * 3;
    for Y := 0 to Height - 1 do
    begin
      X := 0;
      while X < Width do
      begin
        X0 := X;
        while X < Width do
        begin
          if CompareColor(
            PRGBTriple(Integer(vScanLinePtr) + X * SizeOf(TRGBTriple))^,
            vTransparent) <= mSpace then
            Break;
          Inc(X);
        end;
        if X > X0 then
        begin
          if vRgnData^.rdh.nCount >= vMaxRects then
          begin
            Inc(vMaxRects, cAllocRect);
            ReallocMem(vRgnData, cHeaderSize + cRectSize * vMaxRects);
          end;
          with vRgnData^.rdh do
          begin
            SetRect(PRect(DWORD(@vRgnData^.Buffer) + nCount * cRectSize)^,
              X0, Y, X, Y + 1);
            if X0 < rcBound.Left then rcBound.Left := X0;
            if Y < rcBound.Top then rcBound.Top := Y;
            if X > rcBound.Right then rcBound.Right := X;
            if Y + 1 > rcBound.Bottom then rcBound.Bottom := Y + 1;
            Inc(nCount);
          end;
        end;
        if vRgnData^.rdh.nCount = 2000 then
        begin
          vRGN := ExtCreateRegion(nil,
            cHeaderSize + cRectSize * vMaxRects, vRgnData^);
          if Result > 0 then
          begin
            CombineRgn(Result, Result, vRGN, RGN_OR);
            DeleteObject(vRGN);
          end else Result := vRGN;
          vRgnData^.rdh.nCount := 0;
          SetRect(vRgnData^.rdh.rcBound, MAXLONG, MAXLONG, 0, 0);
        end;
        Inc(X);
      end;
      Inc(Integer(vScanLinePtr), vScanLineInc);
    end;
    vRGN := ExtCreateRegion(nil,
      cHeaderSize + cRectSize * vMaxRects, vRgnData^);
    if Result > 0 then
    begin
      CombineRgn(Result, Result, vRGN, RGN_OR);
      DeleteObject(vRGN);
    end else Result := vRGN;
  finally
    FreeMem(vRgnData, cHeaderSize + cRectSize * vMaxRects);
    if not (mGraphic is TBitmap) then vBitmap.Free;
  end;
end; { GraphicToRGN }

function BitmapDrawHorizontal( // 位图水平拉伸绘制
  mBitmap: TBitmap; // 源位图
  mCanvas: TCanvas; // 绘制的画布
  mLeft: Integer; // 绘制的左边界
  mTop: Integer; // 绘制的上边界
  mWidth: Integer; // 绘制的宽度
  mCenterX: Integer // 位图拉伸的中心 X 坐标
): Boolean; // 返回绘制是否成功
 begin
  Result := False;
  if not Assigned(mBitmap) then Exit;
  if not Assigned(mCanvas) then Exit;
  StretchBlt(mCanvas.Handle, mLeft, mTop, mCenterX, mBitmap.Height,
    mBitmap.Canvas.Handle, 0, 0, mCenterX, mBitmap.Height, SRCCOPY); // 左边

  StretchBlt(mCanvas.Handle, mLeft + mWidth - mBitmap.Width + mCenterX, mTop,
    mBitmap.Width - mCenterX, mBitmap.Height, mBitmap.Canvas.Handle,
    mCenterX, 0, mBitmap.Width - mCenterX, mBitmap.Height, SRCCOPY); // 右边

  StretchBlt(mCanvas.Handle, mLeft + mCenterX, mTop, mWidth - mBitmap.Width,
    mBitmap.Height, mBitmap.Canvas.Handle,
    mCenterX, 0, 1, mBitmap.Height, SRCCOPY); // 中间拉伸
  Result := True;
end; { BitmapDrawHorizontal }

function BitmapDrawVertical( // 位图垂直拉伸绘制
  mBitmap: TBitmap; // 源位图
  mCanvas: TCanvas; // 绘制的画布
  mLeft: Integer; // 绘制的左边界
  mTop: Integer; // 绘制的上边界
  mHeight: Integer; // 绘制的宽度
  mCenterY: Integer // 位图拉伸的中心 X 坐标
): Boolean; // 返回绘制是否成功
 begin
  Result := False;
  if not Assigned(mBitmap) then Exit;
  if not Assigned(mCanvas) then Exit;
  StretchBlt(mCanvas.Handle, mLeft, mTop, mBitmap.Width, mCenterY,
    mBitmap.Canvas.Handle, 0, 0, mBitmap.Width, mCenterY, SRCCOPY); // 上边

  StretchBlt(mCanvas.Handle, mLeft, mTop + mHeight - mBitmap.Height + mCenterY,
    mBitmap.Width, mBitmap.Height - mCenterY, mBitmap.Canvas.Handle,
    0, mCenterY, mBitmap.Width, mBitmap.Height - mCenterY, SRCCOPY); // 下边

  StretchBlt(mCanvas.Handle, mLeft, mTop + mCenterY,  mBitmap.Width,
    mHeight - mBitmap.Height, mBitmap.Canvas.Handle,
    0, mCenterY, mBitmap.Width, 1, SRCCOPY); // 中间拉伸
  Result := True;
end; { BitmapDrawVertical }

function CircleCursor( // 创建一个圆形的鼠标图案
  AColor: TColor; // 指定圆形的颜色
  ASize: Integer // 指定圆形的直径
): HCursor; // 返回鼠标图案句柄
 var
  vBitmapMask: TBitmap;
  vBitmapColor: TBitmap;
  vIconInfo: TIconInfo;
begin
  vBitmapMask := TBitmap.Create;
  vBitmapColor := TBitmap.Create;
  try
    vBitmapMask.PixelFormat := pf24bit;
    vBitmapColor.PixelFormat := pf24bit;

    vBitmapMask.Width := 32;
    vBitmapMask.Height := 32;
    vBitmapMask.Canvas.Brush.Color := clWhite;
    vBitmapMask.Canvas.FillRect(Rect(0, 0, 32, 32));
    vBitmapMask.Canvas.Brush.Color := clBlack;
    vBitmapMask.Canvas.Ellipse(0, 0, ASize, ASize);

    vBitmapColor.Width := 32;
    vBitmapColor.Height := 32;
    vBitmapColor.Canvas.Brush.Color := clBlack;
    vBitmapColor.Canvas.FillRect(Rect(0, 0, 32, 32));
    vBitmapColor.Canvas.Pen.Color := AColor;
    vBitmapColor.Canvas.Brush.Color := AColor;
    vBitmapColor.Canvas.Ellipse(0, 0, ASize, ASize);

    vIconInfo.fIcon := True;
    vIconInfo.xHotspot := ASize div 2;
    vIconInfo.yHotspot := ASize div 2;
    vIconInfo.hbmMask := vBitmapMask.Handle;
    vIconInfo.hbmColor := vBitmapColor.Handle;
    Result := CreateIconIndirect(vIconInfo);
  finally
    vBitmapMask.Free;
    vBitmapColor.Free;
  end;
end; { CircleCursor }

function PointToPoint( // 计算点到点的距离
  mPointA, mPointB: TPoint // 两个点的坐标
): Double; // 返回点与点间的距离
 begin
  Result := Sqrt(Sqr(mPointA.X - mPointB.X) + Sqr(mPointA.Y - mPointB.Y));
end; { PointDistance }

function PointToAngle( // 计算坐标的角度
  mOrigin: TPoint; // 原坐标
  mPoint: TPoint; // 计算坐标
  mEccentricity: Double = 1 // 离心率 a/ b
): Double; // 返回该坐标相对原坐标的角度 // Pi 为单位
 begin
  if mPoint.X = mOrigin.X then
    if mPoint.Y > mOrigin.Y then
      Result := Pi * 0.5
    else Result := Pi * 1.5
  else if mPoint.Y = mOrigin.Y then
    if mPoint.X > mOrigin.X then
      Result := 0
    else Result := Pi
  else
  begin
    Result := ArcTan((mOrigin.Y - mPoint.Y) / (mOrigin.X - mPoint.X) * mEccentricity);
    if (mPoint.X < mOrigin.X) and (mPoint.Y> mOrigin.Y) then
      Result := Result + Pi
    else if (mPoint.X < mOrigin.X) and (mPoint.Y < mOrigin.Y) then
      Result := Result + Pi
    else if (mPoint.X> mOrigin.X) and (mPoint.Y < mOrigin.Y) then
      Result := Result + 2 * Pi;
  end;
end; { PointToAngle }

end.

