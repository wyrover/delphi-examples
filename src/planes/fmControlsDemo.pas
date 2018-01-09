unit fmControlsDemo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, URLLbl, GradPnl,
  Vcl.ExtCtrls, FlatPanel, FlatMemo, FlatEdit, FlatButton, FlatCheckBox, FlatTab,
  FlatGauge, FlatProgressBar, Btn360;

type
  TControlsDemoForm = class(TForm)
    URLLabel1: TURLLabel;
    GradientPanel1: TGradientPanel;
    FlatPanel1: TFlatPanel;
    FlatMemo1: TFlatMemo;
    FlatEdit1: TFlatEdit;
    FlatButton1: TFlatButton;
    FlatCheckBox1: TFlatCheckBox;
    FlatTabControl1: TFlatTabControl;
    FlatGauge1: TFlatGauge;
    FlatProgressBar1: TFlatProgressBar;
    Btn360Style1: TBtn360Style;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TControlsDemoForm;

implementation

{$R *.dfm}

end.
