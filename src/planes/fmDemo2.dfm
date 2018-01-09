object Demo2Form: TDemo2Form
  Left = 0
  Top = 0
  Caption = 'Demo2Form'
  ClientHeight = 591
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object spl1: TSplitter
    Left = 0
    Top = 177
    Width = 751
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 123
  end
  object vTree: TVirtualStringTree
    Left = 0
    Top = 0
    Width = 751
    Height = 177
    Align = alTop
    Header.AutoSizeIndex = 0
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -11
    Header.Font.Name = 'Tahoma'
    Header.Font.Style = []
    Header.MainColumn = -1
    TabOrder = 0
    OnFreeNode = vTreeFreeNode
    OnGetText = vTreeGetText
    Columns = <>
  end
  object wb1: TWebBrowser
    Left = 0
    Top = 180
    Width = 751
    Height = 411
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 264
    ExplicitTop = 288
    ExplicitWidth = 300
    ExplicitHeight = 150
    ControlData = {
      4C0000009E4D00007A2A00000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
end
