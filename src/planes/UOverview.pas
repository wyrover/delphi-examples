unit UOverview;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvChartView, AdvChartViewGDIP, AdvChart, ExtCtrls, ComCtrls, StdCtrls,
  Math, AdvChartSelectors, DBAdvChartViewGDIP, AdvChartGDIP, DB, ADODB,
  Spin, ShellApi, AdvChartPaneEditorGDIP;


type
  TMenuMode = (mmHover, mmSelected, mmDown);
type
  TForm397 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    AdvGDIPChartView2: TAdvGDIPChartView;
    Panel1: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    TrackBar1: TTrackBar;
    Label3: TLabel;
    Label4: TLabel;
    AdvChartColorSelector2: TAdvChartColorSelector;
    AdvChartColorSelector3: TAdvChartColorSelector;
    CheckBox1: TCheckBox;
    ComboBox2: TComboBox;
    Label5: TLabel;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    ComboBox3: TComboBox;
    TrackBar2: TTrackBar;
    CheckBox2: TCheckBox;
    ComboBox4: TComboBox;
    AdvGDIPChartView1: TAdvGDIPChartView;
    Panel3: TPanel;
    AdvGDIPChartView3: TAdvGDIPChartView;
    Label8: TLabel;
    ComboBox5: TComboBox;
    Label9: TLabel;
    TrackBar3: TTrackBar;
    Label11: TLabel;
    AdvChartColorSelector1: TAdvChartColorSelector;
    AdvGDIPChartView4: TAdvGDIPChartView;
    Panel4: TPanel;
    Label12: TLabel;
    ComboBox6: TComboBox;
    DBAdvGDIPChartView1: TDBAdvGDIPChartView;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Panel5: TPanel;
    Label13: TLabel;
    ComboBox7: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Panel6: TPanel;
    Menu: TAdvGDIPChartView;
    Panel7: TPanel;
    ComboBox8: TComboBox;
    Label15: TLabel;
    AdvChartColorSelector4: TAdvChartColorSelector;
    Label16: TLabel;
    TrackBar4: TTrackBar;
    Label17: TLabel;
    CheckBox3: TCheckBox;
    AdvChartColorSelector5: TAdvChartColorSelector;
    AdvChartColorSelector6: TAdvChartColorSelector;
    AdvChartColorSelector7: TAdvChartColorSelector;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Panel8: TPanel;
    Label21: TLabel;
    ComboBox9: TComboBox;
    AdvGDIPChartView5: TAdvGDIPChartView;
    AdvChartColorSelector8: TAdvChartColorSelector;
    Label22: TLabel;
    AdvGDIPChartView6: TAdvGDIPChartView;
    Panel9: TPanel;
    AdvChartColorSelector9: TAdvChartColorSelector;
    Label23: TLabel;
    CheckBox4: TCheckBox;
    RadioButton1: TCheckBox;
    RadioButton2: TCheckBox;
    RadioButton3: TCheckBox;
    RadioButton4: TCheckBox;
    RadioButton5: TCheckBox;
    AdvGDIPChartView7: TAdvGDIPChartView;
    Panel10: TPanel;
    Label24: TLabel;
    SpinEdit1: TSpinEdit;
    Button3: TButton;
    ComboBox10: TComboBox;
    Label25: TLabel;
    AdvChartColorSelector10: TAdvChartColorSelector;
    Label26: TLabel;
    Memo1: TMemo;
    TabSheet9: TTabSheet;
    TabSheet13: TTabSheet;
    AdvGDIPChartView8: TAdvGDIPChartView;
    Panel11: TPanel;
    Label30: TLabel;
    ComboBox11: TComboBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox14: TCheckBox;
    AdvChartColorSelector11: TAdvChartColorSelector;
    Label27: TLabel;
    AdvGDIPChartView9: TAdvGDIPChartView;
    Panel12: TPanel;
    Label29: TLabel;
    AdvChartColorSelector12: TAdvChartColorSelector;
    CheckBox5: TCheckBox;
    AdvGDIPChartView10: TAdvGDIPChartView;
    AdvGDIPChartView12: TAdvGDIPChartView;
    CheckBox6: TCheckBox;
    StaticText1: TStaticText;
    Panel13: TPanel;
    Label14: TLabel;
    Label28: TLabel;
    Label31: TLabel;
    Image2: TImage;
    AdvChartColorSelector13: TAdvChartColorSelector;
    Label32: TLabel;
    Panel14: TPanel;
    ComboBox12: TComboBox;
    Label33: TLabel;
    Button4: TButton;
    CheckBox7: TCheckBox;
    ColorDialog1: TColorDialog;
    AdvGDIPChartView11: TAdvGDIPChartView;
    procedure FormCreate(Sender: TObject);
    procedure MenuMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MenuMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MenuMouseLeave(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure AdvChartColorSelector2Select(Sender: TObject; Index: Integer;
      Item: TAdvChartSelectorItem);
    procedure AdvChartColorSelector3Select(Sender: TObject; Index: Integer;
      Item: TAdvChartSelectorItem);
    procedure CheckBox1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox5Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure AdvChartColorSelector1Select(Sender: TObject; Index: Integer;
      Item: TAdvChartSelectorItem);
    procedure ComboBox6Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox7Change(Sender: TObject);
    procedure ComboBox8Change(Sender: TObject);
    procedure TrackBar4Change(Sender: TObject);
    procedure AdvChartColorSelector4Select(Sender: TObject; Index: Integer;
      Item: TAdvChartSelectorItem);
    procedure CheckBox3Click(Sender: TObject);
    procedure AdvChartColorSelector5Select(Sender: TObject; Index: Integer;
      Item: TAdvChartSelectorItem);
    procedure AdvChartColorSelector6Select(Sender: TObject; Index: Integer;
      Item: TAdvChartSelectorItem);
    procedure AdvChartColorSelector7Select(Sender: TObject; Index: Integer;
      Item: TAdvChartSelectorItem);
    procedure AdvChartColorSelector8Select(Sender: TObject; Index: Integer;
      Item: TAdvChartSelectorItem);
    procedure ComboBox9Change(Sender: TObject);
    procedure AdvChartColorSelector9Select(Sender: TObject; Index: Integer;
      Item: TAdvChartSelectorItem);
    procedure CheckBox4Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox11Change(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure AdvChartColorSelector11Select(Sender: TObject; Index: Integer;
      Item: TAdvChartSelectorItem);
    procedure CheckBox5Click(Sender: TObject);
    procedure AdvChartColorSelector12Select(Sender: TObject; Index: Integer;
      Item: TAdvChartSelectorItem);
    procedure CheckBox6Click(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure WMPosChanged(var Message: TWMWindowPosChanged); message WM_WINDOWPOSCHANGED;
    procedure AdvChartColorSelector13Select(Sender: TObject; Index: Integer;
      Item: TAdvChartSelectorItem);
    procedure ComboBox12Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateMenu(idx: Integer; Mode: TMenuMode);
    procedure ProcessSelection(idx: Integer);
  end;

var
  Form397: TForm397;
  FSelectedIndex, FHoveredIndex: integer;
const
  cars: array[0..11] of String = ('Mercedes', 'Porsche', 'Opel', 'Fiat', 'BMW', 'Audi', 'Ferrari', 'Lexus', 'Santana', 'Alfa Romeo', 'Land Rover', 'Bugatti');

{$R Overview.RES}

implementation

function Lighter(Color:TColor; Percent:Byte):TColor;
var
  r, g, b:Byte;
begin
  Color := ColorToRGB(Color);
  r := GetRValue(Color);
  g := GetGValue(Color);
  b := GetBValue(Color);
  r := r + muldiv(255 - r, Percent, 100); //Percent% closer to white
  g := g + muldiv(255 - g, Percent, 100);
  b := b + muldiv(255 - b, Percent, 100);
  result := RGB(r, g, b);
end;

function Darker(Color:TColor; Percent:Byte):TColor;
var
  r, g, b:Byte;
begin
  Color := ColorToRGB(Color);
  r := GetRValue(Color);
  g := GetGValue(Color);
  b := GetBValue(Color);
  r := r - muldiv(r, Percent, 100);  //Percent% closer to black
  g := g - muldiv(g, Percent, 100);
  b := b - muldiv(b, Percent, 100);
  result := RGB(r, g, b);
end;

{$R *.dfm}

procedure TForm397.MenuMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  ct: TChartSeriePoint;
begin
  ct := Menu.XYToSeriePoint(X, Y, 0);
  if ct.Point <> -1 then
  begin
    UpdateMenu(ct.Point, mmDown);
  end;
end;

procedure TForm397.MenuMouseLeave(Sender: TObject);
begin
  UpdateMenu(-1, mmHover);
end;

procedure TForm397.MenuMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var
  ct: TChartSeriePoint;
begin
  ct := Menu.XYToSeriePoint(X, Y, 0);
  if ct.Point <> FHoveredIndex then
  begin
    FHoveredIndex := ct.Point;
    UpdateMenu(FHoveredIndex, mmHover);
  end;
end;

procedure TForm397.MenuMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  ct: TChartSeriePoint;
begin
  ct := Menu.XYToSeriePoint(X, Y, 0);
  if ct.Point <> -1 then
  begin
    UpdateMenu(ct.Point, mmSelected);
    FSelectedIndex := ct.Point;
    UpdateMenu(FSelectedIndex, mmSelected);
    ProcessSelection(FSelectedIndex);
  end;
end;

procedure TForm397.AdvChartColorSelector11Select(Sender: TObject;
  Index: Integer; Item: TAdvChartSelectorItem);
begin
  if Index = 0 then
    AdvChartColorSelector11.SelectedColor := clNone;

  if Index = 41 then
  begin
    ColorDialog1.Color := AdvChartColorSelector11.SelectedColor;
    if ColorDialog1.Execute then
    begin
      AdvChartColorSelector11.SelectedColor := ColorDialog1.Color;
    end;
  end;

  AdvGDIPChartView8.BeginUpdate;
  AdvGDIPChartView8.Panes[0].CrossHair.LineColor := AdvChartColorSelector11.SelectedColor;
  AdvGDIPChartView8.Panes[0].Series[0].CrossHairYValue.Color := AdvChartColorSelector11.SelectedColor;
  AdvGDIPChartView8.Panes[0].Series[0].CrossHairYValue.ColorTo := Lighter(AdvChartColorSelector11.SelectedColor, 40);
  AdvGDIPChartView8.EndUpdate;
end;

procedure TForm397.AdvChartColorSelector12Select(Sender: TObject;
  Index: Integer; Item: TAdvChartSelectorItem);
begin
  if Index = 0 then
    AdvChartColorSelector11.SelectedColor := clNone;

  if Index = 41 then
  begin
    ColorDialog1.Color := AdvChartColorSelector12.SelectedColor;
    if ColorDialog1.Execute then
    begin
      AdvChartColorSelector12.SelectedColor := ColorDialog1.Color;
    end;
  end;
  AdvGDIPChartView9.BeginUpdate;
  AdvGDIPChartView9.Panes[0].Series[0].Color := AdvChartColorSelector12.SelectedColor;
  AdvGDIPChartView9.Panes[0].Series[0].ColorTo := lighter(AdvChartColorSelector12.SelectedColor, 40);
  AdvGDIPChartView9.EndUpdate;
end;

procedure TForm397.AdvChartColorSelector13Select(Sender: TObject;
  Index: Integer; Item: TAdvChartSelectorItem);
begin
  if Index = 0 then
    AdvChartColorSelector13.SelectedColor := clNone;

  if Index = 41 then
  begin
    ColorDialog1.Color := AdvChartColorSelector13.SelectedColor;
    if ColorDialog1.Execute then
    begin
      AdvChartColorSelector13.SelectedColor := ColorDialog1.Color;
    end;
  end;
  AdvGDIPChartView9.BeginUpdate;
  AdvGDIPChartView9.Panes[0].Series[1].LineColor := AdvChartColorSelector13.SelectedColor;
  AdvGDIPChartView9.EndUpdate;
end;

procedure TForm397.AdvChartColorSelector1Select(Sender: TObject; Index: Integer;
  Item: TAdvChartSelectorItem);
begin
  if Index = 0 then
    AdvChartColorSelector1.SelectedColor := clNone;

  if Index = 41 then
  begin
    ColorDialog1.Color := AdvChartColorSelector1.SelectedColor;
    if ColorDialog1.Execute then
    begin
      AdvChartColorSelector1.SelectedColor := ColorDialog1.Color;
    end;
  end;
  AdvGDIPChartView3.BeginUpdate;
  AdvGDIPChartView3.Panes[0].Series[0].Marker.MarkerColor := AdvChartColorSelector1.SelectedColor;
  AdvGDIPChartView3.Panes[0].Series[0].Marker.MarkerColorTo := Lighter(AdvChartColorSelector1.SelectedColor, 50);
  AdvGDIPChartView3.Panes[0].Series[0].LineColor := Lighter(AdvChartColorSelector1.SelectedColor, 50);
  AdvGDIPChartView3.EndUpdate;
end;

procedure TForm397.AdvChartColorSelector2Select(Sender: TObject; Index: Integer;
  Item: TAdvChartSelectorItem);
var
  i: integer;
begin
  if Index = 0 then
    AdvChartColorSelector2.SelectedColor := clNone;

  if Index = 41 then
  begin
    ColorDialog1.Color := AdvChartColorSelector2.SelectedColor;
    if ColorDialog1.Execute then
    begin
      AdvChartColorSelector2.SelectedColor := ColorDialog1.Color;
    end;
  end;
  AdvGDIPChartView2.BeginUpdate;
  AdvGDIPChartView2.Panes[0].Series[0].Color := AdvChartColorSelector2.SelectedColor;
  AdvGDIPChartView2.Panes[0].Series[0].ColorTo := Darker(AdvChartColorSelector2.SelectedColor, 35);
  for I := 0 to Length(AdvGDIPChartView2.Panes[0].Series[0].Points) - 1 do
  begin
    if not ((ComboBox1.ItemIndex = 4) or (ComboBox1.ItemIndex = 5)) then
    begin
      AdvGDIPChartView2.Panes[0].Series[0].Points[I].Color := clNone;
      AdvGDIPChartView2.Panes[0].Series[0].Points[I].ColorTo := clNone;
    end;
  end;
  AdvGDIPChartView2.EndUpdate;
end;

procedure TForm397.AdvChartColorSelector3Select(Sender: TObject; Index: Integer;
  Item: TAdvChartSelectorItem);
begin
  if Index = 0 then
    AdvChartColorSelector3.SelectedColor := clNone;

  if Index = 41 then
  begin
    ColorDialog1.Color := AdvChartColorSelector3.SelectedColor;
    if ColorDialog1.Execute then
    begin
      AdvChartColorSelector3.SelectedColor := ColorDialog1.Color;
    end;
  end;
  AdvGDIPChartView2.BeginUpdate;
  AdvGDIPChartView2.Panes[0].Series[0].LineColor := AdvChartColorSelector3.SelectedColor;
  AdvGDIPChartView2.EndUpdate;
end;

procedure TForm397.AdvChartColorSelector4Select(Sender: TObject; Index: Integer;
  Item: TAdvChartSelectorItem);
begin
  if Index = 0 then
    AdvChartColorSelector4.SelectedColor := clNone;

  if Index = 41 then
  begin
    ColorDialog1.Color := AdvChartColorSelector4.SelectedColor;
    if ColorDialog1.Execute then
    begin
      AdvChartColorSelector4.SelectedColor := ColorDialog1.Color;
    end;
  end;
  AdvGDIPChartView3.BeginUpdate;
  AdvGDIPChartView3.Panes[0].Series[1].Marker.MarkerColor := AdvChartColorSelector4.SelectedColor;
  AdvGDIPChartView3.Panes[0].Series[1].Marker.MarkerColorTo := Lighter(AdvChartColorSelector4.SelectedColor, 50);
  AdvGDIPChartView3.Panes[0].Series[1].LineColor := Lighter(AdvChartColorSelector4.SelectedColor, 50);
  AdvGDIPChartView3.EndUpdate;
end;

procedure TForm397.AdvChartColorSelector5Select(Sender: TObject; Index: Integer;
  Item: TAdvChartSelectorItem);
begin
  if Index = 0 then
    AdvChartColorSelector5.SelectedColor := clNone;

  if Index = 41 then
  begin
    ColorDialog1.Color := AdvChartColorSelector5.SelectedColor;
    if ColorDialog1.Execute then
    begin
      AdvChartColorSelector5.SelectedColor := ColorDialog1.Color;
    end;
  end;
  with DBAdvGDIPChartView1.Panes[0].Series[0] do
  begin
    Pie.LegendColor := AdvChartColorSelector5.SelectedColor;
    Color := AdvChartColorSelector5.SelectedColor;
    Pie.LegendTitleColor := AdvChartColorSelector5.SelectedColor;
    Pie.ValueFont.Color := AdvChartColorSelector5.SelectedColor;
  end;
end;

procedure TForm397.AdvChartColorSelector6Select(Sender: TObject; Index: Integer;
  Item: TAdvChartSelectorItem);
begin
  if Index = 0 then
    AdvChartColorSelector6.SelectedColor := clNone;

  if Index = 41 then
  begin
    ColorDialog1.Color := AdvChartColorSelector6.SelectedColor;
    if ColorDialog1.Execute then
    begin
      AdvChartColorSelector6.SelectedColor := ColorDialog1.Color;
    end;
  end;
  with DBAdvGDIPChartView1.Panes[0].Series[1] do
  begin
    Pie.LegendColor := AdvChartColorSelector6.SelectedColor;
    Color := AdvChartColorSelector6.SelectedColor;
    Pie.LegendTitleColor := AdvChartColorSelector6.SelectedColor;
    Pie.ValueFont.Color := AdvChartColorSelector6.SelectedColor;
  end;
end;

procedure TForm397.AdvChartColorSelector7Select(Sender: TObject; Index: Integer;
  Item: TAdvChartSelectorItem);
begin
  if Index = 0 then
    AdvChartColorSelector7.SelectedColor := clNone;

  if Index = 41 then
  begin
    ColorDialog1.Color := AdvChartColorSelector7.SelectedColor;
    if ColorDialog1.Execute then
    begin
      AdvChartColorSelector7.SelectedColor := ColorDialog1.Color;
    end;
  end;
  with DBAdvGDIPChartView1.Panes[0].Series[2] do
  begin
    Pie.LegendColor := AdvChartColorSelector7.SelectedColor;
    Color := AdvChartColorSelector7.SelectedColor;
    Pie.LegendTitleColor := AdvChartColorSelector7.SelectedColor;
    Pie.ValueFont.Color := AdvChartColorSelector7.SelectedColor;
  end;
end;

procedure TForm397.AdvChartColorSelector8Select(Sender: TObject; Index: Integer;
  Item: TAdvChartSelectorItem);
begin
  if Index = 0 then
    AdvChartColorSelector8.SelectedColor := clNone;

  if Index = 41 then
  begin
    ColorDialog1.Color := AdvChartColorSelector8.SelectedColor;
    if ColorDialog1.Execute then
    begin
      AdvChartColorSelector8.SelectedColor := ColorDialog1.Color;
    end;
  end;
  AdvGDIPChartView5.BeginUpdate;
  AdvGDIPChartView5.Panes[0].Series[0].Color := AdvChartColorSelector8.SelectedColor;
  AdvGDIPChartView5.Panes[0].Series[0].ColorTo := Lighter(AdvGDIPChartView5.Panes[0].Series[0].Color, 40);
  AdvGDIPChartView5.Panes[0].Series[0].ArrowColor := AdvChartColorSelector8.SelectedColor;
  AdvGDIPChartView5.Panes[0].Series[0].LineColor := AdvChartColorSelector8.SelectedColor;
  AdvGDIPChartView5.EndUpdate;
end;

procedure TForm397.AdvChartColorSelector9Select(Sender: TObject; Index: Integer;
  Item: TAdvChartSelectorItem);
begin
  if Index = 0 then
    AdvChartColorSelector9.SelectedColor := clNone;

  if Index = 41 then
  begin
    ColorDialog1.Color := AdvChartColorSelector9.SelectedColor;
    if ColorDialog1.Execute then
    begin
      AdvChartColorSelector9.SelectedColor := ColorDialog1.Color;
    end;
  end;
  AdvGDIPChartView6.BeginUpdate;
  AdvGDIPChartView6.Panes[0].Series[0].LineColor := AdvChartColorSelector9.SelectedColor;
  AdvGDIPChartView6.Panes[1].Series[0].LineColor := AdvChartColorSelector9.SelectedColor;
  AdvGDIPChartView6.EndUpdate;
end;

procedure TForm397.Button1Click(Sender: TObject);
begin
  ADOTable1.Active := false;
  ADOTable1.TableName := 'Sales';
  ADOTable1.Active := true;
  ComboBox7Change(Self);
end;

procedure TForm397.Button2Click(Sender: TObject);
begin
  ADOTable1.Active := false;
  ADOTable1.TableName := 'Sales2';
  ADOTable1.Active := true;
  ComboBox7Change(Self);
end;

procedure TForm397.Button3Click(Sender: TObject);
begin
  AdvGDIPChartView7.BeginUpdate;
  with AdvGDIPChartView7.Panes[0].Series[0].Annotations.Add do
  begin
    Text := Memo1.Lines.Text;
    PointIndex := SpinEdit1.Value;
    OffsetY := -50;
    OffsetX := 10;
    Color :=  AdvChartColorSelector10.SelectedColor;
    ColorTo := Lighter(Color, 40);
    GradientType := gtForwardDiagonal;
    Bordercolor := clBlack;
    OpacityTo := 180;
    OpacityTo := 180;
    Shape := TAnnotationShape(ComboBox10.ItemIndex);
    LineColor := Color;
    Arrow := arDoubleArrow;
    ArrowColor := Color;
  end;
  AdvGDIPChartView7.EndUpdate;
end;

procedure TForm397.Button4Click(Sender: TObject);
var
  edit: TAdvChartPanesEditorDialogGDIP;
begin
  edit := TAdvChartPanesEditorDialogGDIP.Create(Self);
  edit.ChartView := AdvGDIPChartView11;
  edit.AllowSerieEditing := false;
  edit.AllowPaneNameChange := false;
  edit.AllowPaneRemoving := false;
  edit.AllowPaneAdding := false;
  edit.AllowPaneReorder := false;
  edit.Execute;
end;

procedure TForm397.CheckBox10Click(Sender: TObject);
begin
  AdvGDIPChartView8.BeginUpdate;
  AdvGDIPChartView8.Panes[0].CrossHair.CrossHairYValues.ShowSerieValues := CheckBox10.Checked;
  AdvGDIPChartView8.EndUpdate;
end;

procedure TForm397.CheckBox11Click(Sender: TObject);
begin
  AdvGDIPChartView8.BeginUpdate;
  AdvGDIPChartView8.Panes[0].CrossHair.CrossHairYValues.ShowYPosValue := CheckBox11.Checked;
  AdvGDIPChartView8.EndUpdate;
end;

procedure TForm397.CheckBox12Click(Sender: TObject);
begin
  AdvGDIPChartView8.BeginUpdate;
  if CheckBox12.Checked then
    AdvGDIPChartView8.Panes[0].CrossHair.CrossHairYValues.Position := AdvGDIPChartView8.Panes[0].CrossHair.CrossHairYValues.Position + [chYAxis]
  else
    AdvGDIPChartView8.Panes[0].CrossHair.CrossHairYValues.Position := AdvGDIPChartView8.Panes[0].CrossHair.CrossHairYValues.Position - [chYAxis];
  AdvGDIPChartView8.EndUpdate;
end;

procedure TForm397.CheckBox13Click(Sender: TObject);
begin
  AdvGDIPChartView8.BeginUpdate;
  if CheckBox13.Checked then
    AdvGDIPChartView8.Panes[0].CrossHair.CrossHairYValues.Position := AdvGDIPChartView8.Panes[0].CrossHair.CrossHairYValues.Position + [chValueTracker]
  else
    AdvGDIPChartView8.Panes[0].CrossHair.CrossHairYValues.Position := AdvGDIPChartView8.Panes[0].CrossHair.CrossHairYValues.Position - [chValueTracker];
  AdvGDIPChartView8.EndUpdate;
end;

procedure TForm397.CheckBox14Click(Sender: TObject);
begin
  AdvGDIPChartView8.BeginUpdate;
  if CheckBox14.Checked then
    AdvGDIPChartView8.Panes[0].CrossHair.CrossHairYValues.Position := AdvGDIPChartView8.Panes[0].CrossHair.CrossHairYValues.Position + [chAtCursor]
  else
    AdvGDIPChartView8.Panes[0].CrossHair.CrossHairYValues.Position := AdvGDIPChartView8.Panes[0].CrossHair.CrossHairYValues.Position - [chAtCursor];
  AdvGDIPChartView8.EndUpdate;
end;

procedure TForm397.CheckBox1Click(Sender: TObject);
begin
  AdvGDIPChartView2.BeginUpdate;
  AdvGDIPChartView2.Panes[0].Series[0].Enable3D := CheckBox1.Checked;
  AdvGDIPChartView2.EndUpdate;
end;

procedure TForm397.CheckBox2Click(Sender: TObject);
var
  i: integer;
begin
  AdvGDIPChartView1.BeginUpdate;
  for I := 0 to AdvGDIPChartView1.Panes[0].Series.Count - 1 do
    AdvGDIPChartView1.Panes[0].Series[I].Enable3D := CheckBox2.Checked;
  AdvGDIPChartView1.EndUpdate;
end;

procedure TForm397.CheckBox3Click(Sender: TObject);
begin
  DBAdvGDIPChartView1.BeginUpdate;
  with DBAdvGDIPChartView1.Panes[0] do
  begin
    if CheckBox3.Checked then
      Series.DonutMode := dmStacked
    else
      Series.DonutMode := dmNormal;
  end;
  ComboBox7Change(Self);
  DBAdvGDIPChartView1.EndUpdate;
end;

procedure TForm397.CheckBox4Click(Sender: TObject);
begin
  AdvGDIPChartView6.BeginUpdate;
  AdvGDIPChartView6.PanesSynched := CheckBox4.Checked;
  AdvGDIPChartView6.EndUpdate;
end;

procedure TForm397.CheckBox5Click(Sender: TObject);
begin
  AdvGDIPChartView9.BeginUpdate;
  if CheckBox5.Checked then
  begin
    AdvGDIPChartView9.Panes[0].Series.ChartMode := dmHorizontal;
    AdvGDIPChartView9.Panes[0].Series[0].GradientType := gtVertical;
    AdvGDIPChartView9.Panes[0].Legend.Left := AdvGDIPChartView9.Width - 200;
    AdvGDIPChartView9.Panes[0].Legend.Top := AdvGDIPChartView9.Height - 200;
  end
  else
  begin
    AdvGDIPChartView9.Panes[0].Series.ChartMode := dmVertical;
    AdvGDIPChartView9.Panes[0].Series[0].GradientType := gtHorizontal;
    AdvGDIPChartView9.Panes[0].Legend.Left := 10;
    AdvGDIPChartView9.Panes[0].Legend.Top := 10;
  end;

  AdvGDIPChartView9.EndUpdate;
end;

procedure TForm397.CheckBox6Click(Sender: TObject);
begin
  AdvGDIPChartView8.Tracker.Visible := CheckBox6.Checked;
  AdvGDIPChartView8.Tracker.TrackerForm.Left := self.Left + AdvGDIPChartView8.Left + Menu.Width + AdvGDIPChartView8.Width - AdvGDIPChartView8.Tracker.TrackerForm.Width - 10;
  AdvGDIPChartView8.Tracker.TrackerForm.Top := Self.Top + AdvGDIPChartView8.Top + AdvGDIPChartView8.Height - AdvGDIPChartView8.Tracker.TrackerForm.Height - 10;
end;

procedure TForm397.CheckBox7Click(Sender: TObject);
begin
  AdvGDIPChartView11.BeginUpdate;
  if CheckBox7.Checked then
    AdvGDIPChartView11.Panes[0].Title.Position := tBoth
  else
    AdvGDIPChartView11.Panes[0].Title.Position := tNone;
  AdvGDIPChartView11.EndUpdate;
end;

procedure TForm397.ComboBox11Change(Sender: TObject);
begin
  AdvGDIPChartView8.BeginUpdate;
  AdvGDIPChartView8.Panes[0].CrossHair.CrossHairType := TChartCrossHairType(ComboBox11.ItemIndex);
  AdvGDIPChartView8.EndUpdate;
end;

procedure TForm397.ComboBox12Change(Sender: TObject);
var
  i: integer;
begin
  AdvGDIPChartView11.BeginUpdate;
  with AdvGDIPChartView11.Panes[0] do
  begin
    for I := 0 to Length(Series[0].Points) - 1 do
    begin
      case ComboBox12.ItemIndex of
        0:
        begin
          Range.StartDate := EncodeTime(10, 0, 0, 0);
          XAxis.UnitType := utMinute;
          Series[0].XAxis.MajorUnitTimeFormat := 'hh:nn';
          Series[0].XAxis.MinorUnitTimeFormat := 'hh:nn';
          Series[0].Points[I].TimeStamp := EncodeTime(10, I, 0, 0);
          Series[0].Points[I].LegendValue := '';
        end;
        1:
        begin
          Range.StartDate := EncodeDate(2009, 1, 1);
          XAxis.UnitType := utMonth;
          Series[0].XAxis.MajorUnitTimeFormat := 'mmmm';
          Series[0].XAxis.MinorUnitTimeFormat := 'mmmm';
          Series[0].Points[I].TimeStamp := EncodeDate(2009, I + 1, 1);
          Series[0].Points[I].LegendValue := '';
        end;
        2:
        begin
          XAxis.UnitType := utNumber;
          Series[0].Points[I].LegendValue := cars[I];
        end;
      end;
    end;
  end;
  AdvGDIPChartView11.EndUpdate;
end;

procedure TForm397.ComboBox1Change(Sender: TObject);
var
  I: Integer;
begin
  AdvGDIPChartView2.BeginUpdate;
  case ComboBox1.ItemIndex of
    0: AdvGDIPChartView2.Panes[0].Series[0].ChartType := ctLine;
    1: AdvGDIPChartView2.Panes[0].Series[0].ChartType := ctArea;
    2: AdvGDIPChartView2.Panes[0].Series[0].ChartType := ctBar;
    3: AdvGDIPChartView2.Panes[0].Series[0].ChartType := ctLineBar;
    4: AdvGDIPChartView2.Panes[0].Series[0].ChartType := ctHistogram;
    5: AdvGDIPChartView2.Panes[0].Series[0].ChartType := ctLineHistogram;
    6: AdvGDIPChartView2.Panes[0].Series[0].ChartType := ctBand;
    7: AdvGDIPChartView2.Panes[0].Series[0].ChartType := ctDigitalLine;
    8: AdvGDIPChartView2.Panes[0].Series[0].ChartType := ctXYLine;
  end;
  for I := 0 to Length(AdvGDIPChartView2.Panes[0].Series[0].Points) - 1 do
  begin
    if (ComboBox1.ItemIndex = 4) or (ComboBox1.ItemIndex = 5) then
    begin
      if AdvGDIPChartView2.Panes[0].Series[0].Points[I].SingleValue < 0 then
      begin
        AdvGDIPChartView2.Panes[0].Series[0].Points[I].Color := Lighter(clRed, 20);
        AdvGDIPChartView2.Panes[0].Series[0].Points[I].ColorTo := Lighter(clRed, 50);
      end
      else
      begin
        AdvGDIPChartView2.Panes[0].Series[0].Points[I].Color := Lighter(clGreen, 20);
        AdvGDIPChartView2.Panes[0].Series[0].Points[I].ColorTo := Lighter(clGreen, 50);
      end;
    end
    else
    begin
      AdvGDIPChartView2.Panes[0].Series[0].Points[I].Color := clNone;
      AdvGDIPChartView2.Panes[0].Series[0].Points[I].ColorTo := clNone;
    end;
  end;

  AdvGDIPChartView2.EndUpdate;
end;

procedure TForm397.ComboBox2Change(Sender: TObject);
begin
  AdvGDIPChartView2.Panes[0].Series[0].BarShape := TChartBarShape(ComboBox2.ItemIndex);
end;

procedure TForm397.ComboBox3Change(Sender: TObject);
var
  I: Integer;
begin
  AdvGDIPChartView1.BeginUpdate;
  for I := 0 to AdvGDIPChartView1.Panes[0].Series.Count - 1 do
  begin
    case ComboBox3.ItemIndex of
      0: AdvGDIPChartView1.Panes[0].Series[I].ChartType := ctArea;
      1: AdvGDIPChartView1.Panes[0].Series[I].ChartType := ctStackedArea;
      2: AdvGDIPChartView1.Panes[0].Series[I].ChartType := ctStackedPercArea;
      3: AdvGDIPChartView1.Panes[0].Series[I].ChartType := ctBar;
      4: AdvGDIPChartView1.Panes[0].Series[I].ChartType := ctStackedBar;
      5: AdvGDIPChartView1.Panes[0].Series[I].ChartType := ctStackedPercBar;
    end;
  end;
  AdvGDIPChartView1.EndUpdate;
end;

procedure TForm397.ComboBox4Change(Sender: TObject);
var
  i: integer;
begin
  AdvGDIPChartView1.BeginUpdate;
  for I := 0 to AdvGDIPChartView1.Panes[0].Series.Count - 1 do
    AdvGDIPChartView1.Panes[0].Series[I].BarShape := TChartBarShape(ComboBox4.ItemIndex);
  AdvGDIPChartView1.EndUpdate;
end;

procedure TForm397.ComboBox5Change(Sender: TObject);
begin
  AdvGDIPChartView3.BeginUpdate;
  case ComboBox5.ItemIndex of
    0:AdvGDIPChartView3.Panes[0].Series[0].Marker.MarkerType := mCircle;
    1:AdvGDIPChartView3.Panes[0].Series[0].Marker.MarkerType := mSquare;
    2:AdvGDIPChartView3.Panes[0].Series[0].Marker.MarkerType := mDiamond;
    3:AdvGDIPChartView3.Panes[0].Series[0].Marker.MarkerType := mTriangle;
    4:AdvGDIPChartView3.Panes[0].Series[0].Marker.MarkerType := mPicture;
  end;
  AdvGDIPChartView3.EndUpdate;
end;

procedure TForm397.ComboBox6Change(Sender: TObject);
var
  c: integer;
  I: Integer;
begin
  AdvGDIPChartView4.BeginUpdate;
  AdvGDIPChartView4.Panes[0].Series[0].ClearPoints;
  AdvGDIPChartView4.Panes[0].Range.RangeFrom := 0;
  AdvGDIPChartView4.Panes[0].Series[0].ShowValue := false;
  AdvGDIPChartView4.Panes[0].Range.RangeTo := 20;
  AdvGDIPChartView4.Panes[0].Series.ChartMode := dmVertical;
  for I := 0 to 20 do
  begin
    Randomize;
    c := RandomRange(-400, 400);
    AdvGDIPChartView4.Panes[0].Series[0].AddMultiPoints(c + 50, c - 50, RandomRange(c + 30, c - 30), RandomRange(c + 30, c - 30));
  end;
  case ComboBox6.ItemIndex of
  0: AdvGDIPChartView4.Panes[0].Series[0].ChartType := ctCandleStick;
  1: AdvGDIPChartView4.Panes[0].Series[0].ChartType := ctLineCandleStick;
  2: AdvGDIPChartView4.Panes[0].Series[0].ChartType := ctOHLC;
  3:
  begin
    AdvGDIPChartView4.Panes[0].Series[0].ChartType := ctBoxPlot;
    AdvGDIPChartView4.Panes[0].Series[0].ShowValue := true;
    AdvGDIPChartView4.Panes[0].Series.ChartMode := dmHorizontal;
    AdvGDIPChartView4.Panes[0].Range.RangeFrom := 0;
    AdvGDIPChartView4.Panes[0].Range.RangeTo := 0;
    AdvGDIPChartView4.Panes[0].Series[0].ClearPoints;
    for I := 0 to 0 do
    begin
      Randomize;
      c := RandomRange(-400, 400);
      AdvGDIPChartView4.Panes[0].Series[0].AddMultiPoints(c - 50, RandomRange(c - 30, c - 20), c, RandomRange(c + 20, c + 30), c + 50, '');
    end;
  end;
  end;
  AdvGDIPChartView4.EndUpdate;
end;

procedure TForm397.ComboBox7Change(Sender: TObject);
var
  I: Integer;
  K: integer;
begin
  DBAdvGDIPChartView1.BeginUpdate;
  for I := 0 to DBAdvGDIPChartView1.Panes[0].Series.Count - 1 do
  begin
    with DBAdvGDIPChartView1.Panes[0].Series[I] do
    begin
      Pie.LegendOffsetLeft := DBAdvGDIPChartView1.Width - 120;
      if I = 0 then
        Pie.LegendOffsetTop := (DBAdvGDIPChartView1.Height div 2) - 150;
      if I = 1 then
        Pie.LegendOffsetTop := (DBAdvGDIPChartView1.Height div 2);
      if I = 2 then
        Pie.LegendOffsetTop := (DBAdvGDIPChartView1.Height div 2) + 150;

      case ComboBox7.ItemIndex of
      0: ChartType := ctPie;
      1: ChartType := ctHalfPie;
      2: ChartType := ctDonut;
      3: ChartType := ctHalfDonut;
      4: ChartType := ctSpider;
      5: ChartType := ctHalfSpider;
      6: ChartType := ctVarRadiusPie;
      7: ChartType := ctVarRadiusHalfPie;
      8: ChartType := ctVarRadiusDonut;
      9: ChartType := ctVarRadiusHalfDonut;
      10: ChartType := ctSizedPie;
      11: ChartType := ctSizedHalfPie;
      12: ChartType := ctSizedDonut;
      13: ChartType := ctSizedHalfDonut;
      end;

      if (ComboBox7.ItemIndex <> 4) and (ComboBox7.ItemIndex <> 5) then
      begin
        Pie.LegendOffsetLeft := 0;
        Pie.LegendOffsetTop := 0;
        Pie.Left := 0;
        Pie.Top := 0;
      end;

      case ComboBox7.ItemIndex of
        0, 1, 6, 7, 8, 9, 10, 11, 12, 13:
        begin
          Pie.InnerSize := 40;
          Pie.Size := 150;
          Pie.Top := 0;
          Pie.Left := 0;
          Pie.LegendPosition := spBottomCenter;
          Opacity := 255;
          if I = 0 then
            Pie.Position := spCenterRight
          else if I = 2 then
            Pie.Position := spCenterLeft;
          case ComboBox7.ItemIndex of
            6, 7, 8, 9, 10, 11, 12, 13:
            begin
              YAxis.Visible := false;
              Pie.ShowGrid := false;
              Pie.ShowGridPieLines := false;
              Pie.Size := 300;
              case ComboBox7.ItemIndex of
                6, 7, 8, 9:
                begin
                  for K := 0 to Length(DBAdvGDIPChartView1.Panes[0].Series[0].Points) - 1 do
                  begin
                    DBAdvGDIPChartView1.Panes[0].Series[I].Points[K].SecondValue := DBAdvGDIPChartView1.Panes[0].Series[I].Points[K].SingleValue - 10;
                  end;
                end;
                10, 11, 12, 13:
                begin
                  for K := 0 to Length(DBAdvGDIPChartView1.Panes[0].Series[0].Points) - 1 do
                  begin
                    DBAdvGDIPChartView1.Panes[0].Series[I].Points[K].SecondValue := DBAdvGDIPChartView1.Panes[0].Series[I].Points[K].SingleValue;
                  end;
                end;
              end;
              if I = 0 then
                Pie.Position := spCenterLeft
              else if I = 2 then
                Pie.Position := spCenterRight;
            end;
          end;
          if I = 1 then
          begin
            Pie.Position := spCustom;
            Pie.Top := 100;
            Pie.Left := (DBAdvGDIPChartView1.Width - (Pie.Size div 2)) div 2;
          end
        end;
        2, 3:
        begin
          if not (DBAdvGDIPChartView1.Panes[0].Series.DonutMode = dmStacked) then
          begin
            Pie.InnerSize := 40 * (I + 1);
            Pie.Size := 40 * (I + 2);
            Pie.LegendPosition := spBottomCenter;
            if I = 1 then
            begin
              Pie.Position := spCustom;
              Pie.Top := 100;
              Pie.Left := (DBAdvGDIPChartView1.Width - (Pie.Size div 2)) div 2;
            end
            else if I = 0 then
              Pie.Position := spCenterRight
            else if I = 2 then
              Pie.Position := spCenterLeft;
          end
          else
          begin
            Pie.Position := spCustom;
            Pie.LegendPosition := spCustom;
            Pie.Left := 300;
            Pie.Top := 250;
            if I = 2 then
            begin
              Pie.InnerSize := 75;
              Pie.Size := 150;
            end
            else if I = 1 then
            begin
              Pie.InnerSize := 150;
              Pie.Size := 200;
            end
            else if I = 0 then
            begin
              Pie.InnerSize := 200;
              Pie.Size := 350;
            end;
          end;

          Opacity := 255;
        end
        else
        begin
          if I = 0 then
          begin
            YAxis.Visible := true;
            Pie.ShowGrid := true;
            Pie.ShowGridPieLines := true;
          end;

          Pie.Size := 400;
          Pie.LegendPosition := spCustom;
          Pie.Position := spCustom;
          Pie.Left := 300;
          Pie.Top := 250;
          Opacity := 50;
        end;
      end;
    end;
  end;
  DBAdvGDIPChartView1.EndUpdate;
end;

procedure TForm397.ComboBox8Change(Sender: TObject);
begin
  AdvGDIPChartView3.BeginUpdate;
  case ComboBox8.ItemIndex of
    0:AdvGDIPChartView3.Panes[0].Series[1].Marker.MarkerType := mCircle;
    1:AdvGDIPChartView3.Panes[0].Series[1].Marker.MarkerType := mSquare;
    2:AdvGDIPChartView3.Panes[0].Series[1].Marker.MarkerType := mDiamond;
    3:AdvGDIPChartView3.Panes[0].Series[1].Marker.MarkerType := mTriangle;
    4:AdvGDIPChartView3.Panes[0].Series[1].Marker.MarkerType := mPicture;
  end;
  AdvGDIPChartView3.EndUpdate;
end;

procedure TForm397.ComboBox9Change(Sender: TObject);
var
  i: integer;
begin
  AdvGDIPChartView5.BeginUpdate;
  case ComboBox9.ItemIndex of
  0: AdvGDIPChartView5.Panes[0].Series[0].ChartType := ctError;
  1: AdvGDIPChartView5.Panes[0].Series[0].ChartType := ctArrow;
  2: AdvGDIPChartView5.Panes[0].Series[0].ChartType := ctBubble;
  end;

  for I := 0 to Length(AdvGDIPChartView5.Panes[0].Series[0].Points) - 1 do
  begin
    case ComboBox9.ItemIndex of
      0:
      begin
        AdvGDIPChartView5.Panes[0].Series[0].Points[I].PixelValue1 := RandomRange(500, 1000);
        AdvGDIPChartView5.Panes[0].Series[0].Points[I].PixelValue2 := RandomRange(500, 1000);
      end;
      1, 2:
      begin
        AdvGDIPChartView5.Panes[0].Series[0].Points[I].PixelValue1 := I * 5;
        AdvGDIPChartView5.Panes[0].Series[0].Points[I].PixelValue2 := I * 5;
      end;
    end;
  end;
  AdvGDIPChartView5.EndUpdate;
end;

procedure TForm397.FormCreate(Sender: TObject);
var
  I, K: Integer;
  c: Integer;
begin
  Button4.Hint := 'Start the Chart Editor which is able to change every single property on Pane, Serie and Annotation level.'+
  #13#10 + 'In this sample the editor is disabled for the series and the annotations';
  Application.HintHidePause := 6000;
  with Menu.Panes[0].Series[0] do
  begin
    AddSinglePoint(100, 'Single Serie Chart Types');
    AddSinglePoint(100, 'Multi Point Chart Types');
    AddSinglePoint(100, 'Multiple Serie Chart Types');
    AddSinglePoint(100, 'Pie / Donut Chart Types');
    AddSinglePoint(100, 'Special Chart Types');
    AddSinglePoint(100, 'Markers');
    AddSinglePoint(100, 'Chart Interaction');
    AddSinglePoint(100, 'Annotations');
    AddSinglePoint(100, 'Crosshair / Tracker');
    AddSinglePoint(100, 'Horizontal Chart');
    AddSinglePoint(100, 'Y-Axis and Values Formatting');
    AddSinglePoint(100, 'X-Axis formatting');
    AddSinglePoint(100, 'Logarithmic Y-Scale');
  end;

  FSelectedIndex := -1;
  UpdateMenu(0, mmSelected);
  FSelectedIndex := 0;
  ProcessSelection(FSelectedIndex);

  //X-Axis Formatting
  with AdvGDIPChartView11.Panes[0] do
  begin
    Range.StartDate := EncodeTime(10, 0, 0, 0);
    Range.RangeTo := 11;
    XAxis.UnitType := utMinute;
    with Series.Add do
    begin
      XAxis.MajorUnitTimeFormat := 'hh:nn';
      XAxis.MajorUnit := 1;
//      XAxis.MinorUnit := 1;
      XAxis.MinorUnitTimeFormat := 'hh:nn';
      XAxis.MinorFont.Size := 10;
      XAxis.MajorFont.Size := 10;
      Xaxis.Position := xBoth;
      Xaxis.TextBottom.Text := 'TEST';
      XAxis.TextBottom.Position := ctCenter;
      Yaxis.Position := yBoth;
      XGrid.MajorDistance := 2;
      XGrid.MinorDistance := 1;
      AutoRange := arEnabledZeroBased;
      ChartType := ctBar;
      GradientType := gtHorizontal;
      BorderColor := clBlack;
      LineColor := clBlack;
      Color := Lighter(clGreen, 40);
      ColorTo := Lighter(Color, 40);
      Xaxis.TextBottom.Angle := -90;
      Xaxis.TextTop.Angle := 90;
      for I := 0 to 11 do
      begin
        Randomize;
        c := RandomRange(10, 100);
        AddSinglePoint(c, EncodeTime(10, I, 0, 0));
      end;
      YGrid.MajorLineColor := Color;
      YGrid.MinorLineColor := clGray;
    end;
  end;

  //Logarithmic Chart
  with AdvGDIPChartView12.Panes[0] do
  begin
    YGrid.AutoUnits := false;
    YGrid.MinorDistance := 0.2;
    YAxis.AutoUnits := false;
    with Series.Add do
    begin
      Logarithmic := true;
      AutoRange := arCommonZeroBased;
      ChartType := ctBar;
      GradientType := gtHorizontal;
      BorderColor := clBlack;
      LineColor := clBlack;
      Color := Lighter(RGB(0, 100, 255), 40);
      ColorTo := Lighter(Color, 40);
      YAxis.MinorUnit := 0.2;
      ValueFormat := '%.0f';
      ShowValue := true;
      ValueFont.Color := Color;
      ValueFont.Size := 10;
      ValueFont.Style := [fsBold];
      YAxis.MajorFont.Color := color;
      YAxis.MinorFont.Color := clGray;
      YAxis.MinorFont.Size := 7;
      BarShape := bsPyramid;
      ValueWidth := 90;
      Opacity := 100;
      for I := 0 to 8 do
      begin
        Randomize;
        AddSinglePoint(Power(RandomRange(2, 5), I + 1));
      end;
      YGrid.MajorLineColor := Color;
      YGrid.MinorLineColor := clGray;
    end;

    with Series.Add do
    begin
      Logarithmic := true;
      AutoRange := arCommonZeroBased;
      ChartType := ctLine;
      YAxis.Visible := false;
      LineColor := Lighter(clREd, 50);
      Marker.MarkerType := mCircle;
      Marker.MarkerColor := clRed;
      Marker.MarkerColorto := Lighter(clRed, 80);
      Marker.GradientType := gtForwardDiagonal;
      ShowValue := true;
      for I := 0 to 8 do
      begin
        Randomize;
        AddSinglePoint(Power(I + 1, 6));
      end;
    end;
  end;

  //YAxis Formatting Chart
  with AdvGDIPChartView10.Panes[0] do
  begin
    with Series.Add do
    begin
      AutoRange := arEnabled;
      ChartType := ctArea;
      GradientType := gtVertical;
      BorderColor := clBlack;
      LineColor := clBlack;
      Color := RGB(94, 168, 79);
      ColorTo := Color;
      ValueFormat := '%.2m';
      YAxis.TextLeft.Text := 'Sales ($)';
      YAxis.TextLeft.Angle := -90;
      YAxis.TextLeft.Position := ctCenter;
      YAxis.TextLeft.Offset := 80;
      YAxis.TextLeft.Font.Color := Color;
      YAxis.TextLeft.Font.Size := 11;
      for I := 0 to 10 do
      begin
        Randomize;
        c := RandomRange(-400, 400);
        AddSinglePoint(c);
      end;
    end;
    with Series.Add do
    begin
      AutoRange := arEnabled;
      ChartType := ctArea;
      GradientType := gtVertical;
      BorderColor := clBlack;
      LineColor := clBlack;
      Color := RGB(121, 159, 184);
      ColorTo := Color;
      Xaxis.Visible := false;
      YAxis.Position := yRight;
      ValueFormat := '%g m';
      YAxis.TextRight.Text := 'Volume (m)';
      YAxis.TextRight.Font.Color := Color;
      YAxis.TextRight.Font.Size := 11;
      YAxis.TextRight.Angle := 90;
      YAxis.TextRight.Position := ctCenter;
      YAxis.TextRight.Offset := 80;
      for I := 0 to 10 do
      begin
        Randomize;
        c := RandomRange(-400, 400);
        AddSinglePoint(c);
      end;
    end;
    for I := 0 to Series.Count - 1 do
    begin
      with Series[I] do
      begin
        YAxis.MajorFont.Color := Color;
        YAxis.MinorFont.Color := Color;
      end;
    end;
  end;

  //Horizontal Chart
  with AdvGDIPChartView9.Panes[0] do
  begin
    Legend.Left := AdvGDIPChartView9.Width - 200;
    Legend.Top := AdvGDIPChartView9.Height - 200;
    with Series.Add do
    begin
      Series.ChartMode := dmHorizontal;
      AutoRange := arDisabled;
      Minimum := 0;
      Maximum := 600;
      ChartType := ctBar;
      Color := Lighter(clPurple, 40);
      ColorTo := Lighter(clPurple, 80);
      GradientType := gtVertical;
      BorderColor := clBlack;
      for I := 0 to 10 do
      begin
        Randomize;
        c := RandomRange(20, 400);
        AddSinglePoint(c);
      end;
    end;

    with Series.Add do
    begin
      Series.ChartMode := dmHorizontal;
      AutoRange := arDisabled;
      Minimum := 0;
      Maximum := 600;
      ChartType := ctLine;
      LineColor := Lighter(RGB(0, 128, 192), 40);
      LineWidth := 2;
      PenStyle := psDot;
      GradientType := gtVertical;
      BorderColor := clBlack;
      for I := 0 to 10 do
      begin
        Randomize;
        c := RandomRange(20, 400);
        AddSinglePoint(c);
      end;
    end;
  end;

  AdvChartColorSelector12.SelectedColor := Lighter(clPurple, 40);
  AdvChartColorSelector13.SelectedColor := Lighter(RGB(0, 128, 192), 40);


  //Crosshair
  with AdvGDIPChartView8.Panes[0] do
  begin
    with Series.Add do
    begin
      AutoRange := arEnabled;
      ChartType := ctLine;
      LineColor := clBlack;
      GradientType := gtHorizontal;
      BorderColor := clBlack;
      ShowValue := true;
      ValueFont.Color := Color;
      CrossHair.Visible := true;
      CrossHair.LineColor := clRed;
      CrossHairYValue.Font.Color := clWhite;
      CrossHairYValue.Font.Size := 12;
      CrossHair.CrossHairYValues.ShowSerieValues := true;
      CrossHair.CrossHairYValues.ShowYPosValue := false;
      CrossHair.CrossHairYValues.Position := [chAtCursor] + [chValueTracker];
      ComboBox11.ItemIndex := Integer(CrossHair.CrossHairType);
      CrossHairYValue.Color := CrossHair.LineColor;
      CrossHairYValue.ColorTo := Lighter(CrossHair.LineColor, 80);
      CrossHairYValue.BorderColor := clBlack;
      CrossHairYValue.GradientDirection := cgdVertical;
      YAxis.Position := yRight;
      for I := 0 to 50 do
      begin
        Randomize;
        c := RandomRange(-400, 400);
        AddSinglePoint(c);
      end;
    end;
  end;

  //Chart Annotation
  with AdvGDIPChartView7.Panes[0] do
  begin
    with Series.Add do
    begin
      AutoRange := arDisabled;
      Minimum := 0;
      Maximum := 600;
      ChartType := ctBar;
      Color := Lighter(clSilver, 40);
      ColorTo := Lighter(clSilver, 80);
      GradientType := gtHorizontal;
      BorderColor := clBlack;
      for I := 0 to 50 do
      begin
        Randomize;
        c := RandomRange(20, 400);
        AddSinglePoint(c);
      end;

      with Annotations.Add do
      begin
        Text := 'This an annotation with multiline text, there are different shapes and combinations';
        Width := 150;
        Height := 50;
        WordWrap := true;
        PointIndex := 5;
        OffsetY := -100;
        OffsetX := 10;
        Color :=  RGB(153, 204, 0);
        ColorTo := Lighter(Color, 40);
        GradientType := gtForwardDiagonal;
        Bordercolor := clBlack;
        OpacityTo := 180;
        OpacityTo := 180;
      end;

      with Annotations.Add do
      begin
        Text := 'This an annotation';
        PointIndex := 11;
        OffsetY := -100;
        OffsetX := 10;
        Color :=  RGB(128, 176, 255);
        ColorTo := Lighter(Color, 40);
        GradientType := gtHatch;
        HatchStyle := HatchStyleForwardDiagonal;
        Bordercolor := clBlack;
        OpacityTo := 180;
        OpacityTo := 180;
        Shape := asLine;
        ArrowColor := Color;
        Arrow := arDoubleArrow;
        LineColor := Color;
        Font.Size := 14;
        Font.Color := Color;
      end;

      with Annotations.Add do
      begin
        Text := 'This an annotation';
        PointIndex := 15;
        OffsetY := -50;
        OffsetX := 10;
        Color :=  RGB(255, 153, 0);
        ColorTo := Lighter(Color, 40);
        GradientType := gtHatch;
        HatchStyle := HatchStyleForwardDiagonal;
        Bordercolor := clBlack;
        OpacityTo := 180;
        OpacityTo := 180;
        Shape := asBalloon;
      end;
    end;
  end;

  //Chart Interaction Chart Types
  with AdvGDIPChartView6.Panes[0] do
  begin
    Options := Options + [poMoving] + [poHorzScroll] + [poVertScale];
    HeightType := htAuto;
    with Series.Add do
    begin
      AutoRange := arEnabled;
      ChartType := ctLine;
      Color := RGB(255, 153, 0);
      ColorTo := Lighter(Color, 40);
      LineColor := Color;
      LineWidth := 2;
      for I := 0 to 50 do
      begin
        Randomize;
        c := RandomRange(0, 400) * I;
        AddSinglePoint(c);
      end;
    end;
  end;

  with AdvGDIPChartView6.Panes.Add do
  begin
    Options := Options + [poMoving] + [poHorzScroll] + [poVertScale];
    HeightType := htAuto;
    Assign(AdvGDIPChartView6.Panes[0]);
    Series.Clear;
    with Series.Add do
    begin
      AutoRange := arEnabled;
      ChartType := ctBar;
      Color := RGB(255, 153, 0);
      LineColor := Color;
      LineWidth := 2;
      for I := 0 to 50 do
      begin
        Randomize;
        c := RandomRange(0, 400) * I;
        AddSinglePoint(c);
      end;
    end;
  end;

  AdvChartColorSelector9.SelectedColor := RGB(255, 153, 0);

  //Special Chart Types
  with AdvGDIPChartView5.Panes[0] do
  begin
    with Series.Add do
    begin
      AutoRange := arEnabled;
      ChartType := ctBubble;
      Color := RGB(153, 204, 0);
      ColorTo := Lighter(Color, 40);
      GradientType := gtForwardDiagonal;
      BorderColor := clBlack;
      OpacityTo := 100;
      ArrowColor := Color;
      ShowValue := true;
      LineColor := Color;
      LineWidth := 2;
      for I := 0 to 20 do
      begin
        Randomize;
        c := RandomRange(-400, 400) * I;
        AddPoints(c, 5 * I);
      end;
    end;
  end;
  ComboBox9.ItemIndex := 2;
  AdvChartColorSelector8.SelectedColor := RGB(153, 204, 0);
  ///////////////////////////

  //Normal Chart Types
  with AdvGDIPChartView2.Panes[0] do
  begin
    with Series.Add do
    begin
      AutoRange := arEnabled;
      Color := RGB(128, 176, 255);
      AdvChartColorSelector2.SelectedColor := Color;
      LineColor := clBlack;
      AdvChartColorSelector3.SelectedColor := Color;
      GradientType := gtHorizontal;
      ColorTo := Darker(Color, 35);
      BorderColor := clBlack;
      LineWidth := 1;
      ValueWidth := 80;
      for I := 0 to 20 do
      begin
        Randomize;
        c := RandomRange(-400, 400);
        AddDoubleXYPoint(I * 0.5, c, c - RandomRange(50, 100), FloatToStr(I*0.5));
      end;
    end;
  end;
  ComboBox1.ItemIndex := 0;
  ComboBox2.ItemIndex := 0;
  ///////////////////////////
  ///
  /// Stacked Chart Types
  with AdvGDIPChartView1.Panes[0] do
  begin
    for I := 0 to 2 do
    begin
      with Series.Add do
      begin
        AutoRange := arCommonZeroBased;
        ChartType := ctStackedBar;
        LineColor := clBlack;
        GradientType := gtHorizontal;
        if I = 0 then
          Color := RGB(94, 168, 79)
        else if I = 1 then
          Color := RGB(121, 159, 184)
        else
          Color := RGB(255, 163, 43);

        ColorTo := Darker(Color, 35);
        ValueType := cvPercentage;
        ValueFormat := '%.0f';
        BorderColor := clBlack;
        LineWidth := 1;
        ValueWidth := 100;
        for K := 0 to 20 do
        begin
          Randomize;
          c := RandomRange(100, 400);
          AddDoublePoint(c, c - RandomRange(50, 100));
        end;
      end;
    end;
  end;
  ComboBox3.ItemIndex := 4;
  ComboBox4.ItemIndex := 0;
  //Multi Point Chart Types
  with AdvGDIPChartView4.Panes[0] do
  begin
    with Series.Add do
    begin
      ChartType := ctOHLC;
      CandleColorDecrease := RGB(94, 168, 79);
      CandleColorIncrease := RGB(255, 163, 43);
      AutoRange := arEnabled;
      LineColor := clBlack;
      GradientType := gtHorizontal;
      BorderColor := clBlack;
      LineWidth := 1;
      WickColor := clBlack;
      for I := 0 to 20 do
      begin
        Randomize;
        c := RandomRange(-400, 400);
        AddMultiPoints(c + 50, c - 50, RandomRange(c + 30, c - 30), RandomRange(c + 30, c - 30));
      end;
    end;
  end;
  ComboBox6.ItemIndex := 2;
  ///////////////////////////
  ///////////////////////////
  //Markers
  with AdvGDIPChartView3.Panes[0] do
  begin
    with Series.Add do
    begin
      AutoRange := arCommon;
      Marker.MarkerType := mDiamond;
      Marker.MarkerSize := 10;
      Marker.MarkerColor := clRed;
      Marker.MarkerColorTo := Lighter(clRed, 50);
      Marker.GradientType := gtForwardDiagonal;
      Marker.OpacityTo := 150;
      Marker.SelectedColor := clGreen;
      Marker.SelectedColorTo := Lighter(clGreen, 50);
      Marker.SelectedLineColor := clBlack;
      Marker.SelectedSize := 15;
      Marker.MarkerPicture.LoadFromResourceName(HInstance, 'star');
      Color := RGB(128, 176, 255);
      LineColor := Lighter(clRed, 50);
      LineWidth := 1;
      for I := 0 to 20 do
      begin
        Randomize;
        c := RandomRange(-400, 400);
        AddDoublePoint(c, c - RandomRange(50, 100));
      end;
    end;

    with Series.Add do
    begin
      LineColor := clGreen;
      AutoRange := arCommon;
      Marker.MarkerType := mCircle;
      Marker.MarkerSize := 10;
      Marker.MarkerColor := clGreen;
      Marker.MarkerColorTo := Lighter(clGreen, 50);
      Marker.GradientType := gtForwardDiagonal;
      Marker.OpacityTo := 150;
      Marker.SelectedColor := clBlue;
      Marker.SelectedColorTo := Lighter(clGreen, 50);
      Marker.SelectedLineColor := clBlack;
      Marker.SelectedSize := 15;
      Marker.MarkerPicture.LoadFromResourceName(HInstance, 'star');
      Color := RGB(128, 176, 255);
      LineColor := Lighter(clGreen, 50);
      LineWidth := 1;
      for I := 0 to 20 do
      begin
        Randomize;
        c := RandomRange(-400, 400);
        AddDoublePoint(c, c - RandomRange(50, 100));
      end;
    end;
  end;

  AdvChartColorSelector1.SelectedColor := clRed;
  AdvChartColorSelector4.SelectedColor := clGreen;
  ComboBox5.ItemIndex := 2;
  ComboBox8.ItemIndex := 0;
  TrackBar3.Position := 10;
  TrackBar4.Position := 10;
  ///////////////////////////
  ///  PIE Variants / Database
  DBAdvGDIPChartView1.Panes[0].BorderColor := clBlack;
  DBAdvGDIPChartView1.Panes[0].BorderWidth := 3;

  with DBAdvGDIPChartView1.Panes[0] do
  begin
    Series.Clear;
    //Set connection string to database
    ADOConnection1.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=sales.mdb;Persist Security Info=False';
    ADOConnection1.Connected := true;

    //Set tablename
    ADOTable1.Connection := ADOConnection1;
    ADOTable1.TableName := 'Sales';

    //link to Datasource and datasource to chart
    DataSource1.DataSet := ADOTable1;
    //Datasource property of Chart
    DataSource := DataSource1;

    XAxis.Position := xNone;
    YAxis.Position := yNone;
    Title.Color := RGB(255, 255, 210);
    Title.ColorTo := RGB(255, 255, 210);
    Title.BorderColor := clBlack;
    Title.BorderWidth := 1;
    Title.GradientDirection := cgdVertical;
    Title.Size := 50;
    Title.Text := 'Database Chart';
    title.Font.Size := 14;
    Title.Font.Style := [fsBold];
    Background.GradientType := gtSolid;
    BackGround.ColorTo := clWhite;
    Legend.Visible := false;

    YAxis.AutoUnits := false;
    YGrid.MajorDistance := 50;
    YGrid.MinorDistance := 10;
    YGrid.MinorLineColor := clSilver;
    YGrid.MajorLineColor := clDkGray;
    YGrid.MinorLineStyle := psDash;

    Series.Add;

    with Series[0] do
    begin
      Pie.LegendOffsetTop := (DBAdvGDIPChartView1.Height div 2) - 150;
      Pie.LegendColor := RGB(94, 168, 79);
      Color := RGB(94, 168, 79);
      FieldNameValue := 'Product X';
      FieldNameXAxis := 'Sales by Region';
      LegendText := 'Product X';
      Pie.LegendTitleColor := RGB(94, 168, 79);
      Pie.ValueFont.Color := RGB(94, 168, 79);
    end;
    AdvChartColorSelector5.SelectedColor := RGB(94, 168, 79);

    Series.Add;

    with Series[1] do
    begin
      Pie.LegendOffsetTop := (DBAdvGDIPChartView1.Height div 2);
      Pie.LegendColor := RGB(121, 159, 184);
      Color := RGB(121, 159, 184);
      YAxis.Visible := false;
      FieldNameValue := 'Product Y';
      FieldNameXAxis := 'Sales by Region';
      LegendText := 'Product Y';
      Pie.LegendTitleColor := RGB(121, 159, 184);
      Pie.ValueFont.Color := RGB(121, 159, 184);
      Pie.Position := spCustom;
      Pie.Top := 50;
      Pie.Left := 200;
    end;

    AdvChartColorSelector6.SelectedColor := RGB(121, 159, 184);

    Series.Add;

    with Series[2] do
    begin
      Pie.LegendOffsetTop := (DBAdvGDIPChartView1.Height div 2) + 150;
      Pie.LegendColor := RGB(255, 163, 43);
      Color := RGB(255, 163, 43);
      YAxis.Visible := false;
      FieldNameValue := 'Combined';
      FieldNameXAxis := 'Sales by Region';
      LegendText := 'Combined';
      Pie.LegendTitleColor := RGB(255, 163, 43);
      Pie.ValueFont.Color := RGB(255, 163, 43);
    end;

    AdvChartColorSelector7.SelectedColor := RGB(255, 163, 43);

    for I := 0 to Series.Count - 1 do
    begin
      with Series[I] do
      begin
        YAxis.MajorUnit := 50;
        YAxis.MajorUnit := 25;
        Pie.LegendTitleVisible := true;
        pie.LegendOpacity := 50;
        pie.LegendOpacityto := 0;
        Pie.LegendTitleOpacity := 50;
        Pie.LegendGradientType := gtForwardDiagonal;
        Pie.LegendBorderColor := clBlack;
        Pie.LegendFont.Size := 10;
        ValueFormat := '$%g,000';
        Pie.ValueFont.Size := 10;
        ChartType := ctSpider;
        Opacity := 50;
        LineColor := clBlack;
        AutoRange := arCommonZeroBased;
        Pie.Size := 400;
        Pie.ShowValues := true;
        pie.LegendPosition := spCustom;
        Pie.Left := 300;
        Pie.Top := 250;
        Pie.Position := spCustom;
        Pie.ValuePosition := vpOutSideSlice;
        Pie.LegendOffsetLeft := DBAdvGDIPChartView1.Width - 120;
      end;
    end;

    ComboBox7.ItemIndex := 4;
    // open connection
    ADOTable1.Active := true;
  end;
end;

procedure TForm397.Image2Click(Sender: TObject);
begin
  ShowMessage('This is an overview of the features of the TMS Advanced Chart' + #13#10
    + 'Choose a topic on the left side and the content will be displayed on the right side' + #13#10 + #13#10
    + 'For more specific information about the functionality, hover the controls with the mouse');
end;

procedure TForm397.Label14Click(Sender: TObject);
begin
  ShellExecute(handle, 'open', 'http://www.tmssoftware.com/site/advchart.asp?s=faq', '', '', SW_SHOWNORMAL);
end;

procedure TForm397.Label28Click(Sender: TObject);
begin
  ShellExecute(handle, 'open', 'http://www.tmssoftware.com/site/advchart.asp', '', '', SW_SHOWNORMAL);
end;

procedure TForm397.ProcessSelection(idx: Integer);
var
  str: String;
begin
  PageControl1.ActivePageIndex := idx;
  case idx of
  0: str := 'Shows the features of all single serie types such as the color, shape of the bar and the different chart types.';
  1: str := 'Multipoint chart types to represent financial data.'+#13#10+'Use the combobox to select between OHLC and Candlestick types.';
  2: str := 'Show the features of all multiple serie types, stacked bars, stacked areas and more...' + #13#10 + 'When the bar type is chosen, the shape of the bar chart can be selected with the combobox between cylinder,rectangle and pyramid.';
  3: str := 'The complete range of pie type charts with unique features per chart type such as spider grid, pie chart, donut chart, half pie chart, half donut chart,...';
  4: str := 'This shows special chart types such as Error chart, Bubble chart, Arrow chart that use two values per datapoint.';
  5: str := 'Different marker types with the ability to add customized drawing and pictures.';
  6: str := 'Chart interaction: Scroll, Scale and Move within the data. Scale along the Y-axis via mouse click & drag in the Y-axis area. Click & drag on the X-axis area to zoom along the X-axis. Press Shift and left mouse click and drag the entire pane.';
  7: str := 'Add important remarks or mark points with Annotations. Annotations can be added per data point and can have different shapes and colors.';
  8: str := 'Move the mouse with the crosshair over the chart, when values are found, they can be displayed in different ways.';
  9: str := 'Turns the complete chart 90?to the right, This applies to all chart types as well as the Y-Axis and X-Axis and the interaction.';
  10: str := 'A sample of the Y-Values positioning / formatting that can be used to change the look and feel the values.';
  11: str := 'The X-Axis can be formatted in three ways: Custom X-Axis drawing with and event, with properties or with code.';
  12: str := 'Transforms the linear Y-Axis to a logarithmic Y-Axis, where logarithmic functions can be added.';
  end;
  StaticText1.Caption := str;
end;

procedure TForm397.RadioButton3Click(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to AdvGDIPChartView6.Panes.Count - 1 do
  begin
    with AdvGDIPChartView6.Panes[I] do
    begin
      if (Sender as TcheckBox).Checked then
      begin
        case (Sender as TcheckBox).Tag of
        0: Options := Options + [poVertScale];
        1: Options := Options + [poHorzScale];
        2: Options := Options + [poHorzScroll];
        3: Options := Options + [poVertScroll];
        4: Options := Options + [poMoving];
        end;
      end
      else
      begin
        case (Sender as TcheckBox).Tag of
        0: Options := Options - [poVertScale];
        1: Options := Options - [poHorzScale];
        2: Options := Options - [poHorzScroll];
        3: Options := Options - [poVertScroll];
        4: Options := Options - [poMoving];
        end;
      end;
    end;
  end;
  case (Sender as TcheckBox).Tag of
    0:;
    1:;
    2:;
    3:;
    4:;
  end;
end;

procedure TForm397.TrackBar1Change(Sender: TObject);
begin
  AdvGDIPChartView2.BeginUpdate;
  AdvGDIPChartView2.Panes[0].Series[0].Opacity := TrackBar1.Position;
  AdvGDIPChartView2.Panes[0].Series[0].OpacityTo := TrackBar1.Position;
  AdvGDIPChartView2.Panes[0].Series[0].LineOpacity := TrackBar1.Position;
  AdvGDIPChartView2.EndUpdate;
end;

procedure TForm397.TrackBar2Change(Sender: TObject);
var
  I: Integer;
begin
  AdvGDIPChartView1.BeginUpdate;
  for I := 0 to AdvGDIPChartView1.Panes[0].Series.Count - 1 do
  begin
    AdvGDIPChartView1.Panes[0].Series[I].Opacity := TrackBar2.Position;
    AdvGDIPChartView1.Panes[0].Series[I].OpacityTo := TrackBar2.Position;
    AdvGDIPChartView1.Panes[0].Series[I].LineOpacity := TrackBar2.Position;
  end;
  AdvGDIPChartView1.EndUpdate;
end;

procedure TForm397.TrackBar3Change(Sender: TObject);
begin
  AdvGDIPChartView3.BeginUpdate;
  AdvGDIPChartView3.Panes[0].Series[0].Marker.MarkerSize := TrackBar3.Position;
  AdvGDIPChartView3.Panes[0].Series[0].Marker.SelectedSize := TrackBar3.Position + 5;
  AdvGDIPChartView3.EndUpdate;
end;

procedure TForm397.TrackBar4Change(Sender: TObject);
begin
  AdvGDIPChartView3.BeginUpdate;
  AdvGDIPChartView3.Panes[0].Series[1].Marker.MarkerSize := TrackBar4.Position;
  AdvGDIPChartView3.Panes[0].Series[1].Marker.SelectedSize := TrackBar4.Position + 5;
  AdvGDIPChartView3.EndUpdate;
end;

procedure TForm397.UpdateMenu(idx: Integer; Mode: TMenuMode);
var
  i: integer;
begin
  Menu.BeginUpdate;
  for I := 0 to Length(Menu.Panes[0].Series[0].Points) - 1 do
  begin
    if I <> FSelectedIndex then
    begin
      if I = idx then
      begin
        if Mode = mmHover then
        begin
          Menu.Panes[0].Series[0].Points[I].Color := $FFCE67;
          Menu.Panes[0].Series[0].Points[I].ColorTo := $D9B057;
        end
        else if Mode = mmSelected then
        begin
          Menu.Panes[0].Series[0].Points[I].Color := $FFCE67;
          Menu.Panes[0].Series[0].Points[I].ColorTo := $D9B057;
        end
        else if Mode = mmDown then
        begin
          Menu.Panes[0].Series[0].Points[I].Color := clsilver;
          Menu.Panes[0].Series[0].Points[I].ColorTo := clSilver;
        end;
      end
      else
      begin
        Menu.Panes[0].Series[0].Points[I].Color := clNone;
        Menu.Panes[0].Series[0].Points[I].ColorTo := clNone;
      end;
    end;
  end;
  Menu.EndUpdate;
end;

procedure TForm397.WMPosChanged(var Message: TWMWindowPosChanged);
begin
  inherited;
  if Assigned(AdvGDIPChartView8) then
  begin
    if Assigned(AdvGDIPChartView8.Tracker.TrackerForm) then
    begin
      AdvGDIPChartView8.Tracker.TrackerForm.Left := self.Left + AdvGDIPChartView8.Left + Menu.Width + AdvGDIPChartView8.Width - AdvGDIPChartView8.Tracker.TrackerForm.Width - 10;
      AdvGDIPChartView8.Tracker.TrackerForm.Top := Self.Top + AdvGDIPChartView8.Top + AdvGDIPChartView8.Height - AdvGDIPChartView8.Tracker.TrackerForm.Height - 10;
    end;
  end;
end;

end.
