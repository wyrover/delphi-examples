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
  fmBitmap32Demo in 'fmBitmap32Demo.pas' {Form3},
  UAdvPicturePane in 'UAdvPicturePane.pas' {Form93},
  Udemo in 'Udemo.pas' {Form100},
  UDemo2 in 'UDemo2.pas' {Form164},
  UDemo4 in 'UDemo4.pas' {Form101},
  UDemo5 in 'UDemo5.pas' {Form102},
  UOverview in 'UOverview.pas' {Form397},
  UDemo6 in 'UDemo6.pas' {Form10};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
