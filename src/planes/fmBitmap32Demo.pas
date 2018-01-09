unit fmBitmap32Demo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TRGBQuad = packed record
      b: uInt8;
      g: uInt8;
      r: uInt8;
      alpha: uInt8;
   end; // Record: TQuad //

// Override the definitions in Graphics.pas
   TRGBQuadArray = packed array [0..MaxInt div SizeOf (TRGBQuad) - 1] of TRGBQuad;
   PRGBQuadArray = ^TRGBQuadArray;

  TBitmap32Demo = class(TForm)
    Image1: TImage;
    btn1: TButton;
    procedure FormPaint(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TBitmap32Demo;

implementation

{$R *.dfm}

procedure TBitmap32Demo.btn1Click(Sender: TObject);
var
  Bitmap: TBitmap;
  q: TRGBQuad;
  x, y: LongInt;
  line{, FirstLine}: PRGBQuadArray;
  idx: NativeInt;
  LastLine: PRGBQuadArray;
  LineLength: NativeInt;
begin
  q.r := 0;
  q.g := 0;
  Bitmap := TBitmap.Create;
  Bitmap.Height := Image1.Height;
  Bitmap.Width := Image1.Width;
  Bitmap.PixelFormat := pf32Bit;

  LastLine := Bitmap.ScanLine[Bitmap.Height - 1];
  LineLength := (NativeInt(Bitmap.Scanline[Bitmap.Height - 2]) - NativeInt(LastLine)) div SizeOf(TRGBQuad);
  try
    for y := 0 to Bitmap.Height - 1 do
    begin
      for x := 0 to Bitmap.Width - 1 do
      begin
        q.b := (x xor y) mod 255;
        idx := y * LineLength + x;
        LastLine[idx] := q;
      end; // for
    end; // for
    Image1.Picture.Assign(Bitmap);
  finally
    Bitmap.Free;
  end; // try..finally
end;

procedure TBitmap32Demo.FormPaint(Sender: TObject);
var
  Bmp: TBitmap;
begin
  Bmp := TBitmap.Create;
  try
    Bmp.PixelFormat := pf32bit;
    Bmp.HandleType := bmDIB;
    Bmp.Width := 700;
    Bmp.Height := 400;
    Bmp.Transparent := TRUE;
    Bmp.TransparentColor := clMaroon;

    with Bmp.Canvas do
    begin
      Brush.Color := clMaroon;
      FillRect(Rect(0, 0, Bmp.Width, Bmp.Height));

      Brush.Color := clBlue;
      FillRect(Rect(42, 42, 200, 300));
    end;

    Canvas.Draw(12, 12, Bmp);
  finally
    Bmp.Free;
  end;
end;

end.

