unit fmJPGDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg;

type
  TJPGDemoForm = class(TForm)
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TJPGDemoForm;

implementation

{$R *.dfm}

uses
  gdipapi, gdipobj, gdiputil;

function BmpToGPBmp(bmp: TBitmap; alpha: Byte): TGPBitmap;
var
  x, y: Integer;
  p0, p1: pbytearray;
  isXPIcon: boolean;
  ScanLines: array of Byte;
  W, H: integer;
  Data: TBitmapData;
  CurrentX: integer;
begin
  bmp.PixelFormat := pf32bit;
  try
    SetLength(ScanLines, bmp.Height * bmp.Width * 4);
    for y := 0 to bmp.Height - 1 do
    begin
      p0 := bmp.scanline[y];
      CurrentX := bmp.Width * y * 4;
      for x := 0 to bmp.Width - 1 do
      begin
        ScanLines[CurrentX + x * 4] := p0[x * 4];
        ScanLines[CurrentX + x * 4 + 1] := p0[x * 4 + 1];
        ScanLines[CurrentX + x * 4 + 2] := p0[x * 4 + 2];
        //设置Alpha
        ScanLines[CurrentX + x * 4 + 3] := alpha; // p0[x * 4 + 3];
      end;
    end;

    Result := TGPBitmap.Create(bmp.Width, bmp.Height); //(bmp.Handle, bmp.Palette); //  ;//
    W := Result.GetWidth;
    H := Result.GetHeight;
    Result.LockBits(MakeRect(0, 0, W, H), ImageLockModeRead or ImageLockModeWrite, PixelFormat32bppARGB, Data);
    Move(ScanLines[0], Data.Scan0^, Data.Height * Data.Stride);
    Result.UnlockBits(Data);
  finally
    SetLength(ScanLines, 0);
  end;
end;

procedure ToBitmap(fnames: string);
var
  Graphics: TGPGraphics;
  Image, Thumbnail: TGPImage;
  TGPbmp: TGPBitmap;
  bmp: TBitmap;
  hb: HBitmap;
begin
   //打开源图片文件,可以是JPEG、BMP、GIF、TIFF、PNG
  Image := TGPImage.Create(fnames);
   //创建一个120*120的TGPBitmap,作为绘制缩略图的容器
  TGPbmp := TGPBitmap.Create(120, 120, PixelFormat32bppRGB);
   //取得源图片的缩略图
  Thumbnail := Image.GetThumbnailImage(120, 120, nil, nil);
   //绘制缩略图到TGBbmp;
  Graphics := TGPGraphics.Create(TGPbmp);
  Graphics.DrawImage(Thumbnail, 0, 0, Thumbnail.GetWidth, Thumbnail.GetHeight);
   //创建TBitmap位图
  bmp := Tbitmap.Create;
  bmp.width := 120;
  bmp.height := 120;
   //开始转换,hb用于过渡。
  TGPbmp.GetHBITMAP(0, hb);
  bmp.handle := hb;

   {你自己的代码，将bmp用在合适的地方}
   {例如 imagelist1.add(bmp,nil);}

   //使用完了，释放.
  Image.free;
  Thumbnail.free;
  Graphics.free;
  TGPbmp.free;
  bmp.free;

end;

procedure TJPGDemoForm.btn1Click(Sender: TObject);
var
  bmp: TBitmap;
  g: TGPGraphics;
  img: TGPBitmap;
begin
  bmp := TBitmap.Create;
  bmp.LoadFromFile('c:\a.bmp');
  img := BmpToGPBmp(bmp, 150);
  g := TGPGraphics.Create(Canvas.Handle);
  try
    g.DrawImage(img, 0, 0, img.GetWidth, img.GetHeight);
  finally
    FreeAndNil(g);
    FreeAndNil(img);
    FreeAndNil(bmp);
  end;
end;

end.

