unit demoFactory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TraceTool, ExtCtrls, VirtualTrees, xmldom, XMLIntf, msxmldom, XMLDoc,
  ImgList;

type
  TFormFactory = class(TObject)
  public
    function CreateForm(const classname: string; AOwner: TComponent; parent: TPanel): TForm;
    class function Instance(): TFormFactory;
  end;

var
  formFactory: TFormFactory;

implementation

uses
  fmDemo1, fmDemo2, fmDemo3, fmExcel, uCanvasDemo, fmJPGDemo, fmBitmap32Demo,
  fmControlsDemo;

{ TFormFactory }

function TFormFactory.CreateForm(const classname: string; AOwner: TComponent; parent: TPanel): TForm;
var
  NewDemoClass: TClass;
  NewDemo: TForm;
begin
  if Length(classname) > 0 then
    NewDemoClass := GetClass(classname)
  else
    NewDemoClass := nil;


  if Assigned(NewDemoClass) then
  begin
    NewDemo := TFormClass(NewDemoClass).Create(AOwner);
    NewDemo.Hide;
    NewDemo.BorderStyle := bsNone;
    NewDemo.Parent := parent;
    NewDemo.Align := alClient;
    Result := NewDemo;
  end else
  begin
    Result := nil;
  end;

end;

class function TFormFactory.Instance: TFormFactory;
begin
  if not Assigned(formFactory) then
    formFactory := TFormFactory.Create;
  Result := formFactory;
end;

initialization
  RegisterClass(TDemo1Form);
  //RegisterClass(TFormRotateFlip01);
  RegisterClass(TExcelForm);
  RegisterClass(TDemo2Form);
  RegisterClass(TDemo3Form);
  RegisterClass(TfrmGraphics);
  RegisterClass(TJPGDemoForm);
  RegisterClass(TBitmap32Demo);
  RegisterClass(TControlsDemoForm);


finalization
  UnRegisterClass(TDemo1Form);
  //UnRegisterClass(TFormRotateFlip01);
  UnRegisterClass(TExcelForm);
  UnRegisterClass(TDemo2Form);
  UnRegisterClass(TDemo3Form);
  UnRegisterClass(TfrmGraphics);
  UnRegisterClass(TJPGDemoForm);
  UnRegisterClass(TBitmap32Demo);
  UnRegisterClass(TControlsDemoForm);
end.
