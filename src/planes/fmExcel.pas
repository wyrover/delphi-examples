unit fmExcel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TExcelForm = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
     EApp: variant;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExcelForm: TExcelForm;

implementation

uses
  ComObj, OleServer;

{$R *.dfm}

procedure TExcelForm.FormCreate(Sender: TObject);
begin
  EApp := CreateOleObject('Excel.Application');
  Windows.SetParent(EApp.HWND, Self.Handle);
  EApp.Workbooks.Open('C:\a.xls');
  EApp.Visible:=true;
end;

end.
