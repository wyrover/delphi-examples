object ControlsDemoForm: TControlsDemoForm
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 634
  ClientWidth = 712
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object URLLabel1: TURLLabel
    Left = 24
    Top = 24
    Width = 225
    Height = 13
    Cursor = crHandPoint
    AutoSize = False
    LinkFont.Charset = DEFAULT_CHARSET
    LinkFont.Color = clBlue
    LinkFont.Height = -11
    LinkFont.Name = 'Tahoma'
    LinkFont.Style = [fsUnderline]
    PassiveFont.Charset = DEFAULT_CHARSET
    PassiveFont.Color = clWindowText
    PassiveFont.Height = -11
    PassiveFont.Name = 'Tahoma'
    PassiveFont.Style = []
    Caption = 'http://www.scalabium.com'
    URL = 'www.scalabium.com'
    URLAsHint = False
    ShowPrefix = True
  end
  object GradientPanel1: TGradientPanel
    Left = 40
    Top = 368
    Width = 313
    Height = 121
    ColorFrom = clTeal
    ColorTo = clCream
    ColorCount = 64
    Direction = RightToLeft
  end
  object FlatGauge1: TFlatGauge
    Left = 72
    Top = 560
    Width = 201
    Height = 25
    AdvColorBorder = 0
    Color = clBtnFace
    ColorBorder = clCream
    BarColor = clGradientActiveCaption
    Progress = 25
    ParentColor = False
  end
  object FlatProgressBar1: TFlatProgressBar
    Left = 128
    Top = 600
    Width = 291
    Height = 16
    ColorElement = clLime
    Min = 0
    Max = 100
    Position = 25
  end
  object FlatPanel1: TFlatPanel
    Left = 183
    Top = 280
    Width = 313
    Height = 153
    Transparent = True
    Caption = 'FlatPanel1'
    ParentColor = True
    ColorHighLight = clGradientActiveCaption
    ColorShadow = clGradientActiveCaption
    TabOrder = 0
  end
  object FlatMemo1: TFlatMemo
    Left = 272
    Top = 120
    Width = 185
    Height = 89
    ColorBorder = clGradientActiveCaption
    ColorFlat = clCaptionText
    TabOrder = 1
    Lines.Strings = (
      'FlatMemo1')
  end
  object FlatEdit1: TFlatEdit
    Left = 72
    Top = 120
    Width = 121
    Height = 19
    ColorBorder = clGradientActiveCaption
    ColorFlat = clMenu
    TabOrder = 2
    Text = 'FlatEdit1'
  end
  object FlatButton1: TFlatButton
    Left = 392
    Top = 40
    Width = 145
    Height = 25
    Color = clGreen
    ColorFocused = clGreen
    ColorDown = clGreen
    ColorBorder = clGreen
    ColorHighLight = clGreen
    Caption = #27979#35797
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentColor = False
    TabOrder = 3
  end
  object FlatCheckBox1: TFlatCheckBox
    Left = 143
    Top = 232
    Width = 162
    Height = 25
    Caption = 'FlatCheckBox1'
    Color = clCaptionText
    ColorBorder = clGradientActiveCaption
    ParentColor = False
    TabOrder = 4
    TabStop = True
  end
  object FlatTabControl1: TFlatTabControl
    Left = 392
    Top = 385
    Width = 289
    Height = 193
    Tabs.Strings = (
      '1'
      '2'
      '3')
    TabOrder = 5
  end
  object Btn360Style1: TBtn360Style
    Left = 528
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Btn360Style1'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 6
    BkgColor = clBlue
    EdgColor = clSkyBlue
  end
end
