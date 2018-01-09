program planes;

uses
  Forms,
  fmMain in 'fmMain.pas' {MainForm},
  fmDemo1 in 'fmDemo1.pas' {Demo1Form},
  demoFactory in 'demoFactory.pas',
  appUtils in 'appUtils.pas',
  fmExcel in 'fmExcel.pas' {Form1},
  fmDemo2 in 'fmDemo2.pas' {Demo2Form},
  uCanvasDemo in 'uCanvasDemo.pas' {frmGraphics},
  fmJPGDemo in 'fmJPGDemo.pas' {Form2},
  fmBitmap32Demo in 'fmBitmap32Demo.pas' {Form3};


{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
