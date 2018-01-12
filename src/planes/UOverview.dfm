object Form397: TForm397
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'TMS Advanced Charts Feature Overview'
  ClientHeight = 617
  ClientWidth = 1026
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 214
    Top = 0
    Width = 812
    Height = 617
    Margins.Left = 0
    ActivePage = TabSheet12
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object AdvGDIPChartView2: TAdvGDIPChartView
        Left = 0
        Top = 0
        Width = 804
        Height = 547
        ShowDesignHelper = True
        Align = alClient
        Color = 15921906
        Panes = <
          item
            Bands.Distance = 2.000000000000000000
            Background.Font.Charset = DEFAULT_CHARSET
            Background.Font.Color = clWindowText
            Background.Font.Height = -11
            Background.Font.Name = 'Tahoma'
            Background.Font.Style = []
            Background.GradientType = gtSolid
            BorderColor = clBlack
            CrossHair.CrossHairYValues.Position = [chYAxis]
            CrossHair.Distance = 0
            Height = 100.000000000000000000
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clWindowText
            Legend.Font.Height = -11
            Legend.Font.Name = 'Tahoma'
            Legend.Font.Style = []
            Legend.Left = 10
            Legend.Top = 10
            Name = 'ChartPane 1'
            Options = []
            Range.RangeTo = 20
            Series = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            XAxis.Color = 15921906
            XAxis.Font.Charset = DEFAULT_CHARSET
            XAxis.Font.Color = clWindowText
            XAxis.Font.Height = -11
            XAxis.Font.Name = 'Tahoma'
            XAxis.Font.Style = []
            XAxis.Size = 60
            XGrid.MinorDistance = 1
            XGrid.MajorDistance = 5
            XGrid.MinorLineColor = 15921906
            XGrid.MajorLineColor = clSilver
            XGrid.MinorLineStyle = psDot
            XGrid.MajorLineStyle = psSolid
            XGrid.MajorFont.Charset = DEFAULT_CHARSET
            XGrid.MajorFont.Color = clWindowText
            XGrid.MajorFont.Height = -11
            XGrid.MajorFont.Name = 'Tahoma'
            XGrid.MajorFont.Style = []
            XGrid.MinorFont.Charset = DEFAULT_CHARSET
            XGrid.MinorFont.Color = clWindowText
            XGrid.MinorFont.Height = -11
            XGrid.MinorFont.Name = 'Tahoma'
            XGrid.MinorFont.Style = []
            XGrid.Visible = True
            YAxis.Color = 15921906
            YAxis.Font.Charset = DEFAULT_CHARSET
            YAxis.Font.Color = clWindowText
            YAxis.Font.Height = -11
            YAxis.Font.Name = 'Tahoma'
            YAxis.Font.Style = []
            YAxis.Size = 60
            YGrid.MinorDistance = 1.000000000000000000
            YGrid.MajorDistance = 5.000000000000000000
            YGrid.MinorLineColor = 15921906
            YGrid.Visible = True
          end>
        Tracker.Font.Charset = DEFAULT_CHARSET
        Tracker.Font.Color = clWindowText
        Tracker.Font.Height = -11
        Tracker.Font.Name = 'Tahoma'
        Tracker.Font.Style = []
        Tracker.Title.Font.Charset = DEFAULT_CHARSET
        Tracker.Title.Font.Color = clWindowText
        Tracker.Title.Font.Height = -11
        Tracker.Title.Font.Name = 'Tahoma'
        Tracker.Title.Font.Style = []
        Tracker.Title.Text = 'TRACKER'
        Version = '3.2.1.4 SEPTEMBER, 2014'
        XAxisZoomSensitivity = 1.000000000000000000
        YAxisZoomSensitivity = 1.000000000000000000
        DoubleBuffered = True
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 792
        ExplicitHeight = 529
      end
      object Panel1: TPanel
        Left = 0
        Top = 547
        Width = 804
        Height = 60
        Align = alBottom
        TabOrder = 1
        ExplicitLeft = 3
        ExplicitTop = 538
        ExplicitWidth = 792
        object Label1: TLabel
          Left = 16
          Top = 7
          Width = 56
          Height = 13
          Caption = 'Chart type:'
        end
        object Label2: TLabel
          Left = 31
          Top = 35
          Width = 41
          Height = 13
          Caption = 'Opacity:'
        end
        object Label3: TLabel
          Left = 283
          Top = 8
          Width = 29
          Height = 13
          Caption = 'Color:'
        end
        object Label4: TLabel
          Left = 264
          Top = 33
          Width = 48
          Height = 13
          Caption = 'LineColor:'
        end
        object Label5: TLabel
          Left = 363
          Top = 32
          Width = 53
          Height = 13
          Caption = 'Bar Shape:'
        end
        object ComboBox1: TComboBox
          Left = 78
          Top = 5
          Width = 177
          Height = 21
          Hint = 'Change the charttype of the serie.'
          Style = csDropDownList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = ComboBox1Change
          Items.Strings = (
            'Line'
            'Area'
            'Bar'
            'LineBar'
            'Histogram'
            'LineHistogram'
            'Band'
            'Digital Line'
            'XY Line')
        end
        object TrackBar1: TTrackBar
          Left = 78
          Top = 26
          Width = 150
          Height = 33
          Hint = 'The Opacity of the serie.'
          Max = 255
          ParentShowHint = False
          Frequency = 15
          Position = 255
          ShowHint = True
          TabOrder = 1
          OnChange = TrackBar1Change
        end
        object AdvChartColorSelector2: TAdvChartColorSelector
          Left = 318
          Top = 4
          Width = 23
          Height = 22
          Hint = 
            'The color of the serie when the chart type is different from a l' +
            'ine chart. '
          TabOrder = 2
          AppearanceStyle = esOffice2003Classic
          Version = '1.3.5.0'
          SelectedColor = clNone
          ShowRGBHint = True
          AutoThemeAdapt = False
          BorderColor = -1
          BorderDownColor = 7021576
          BorderHotColor = clBlack
          Color = clBtnFace
          ColorDown = 11900292
          ColorHot = 14073525
          ColorDropDown = 16251129
          ColorSelected = 14604246
          ColorSelectedTo = clNone
          ShowHint = True
          Style = ssButton
          Tools = <
            item
              BackGroundColor = clBlack
              Caption = 'Automatic'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'Automatic'
              ItemType = itFullWidthButton
            end
            item
              BackGroundColor = clBlack
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13209
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13107
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13056
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697728
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clNavy
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3486515
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3355443
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clMaroon
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 26367
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clOlive
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGreen
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clTeal
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clBlue
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10053222
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGray
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clRed
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 39423
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52377
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6723891
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13421619
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16737843
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clPurple
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10066329
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clFuchsia
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52479
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clYellow
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clLime
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clAqua
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16763904
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697881
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clSilver
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13408767
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10079487
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10092543
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13434828
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16777164
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16764057
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16751052
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clWhite
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              Caption = 'More Colors...'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'More Color'
              ItemType = itFullWidthButton
            end>
          OnSelect = AdvChartColorSelector2Select
        end
        object AdvChartColorSelector3: TAdvChartColorSelector
          Left = 318
          Top = 29
          Width = 23
          Height = 22
          Hint = 'The color of the line chart.'
          TabOrder = 3
          AppearanceStyle = esOffice2003Classic
          Version = '1.3.5.0'
          SelectedColor = clNone
          ShowRGBHint = True
          AutoThemeAdapt = False
          BorderColor = -1
          BorderDownColor = 7021576
          BorderHotColor = clBlack
          Color = clBtnFace
          ColorDown = 11900292
          ColorHot = 14073525
          ColorDropDown = 16251129
          ColorSelected = 14604246
          ColorSelectedTo = clNone
          ShowHint = True
          Style = ssButton
          Tools = <
            item
              BackGroundColor = clBlack
              Caption = 'Automatic'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'Automatic'
              ItemType = itFullWidthButton
            end
            item
              BackGroundColor = clBlack
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13209
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13107
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13056
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697728
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clNavy
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3486515
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3355443
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clMaroon
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 26367
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clOlive
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGreen
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clTeal
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clBlue
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10053222
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGray
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clRed
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 39423
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52377
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6723891
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13421619
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16737843
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clPurple
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10066329
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clFuchsia
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52479
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clYellow
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clLime
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clAqua
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16763904
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697881
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clSilver
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13408767
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10079487
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10092543
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13434828
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16777164
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16764057
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16751052
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clWhite
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              Caption = 'More Colors...'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'More Color'
              ItemType = itFullWidthButton
            end>
          OnSelect = AdvChartColorSelector3Select
        end
        object CheckBox1: TCheckBox
          Left = 363
          Top = 6
          Width = 81
          Height = 17
          Hint = 'Enables 3D on the chart. The 3D offset can also be set.'
          Alignment = taLeftJustify
          BiDiMode = bdRightToLeftNoAlign
          Caption = '3D'
          ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = CheckBox1Click
        end
        object ComboBox2: TComboBox
          Left = 432
          Top = 29
          Width = 177
          Height = 21
          Hint = 
            'When using a bar chart, a secondary BarShape property can be use' +
            'd to switch between bars, cylinders and pyramids.'
          Style = csDropDownList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnChange = ComboBox2Change
          Items.Strings = (
            'Rectangle'
            'Cylinder'
            'Pyramid')
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object AdvGDIPChartView4: TAdvGDIPChartView
        Left = 0
        Top = 0
        Width = 804
        Height = 547
        ShowDesignHelper = True
        Align = alClient
        Color = 15921906
        Panes = <
          item
            Bands.Distance = 2.000000000000000000
            Background.Color = clWhite
            Background.Font.Charset = DEFAULT_CHARSET
            Background.Font.Color = clWindowText
            Background.Font.Height = -11
            Background.Font.Name = 'Tahoma'
            Background.Font.Style = []
            Background.GradientType = gtSolid
            BorderColor = clBlack
            CrossHair.CrossHairYValues.Position = [chYAxis]
            CrossHair.Distance = 0
            Height = 100.000000000000000000
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clWindowText
            Legend.Font.Height = -11
            Legend.Font.Name = 'Tahoma'
            Legend.Font.Style = []
            Legend.Left = 10
            Legend.Top = 10
            Name = 'ChartPane 1'
            Options = []
            Range.RangeTo = 20
            Series = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            XAxis.Color = 15921906
            XAxis.Font.Charset = DEFAULT_CHARSET
            XAxis.Font.Color = clWindowText
            XAxis.Font.Height = -11
            XAxis.Font.Name = 'Tahoma'
            XAxis.Font.Style = []
            XAxis.Size = 50
            XGrid.MinorDistance = 1
            XGrid.MajorDistance = 5
            XGrid.MinorLineColor = 15921906
            XGrid.MajorLineColor = clSilver
            XGrid.MinorLineStyle = psDot
            XGrid.MajorLineStyle = psSolid
            XGrid.MajorFont.Charset = DEFAULT_CHARSET
            XGrid.MajorFont.Color = clWindowText
            XGrid.MajorFont.Height = -11
            XGrid.MajorFont.Name = 'Tahoma'
            XGrid.MajorFont.Style = []
            XGrid.MinorFont.Charset = DEFAULT_CHARSET
            XGrid.MinorFont.Color = clWindowText
            XGrid.MinorFont.Height = -11
            XGrid.MinorFont.Name = 'Tahoma'
            XGrid.MinorFont.Style = []
            XGrid.Visible = True
            YAxis.Color = 15921906
            YAxis.Font.Charset = DEFAULT_CHARSET
            YAxis.Font.Color = clWindowText
            YAxis.Font.Height = -11
            YAxis.Font.Name = 'Tahoma'
            YAxis.Font.Style = []
            YAxis.Size = 60
            YGrid.MinorDistance = 1.000000000000000000
            YGrid.MajorDistance = 5.000000000000000000
            YGrid.MinorLineColor = 15921906
            YGrid.Visible = True
          end>
        Tracker.Font.Charset = DEFAULT_CHARSET
        Tracker.Font.Color = clWindowText
        Tracker.Font.Height = -11
        Tracker.Font.Name = 'Tahoma'
        Tracker.Font.Style = []
        Tracker.Title.Font.Charset = DEFAULT_CHARSET
        Tracker.Title.Font.Color = clWindowText
        Tracker.Title.Font.Height = -11
        Tracker.Title.Font.Name = 'Tahoma'
        Tracker.Title.Font.Style = []
        Tracker.Title.Text = 'TRACKER'
        Version = '3.2.1.4 SEPTEMBER, 2014'
        XAxisZoomSensitivity = 1.000000000000000000
        YAxisZoomSensitivity = 1.000000000000000000
        DoubleBuffered = True
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 792
        ExplicitHeight = 529
      end
      object Panel4: TPanel
        Left = 0
        Top = 547
        Width = 804
        Height = 60
        Align = alBottom
        TabOrder = 1
        ExplicitLeft = 3
        ExplicitTop = 538
        ExplicitWidth = 792
        object Label12: TLabel
          Left = 16
          Top = 24
          Width = 56
          Height = 13
          Caption = 'Chart type:'
        end
        object ComboBox6: TComboBox
          Left = 88
          Top = 21
          Width = 177
          Height = 21
          Hint = 'Change the charttype of the serie.'
          Style = csDropDownList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = ComboBox6Change
          Items.Strings = (
            'CandleStick'
            'LineCandleStick'
            'OHLC'
            'BoxPlot')
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel2: TPanel
        Left = 0
        Top = 547
        Width = 804
        Height = 60
        Align = alBottom
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitTop = 538
        ExplicitWidth = 792
        object Label6: TLabel
          Left = 16
          Top = 8
          Width = 56
          Height = 13
          Caption = 'Chart type:'
        end
        object Label7: TLabel
          Left = 31
          Top = 34
          Width = 41
          Height = 13
          Caption = 'Opacity:'
        end
        object Label10: TLabel
          Left = 291
          Top = 32
          Width = 53
          Height = 13
          Caption = 'Bar Shape:'
        end
        object ComboBox3: TComboBox
          Left = 88
          Top = 4
          Width = 177
          Height = 21
          Hint = 'Change the charttype of the serie.'
          Style = csDropDownList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = ComboBox3Change
          Items.Strings = (
            'Area'
            'Stacked Area'
            'Stacked Percentage Area'
            'Bar'
            'Stacked Bar'
            'Stacked Percentage Bar')
        end
        object TrackBar2: TTrackBar
          Left = 81
          Top = 25
          Width = 177
          Height = 32
          Hint = 'The Opacity of the serie.'
          Max = 255
          ParentShowHint = False
          Frequency = 15
          Position = 255
          ShowHint = True
          TabOrder = 1
          OnChange = TrackBar2Change
        end
        object CheckBox2: TCheckBox
          Left = 291
          Top = 6
          Width = 70
          Height = 17
          Hint = 'Enables 3D on the chart. The 3D offset can also be set.'
          Alignment = taLeftJustify
          BiDiMode = bdRightToLeftNoAlign
          Caption = '3D'
          ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = CheckBox2Click
        end
        object ComboBox4: TComboBox
          Left = 351
          Top = 29
          Width = 177
          Height = 21
          Hint = 
            'When using a bar chart, a secondary BarShape property can be use' +
            'd to switch between bars, cylinders and pyramids.'
          Style = csDropDownList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnChange = ComboBox4Change
          Items.Strings = (
            'Rectangle'
            'Cylinder'
            'Pyramid')
        end
      end
      object AdvGDIPChartView1: TAdvGDIPChartView
        Left = 0
        Top = 0
        Width = 804
        Height = 547
        ShowDesignHelper = True
        Align = alClient
        Color = 15921906
        Panes = <
          item
            Bands.Distance = 2.000000000000000000
            Background.Color = clWhite
            Background.Font.Charset = DEFAULT_CHARSET
            Background.Font.Color = clWindowText
            Background.Font.Height = -11
            Background.Font.Name = 'Tahoma'
            Background.Font.Style = []
            Background.GradientType = gtSolid
            BorderColor = clBlack
            CrossHair.CrossHairYValues.Position = [chYAxis]
            CrossHair.Distance = 0
            Height = 100.000000000000000000
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clWindowText
            Legend.Font.Height = -11
            Legend.Font.Name = 'Tahoma'
            Legend.Font.Style = []
            Legend.Left = 10
            Legend.Top = 10
            Name = 'ChartPane 1'
            Options = []
            Range.RangeTo = 20
            Series = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            XAxis.Color = 15921906
            XAxis.Font.Charset = DEFAULT_CHARSET
            XAxis.Font.Color = clWindowText
            XAxis.Font.Height = -11
            XAxis.Font.Name = 'Tahoma'
            XAxis.Font.Style = []
            XAxis.Size = 50
            XGrid.MinorDistance = 1
            XGrid.MajorDistance = 5
            XGrid.MinorLineColor = 15921906
            XGrid.MajorLineColor = clSilver
            XGrid.MinorLineStyle = psDot
            XGrid.MajorLineStyle = psSolid
            XGrid.MajorFont.Charset = DEFAULT_CHARSET
            XGrid.MajorFont.Color = clWindowText
            XGrid.MajorFont.Height = -11
            XGrid.MajorFont.Name = 'Tahoma'
            XGrid.MajorFont.Style = []
            XGrid.MinorFont.Charset = DEFAULT_CHARSET
            XGrid.MinorFont.Color = clWindowText
            XGrid.MinorFont.Height = -11
            XGrid.MinorFont.Name = 'Tahoma'
            XGrid.MinorFont.Style = []
            XGrid.Visible = True
            YAxis.Color = 15921906
            YAxis.Font.Charset = DEFAULT_CHARSET
            YAxis.Font.Color = clWindowText
            YAxis.Font.Height = -11
            YAxis.Font.Name = 'Tahoma'
            YAxis.Font.Style = []
            YAxis.Size = 60
            YGrid.MinorDistance = 1.000000000000000000
            YGrid.MajorDistance = 5.000000000000000000
            YGrid.MinorLineColor = 15921906
            YGrid.Visible = True
          end>
        TabOrder = 1
        Tracker.Font.Charset = DEFAULT_CHARSET
        Tracker.Font.Color = clWindowText
        Tracker.Font.Height = -11
        Tracker.Font.Name = 'Tahoma'
        Tracker.Font.Style = []
        Tracker.Title.Font.Charset = DEFAULT_CHARSET
        Tracker.Title.Font.Color = clWindowText
        Tracker.Title.Font.Height = -11
        Tracker.Title.Font.Name = 'Tahoma'
        Tracker.Title.Font.Style = []
        Tracker.Title.Text = 'TRACKER'
        Version = '3.2.1.4 SEPTEMBER, 2014'
        XAxisZoomSensitivity = 1.000000000000000000
        YAxisZoomSensitivity = 1.000000000000000000
        DoubleBuffered = True
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 792
        ExplicitHeight = 529
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'TabSheet4'
      ImageIndex = 3
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBAdvGDIPChartView1: TDBAdvGDIPChartView
        Left = 0
        Top = 0
        Width = 804
        Height = 547
        ShowDesignHelper = True
        Align = alClient
        Panes = <
          item
            Bands.Distance = 2.000000000000000000
            Background.Font.Charset = DEFAULT_CHARSET
            Background.Font.Color = clWindowText
            Background.Font.Height = -11
            Background.Font.Name = 'Tahoma'
            Background.Font.Style = []
            CrossHair.CrossHairYValues.Position = [chYAxis]
            CrossHair.Distance = 0
            Height = 100.000000000000000000
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clWindowText
            Legend.Font.Height = -11
            Legend.Font.Name = 'Tahoma'
            Legend.Font.Style = []
            Name = 'ChartPane 0'
            Options = []
            Range.RangeTo = 9
            Series = <
              item
                Pie.ValueFont.Charset = DEFAULT_CHARSET
                Pie.ValueFont.Color = clWindowText
                Pie.ValueFont.Height = -11
                Pie.ValueFont.Name = 'Tahoma'
                Pie.ValueFont.Style = []
                Pie.LegendOffsetLeft = 7
                Pie.LegendFont.Charset = DEFAULT_CHARSET
                Pie.LegendFont.Color = clWindowText
                Pie.LegendFont.Height = -11
                Pie.LegendFont.Name = 'Tahoma'
                Pie.LegendFont.Style = []
                Annotations = <>
                CrossHairYValue.BorderWidth = 0
                CrossHairYValue.Font.Charset = DEFAULT_CHARSET
                CrossHairYValue.Font.Color = clWindowText
                CrossHairYValue.Font.Height = -11
                CrossHairYValue.Font.Name = 'Tahoma'
                CrossHairYValue.Font.Style = []
                CrossHairYValue.GradientSteps = 0
                LegendText = 'Serie 0'
                Marker.MarkerColorTo = clBlack
                Name = 'Serie 0'
                ValueFont.Charset = DEFAULT_CHARSET
                ValueFont.Color = clWindowText
                ValueFont.Height = -11
                ValueFont.Name = 'Tahoma'
                ValueFont.Style = []
                ValueFormat = '%g'
                XAxis.DateTimeFont.Charset = DEFAULT_CHARSET
                XAxis.DateTimeFont.Color = clWindowText
                XAxis.DateTimeFont.Height = -11
                XAxis.DateTimeFont.Name = 'Tahoma'
                XAxis.DateTimeFont.Style = []
                XAxis.MajorFont.Charset = DEFAULT_CHARSET
                XAxis.MajorFont.Color = clWindowText
                XAxis.MajorFont.Height = -11
                XAxis.MajorFont.Name = 'Tahoma'
                XAxis.MajorFont.Style = []
                XAxis.MajorUnit = 1.000000000000000000
                XAxis.MajorUnitSpacing = 0
                XAxis.MinorFont.Charset = DEFAULT_CHARSET
                XAxis.MinorFont.Color = clWindowText
                XAxis.MinorFont.Height = -11
                XAxis.MinorFont.Name = 'Tahoma'
                XAxis.MinorFont.Style = []
                XAxis.MinorUnit = 1.000000000000000000
                XAxis.MinorUnitSpacing = 0
                XAxis.TextTop.Font.Charset = DEFAULT_CHARSET
                XAxis.TextTop.Font.Color = clWindowText
                XAxis.TextTop.Font.Height = -11
                XAxis.TextTop.Font.Name = 'Tahoma'
                XAxis.TextTop.Font.Style = []
                XAxis.TextBottom.Font.Charset = DEFAULT_CHARSET
                XAxis.TextBottom.Font.Color = clWindowText
                XAxis.TextBottom.Font.Height = -11
                XAxis.TextBottom.Font.Name = 'Tahoma'
                XAxis.TextBottom.Font.Style = []
                YAxis.MajorFont.Charset = DEFAULT_CHARSET
                YAxis.MajorFont.Color = clWindowText
                YAxis.MajorFont.Height = -11
                YAxis.MajorFont.Name = 'Tahoma'
                YAxis.MajorFont.Style = []
                YAxis.MajorUnitSpacing = 0
                YAxis.MinorFont.Charset = DEFAULT_CHARSET
                YAxis.MinorFont.Color = clWindowText
                YAxis.MinorFont.Height = -11
                YAxis.MinorFont.Name = 'Tahoma'
                YAxis.MinorFont.Style = []
                YAxis.MinorUnitSpacing = 0
                YAxis.TextLeft.Font.Charset = DEFAULT_CHARSET
                YAxis.TextLeft.Font.Color = clWindowText
                YAxis.TextLeft.Font.Height = -11
                YAxis.TextLeft.Font.Name = 'Tahoma'
                YAxis.TextLeft.Font.Style = []
                YAxis.TextRight.Font.Charset = DEFAULT_CHARSET
                YAxis.TextRight.Font.Color = clWindowText
                YAxis.TextRight.Font.Height = -11
                YAxis.TextRight.Font.Name = 'Tahoma'
                YAxis.TextRight.Font.Style = []
                BarValueTextFont.Charset = DEFAULT_CHARSET
                BarValueTextFont.Color = clWindowText
                BarValueTextFont.Height = -11
                BarValueTextFont.Name = 'Tahoma'
                BarValueTextFont.Style = []
                XAxisGroups = <>
                SerieType = stNormal
              end
              item
                Pie.ValueFont.Charset = DEFAULT_CHARSET
                Pie.ValueFont.Color = clWindowText
                Pie.ValueFont.Height = -11
                Pie.ValueFont.Name = 'Tahoma'
                Pie.ValueFont.Style = []
                Pie.LegendFont.Charset = DEFAULT_CHARSET
                Pie.LegendFont.Color = clWindowText
                Pie.LegendFont.Height = -11
                Pie.LegendFont.Name = 'Tahoma'
                Pie.LegendFont.Style = []
                Annotations = <>
                CrossHairYValue.BorderWidth = 0
                CrossHairYValue.Font.Charset = DEFAULT_CHARSET
                CrossHairYValue.Font.Color = clWindowText
                CrossHairYValue.Font.Height = -11
                CrossHairYValue.Font.Name = 'Tahoma'
                CrossHairYValue.Font.Style = []
                CrossHairYValue.GradientSteps = 0
                LegendText = 'Serie 1'
                Marker.MarkerColorTo = clBlack
                Name = 'Serie 1'
                ValueFont.Charset = DEFAULT_CHARSET
                ValueFont.Color = clWindowText
                ValueFont.Height = -11
                ValueFont.Name = 'Tahoma'
                ValueFont.Style = []
                ValueFormat = '%g'
                XAxis.DateTimeFont.Charset = DEFAULT_CHARSET
                XAxis.DateTimeFont.Color = clWindowText
                XAxis.DateTimeFont.Height = -11
                XAxis.DateTimeFont.Name = 'Tahoma'
                XAxis.DateTimeFont.Style = []
                XAxis.MajorFont.Charset = DEFAULT_CHARSET
                XAxis.MajorFont.Color = clWindowText
                XAxis.MajorFont.Height = -11
                XAxis.MajorFont.Name = 'Tahoma'
                XAxis.MajorFont.Style = []
                XAxis.MajorUnit = 1.000000000000000000
                XAxis.MajorUnitSpacing = 0
                XAxis.MinorFont.Charset = DEFAULT_CHARSET
                XAxis.MinorFont.Color = clWindowText
                XAxis.MinorFont.Height = -11
                XAxis.MinorFont.Name = 'Tahoma'
                XAxis.MinorFont.Style = []
                XAxis.MinorUnit = 1.000000000000000000
                XAxis.MinorUnitSpacing = 0
                XAxis.TextTop.Font.Charset = DEFAULT_CHARSET
                XAxis.TextTop.Font.Color = clWindowText
                XAxis.TextTop.Font.Height = -11
                XAxis.TextTop.Font.Name = 'Tahoma'
                XAxis.TextTop.Font.Style = []
                XAxis.TextBottom.Font.Charset = DEFAULT_CHARSET
                XAxis.TextBottom.Font.Color = clWindowText
                XAxis.TextBottom.Font.Height = -11
                XAxis.TextBottom.Font.Name = 'Tahoma'
                XAxis.TextBottom.Font.Style = []
                YAxis.MajorFont.Charset = DEFAULT_CHARSET
                YAxis.MajorFont.Color = clWindowText
                YAxis.MajorFont.Height = -11
                YAxis.MajorFont.Name = 'Tahoma'
                YAxis.MajorFont.Style = []
                YAxis.MajorUnitSpacing = 0
                YAxis.MinorFont.Charset = DEFAULT_CHARSET
                YAxis.MinorFont.Color = clWindowText
                YAxis.MinorFont.Height = -11
                YAxis.MinorFont.Name = 'Tahoma'
                YAxis.MinorFont.Style = []
                YAxis.MinorUnitSpacing = 0
                YAxis.TextLeft.Font.Charset = DEFAULT_CHARSET
                YAxis.TextLeft.Font.Color = clWindowText
                YAxis.TextLeft.Font.Height = -11
                YAxis.TextLeft.Font.Name = 'Tahoma'
                YAxis.TextLeft.Font.Style = []
                YAxis.TextRight.Font.Charset = DEFAULT_CHARSET
                YAxis.TextRight.Font.Color = clWindowText
                YAxis.TextRight.Font.Height = -11
                YAxis.TextRight.Font.Name = 'Tahoma'
                YAxis.TextRight.Font.Style = []
                BarValueTextFont.Charset = DEFAULT_CHARSET
                BarValueTextFont.Color = clWindowText
                BarValueTextFont.Height = -11
                BarValueTextFont.Name = 'Tahoma'
                BarValueTextFont.Style = []
                XAxisGroups = <>
                SerieType = stNormal
              end
              item
                Pie.ValueFont.Charset = DEFAULT_CHARSET
                Pie.ValueFont.Color = clWindowText
                Pie.ValueFont.Height = -11
                Pie.ValueFont.Name = 'Tahoma'
                Pie.ValueFont.Style = []
                Pie.LegendFont.Charset = DEFAULT_CHARSET
                Pie.LegendFont.Color = clWindowText
                Pie.LegendFont.Height = -11
                Pie.LegendFont.Name = 'Tahoma'
                Pie.LegendFont.Style = []
                Annotations = <>
                CrossHairYValue.BorderWidth = 0
                CrossHairYValue.Font.Charset = DEFAULT_CHARSET
                CrossHairYValue.Font.Color = clWindowText
                CrossHairYValue.Font.Height = -11
                CrossHairYValue.Font.Name = 'Tahoma'
                CrossHairYValue.Font.Style = []
                CrossHairYValue.GradientSteps = 0
                LegendText = 'Serie 2'
                Marker.MarkerColorTo = clBlack
                Name = 'Serie 2'
                ValueFont.Charset = DEFAULT_CHARSET
                ValueFont.Color = clWindowText
                ValueFont.Height = -11
                ValueFont.Name = 'Tahoma'
                ValueFont.Style = []
                ValueFormat = '%g'
                XAxis.DateTimeFont.Charset = DEFAULT_CHARSET
                XAxis.DateTimeFont.Color = clWindowText
                XAxis.DateTimeFont.Height = -11
                XAxis.DateTimeFont.Name = 'Tahoma'
                XAxis.DateTimeFont.Style = []
                XAxis.MajorFont.Charset = DEFAULT_CHARSET
                XAxis.MajorFont.Color = clWindowText
                XAxis.MajorFont.Height = -11
                XAxis.MajorFont.Name = 'Tahoma'
                XAxis.MajorFont.Style = []
                XAxis.MajorUnit = 1.000000000000000000
                XAxis.MajorUnitSpacing = 0
                XAxis.MinorFont.Charset = DEFAULT_CHARSET
                XAxis.MinorFont.Color = clWindowText
                XAxis.MinorFont.Height = -11
                XAxis.MinorFont.Name = 'Tahoma'
                XAxis.MinorFont.Style = []
                XAxis.MinorUnit = 1.000000000000000000
                XAxis.MinorUnitSpacing = 0
                XAxis.TextTop.Font.Charset = DEFAULT_CHARSET
                XAxis.TextTop.Font.Color = clWindowText
                XAxis.TextTop.Font.Height = -11
                XAxis.TextTop.Font.Name = 'Tahoma'
                XAxis.TextTop.Font.Style = []
                XAxis.TextBottom.Font.Charset = DEFAULT_CHARSET
                XAxis.TextBottom.Font.Color = clWindowText
                XAxis.TextBottom.Font.Height = -11
                XAxis.TextBottom.Font.Name = 'Tahoma'
                XAxis.TextBottom.Font.Style = []
                YAxis.MajorFont.Charset = DEFAULT_CHARSET
                YAxis.MajorFont.Color = clWindowText
                YAxis.MajorFont.Height = -11
                YAxis.MajorFont.Name = 'Tahoma'
                YAxis.MajorFont.Style = []
                YAxis.MajorUnitSpacing = 0
                YAxis.MinorFont.Charset = DEFAULT_CHARSET
                YAxis.MinorFont.Color = clWindowText
                YAxis.MinorFont.Height = -11
                YAxis.MinorFont.Name = 'Tahoma'
                YAxis.MinorFont.Style = []
                YAxis.MinorUnitSpacing = 0
                YAxis.TextLeft.Font.Charset = DEFAULT_CHARSET
                YAxis.TextLeft.Font.Color = clWindowText
                YAxis.TextLeft.Font.Height = -11
                YAxis.TextLeft.Font.Name = 'Tahoma'
                YAxis.TextLeft.Font.Style = []
                YAxis.TextRight.Font.Charset = DEFAULT_CHARSET
                YAxis.TextRight.Font.Color = clWindowText
                YAxis.TextRight.Font.Height = -11
                YAxis.TextRight.Font.Name = 'Tahoma'
                YAxis.TextRight.Font.Style = []
                BarValueTextFont.Charset = DEFAULT_CHARSET
                BarValueTextFont.Color = clWindowText
                BarValueTextFont.Height = -11
                BarValueTextFont.Name = 'Tahoma'
                BarValueTextFont.Style = []
                XAxisGroups = <>
                SerieType = stNormal
              end>
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Title.Text = 'TAdvChartView'
            XAxis.Font.Charset = DEFAULT_CHARSET
            XAxis.Font.Color = clWindowText
            XAxis.Font.Height = -11
            XAxis.Font.Name = 'Tahoma'
            XAxis.Font.Style = []
            XAxis.Text = 'X-axis'
            XGrid.MajorFont.Charset = DEFAULT_CHARSET
            XGrid.MajorFont.Color = clWindowText
            XGrid.MajorFont.Height = -11
            XGrid.MajorFont.Name = 'Tahoma'
            XGrid.MajorFont.Style = []
            XGrid.MinorFont.Charset = DEFAULT_CHARSET
            XGrid.MinorFont.Color = clWindowText
            XGrid.MinorFont.Height = -11
            XGrid.MinorFont.Name = 'Tahoma'
            XGrid.MinorFont.Style = []
            YAxis.Font.Charset = DEFAULT_CHARSET
            YAxis.Font.Color = clWindowText
            YAxis.Font.Height = -11
            YAxis.Font.Name = 'Tahoma'
            YAxis.Font.Style = []
            YAxis.Size = 40
            YAxis.Text = 'Y-axis'
            YGrid.MinorDistance = 1.000000000000000000
            YGrid.MajorDistance = 2.000000000000000000
          end>
        Tracker.Font.Charset = DEFAULT_CHARSET
        Tracker.Font.Color = clWindowText
        Tracker.Font.Height = -11
        Tracker.Font.Name = 'Tahoma'
        Tracker.Font.Style = []
        Tracker.Title.Font.Charset = DEFAULT_CHARSET
        Tracker.Title.Font.Color = clWindowText
        Tracker.Title.Font.Height = -11
        Tracker.Title.Font.Name = 'Tahoma'
        Tracker.Title.Font.Style = []
        Tracker.Title.Text = 'TRACKER'
        Version = '3.2.1.4 SEPTEMBER, 2014'
        XAxisZoomSensitivity = 1.000000000000000000
        YAxisZoomSensitivity = 1.000000000000000000
        DoubleBuffered = True
        ExplicitWidth = 798
        ExplicitHeight = 535
      end
      object Panel5: TPanel
        Left = 0
        Top = 547
        Width = 804
        Height = 60
        Align = alBottom
        TabOrder = 1
        ExplicitLeft = 3
        ExplicitTop = 538
        ExplicitWidth = 792
        object Label13: TLabel
          Left = 16
          Top = 24
          Width = 56
          Height = 13
          Caption = 'Chart type:'
        end
        object Label18: TLabel
          Left = 602
          Top = 8
          Width = 33
          Height = 13
          Caption = 'Serie 1'
        end
        object Label19: TLabel
          Left = 641
          Top = 8
          Width = 33
          Height = 13
          Caption = 'Serie 2'
        end
        object Label20: TLabel
          Left = 684
          Top = 8
          Width = 33
          Height = 13
          Caption = 'Serie 3'
        end
        object ComboBox7: TComboBox
          Left = 88
          Top = 21
          Width = 177
          Height = 21
          Hint = 'Change the chart type of the serie.'
          Style = csDropDownList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = ComboBox7Change
          Items.Strings = (
            'Pie'
            'HalfPie'
            'Donut'
            'HalfDonut'
            'Spider'
            'HalfSpider'
            'VarRadiusPie'
            'VarRadiusHalfPie'
            'VarRadiusDonut'
            'VarRadiusHalfDonut'
            'SizedPie'
            'SizedHalfPie'
            'SizedDonut'
            'SizedHalfDonut')
        end
        object Button1: TButton
          Left = 283
          Top = 19
          Width = 89
          Height = 25
          Hint = 'Loads the Database values for year 2007'
          Caption = 'Load Sales 2007'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 378
          Top = 19
          Width = 88
          Height = 25
          Hint = 'Loads the Database values for year 2008'
          Caption = 'Load Sales 2008'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = Button2Click
        end
        object CheckBox3: TCheckBox
          Left = 480
          Top = 23
          Width = 97
          Height = 17
          Hint = 'Show the donuts stacked on eachother instead of divided.'
          Caption = 'Stacked Donuts'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = CheckBox3Click
        end
        object AdvChartColorSelector5: TAdvChartColorSelector
          Left = 608
          Top = 27
          Width = 23
          Height = 22
          Hint = 'The color of the first serie.'
          TabOrder = 4
          AppearanceStyle = esOffice2003Classic
          Version = '1.3.5.0'
          SelectedColor = clNone
          ShowRGBHint = True
          AutoThemeAdapt = False
          BorderColor = clBlack
          BorderDownColor = 7021576
          BorderHotColor = clBlack
          Color = clBtnFace
          ColorDown = 11900292
          ColorHot = 14073525
          ColorDropDown = 16251129
          ColorSelected = 14604246
          ColorSelectedTo = clNone
          ShowHint = True
          Style = ssButton
          Tools = <
            item
              BackGroundColor = clBlack
              Caption = 'Automatic'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'Automatic'
              ItemType = itFullWidthButton
            end
            item
              BackGroundColor = clBlack
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13209
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13107
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13056
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697728
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clNavy
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3486515
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3355443
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clMaroon
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 26367
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clOlive
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGreen
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clTeal
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clBlue
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10053222
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGray
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clRed
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 39423
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52377
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6723891
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13421619
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16737843
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clPurple
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10066329
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clFuchsia
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52479
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clYellow
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clLime
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clAqua
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16763904
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697881
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clSilver
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13408767
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10079487
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10092543
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13434828
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16777164
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16764057
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16751052
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clWhite
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              Caption = 'More Colors...'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'More Color'
              ItemType = itFullWidthButton
            end>
          OnSelect = AdvChartColorSelector5Select
        end
        object AdvChartColorSelector6: TAdvChartColorSelector
          Left = 647
          Top = 27
          Width = 23
          Height = 22
          Hint = 'The color of the second serie.'
          TabOrder = 5
          AppearanceStyle = esOffice2003Classic
          Version = '1.3.5.0'
          SelectedColor = clNone
          ShowRGBHint = True
          AutoThemeAdapt = False
          BorderColor = clBlack
          BorderDownColor = 7021576
          BorderHotColor = clBlack
          Color = clBtnFace
          ColorDown = 11900292
          ColorHot = 14073525
          ColorDropDown = 16251129
          ColorSelected = 14604246
          ColorSelectedTo = clNone
          ShowHint = True
          Style = ssButton
          Tools = <
            item
              BackGroundColor = clBlack
              Caption = 'Automatic'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'Automatic'
              ItemType = itFullWidthButton
            end
            item
              BackGroundColor = clBlack
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13209
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13107
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13056
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697728
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clNavy
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3486515
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3355443
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clMaroon
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 26367
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clOlive
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGreen
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clTeal
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clBlue
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10053222
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGray
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clRed
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 39423
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52377
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6723891
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13421619
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16737843
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clPurple
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10066329
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clFuchsia
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52479
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clYellow
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clLime
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clAqua
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16763904
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697881
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clSilver
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13408767
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10079487
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10092543
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13434828
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16777164
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16764057
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16751052
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clWhite
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              Caption = 'More Colors...'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'More Color'
              ItemType = itFullWidthButton
            end>
          OnSelect = AdvChartColorSelector6Select
        end
        object AdvChartColorSelector7: TAdvChartColorSelector
          Left = 688
          Top = 27
          Width = 23
          Height = 22
          Hint = 'The color of the thirth serie.'
          TabOrder = 6
          AppearanceStyle = esOffice2003Classic
          Version = '1.3.5.0'
          SelectedColor = clNone
          ShowRGBHint = True
          AutoThemeAdapt = False
          BorderColor = clBlack
          BorderDownColor = 7021576
          BorderHotColor = clBlack
          Color = clBtnFace
          ColorDown = 11900292
          ColorHot = 14073525
          ColorDropDown = 16251129
          ColorSelected = 14604246
          ColorSelectedTo = clNone
          ShowHint = True
          Style = ssButton
          Tools = <
            item
              BackGroundColor = clBlack
              Caption = 'Automatic'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'Automatic'
              ItemType = itFullWidthButton
            end
            item
              BackGroundColor = clBlack
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13209
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13107
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13056
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697728
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clNavy
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3486515
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3355443
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clMaroon
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 26367
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clOlive
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGreen
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clTeal
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clBlue
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10053222
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGray
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clRed
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 39423
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52377
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6723891
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13421619
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16737843
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clPurple
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10066329
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clFuchsia
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52479
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clYellow
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clLime
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clAqua
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16763904
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697881
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clSilver
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13408767
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10079487
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10092543
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13434828
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16777164
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16764057
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16751052
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clWhite
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              Caption = 'More Colors...'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'More Color'
              ItemType = itFullWidthButton
            end>
          OnSelect = AdvChartColorSelector7Select
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'TabSheet5'
      ImageIndex = 4
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel8: TPanel
        Left = 0
        Top = 547
        Width = 804
        Height = 60
        Align = alBottom
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitTop = 538
        ExplicitWidth = 792
        object Label21: TLabel
          Left = 16
          Top = 24
          Width = 56
          Height = 13
          Caption = 'Chart type:'
        end
        object Label22: TLabel
          Left = 288
          Top = 24
          Width = 29
          Height = 13
          Caption = 'Color:'
        end
        object ComboBox9: TComboBox
          Left = 88
          Top = 21
          Width = 177
          Height = 21
          Hint = 'The Chart type of the serie.'
          Style = csDropDownList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = ComboBox9Change
          Items.Strings = (
            'Error'
            'Arrow'
            'Bubble')
        end
        object AdvChartColorSelector8: TAdvChartColorSelector
          Left = 339
          Top = 20
          Width = 23
          Height = 22
          Hint = 'The color of the serie.'
          TabOrder = 1
          AppearanceStyle = esOffice2003Classic
          Version = '1.3.5.0'
          SelectedColor = clNone
          ShowRGBHint = True
          AutoThemeAdapt = False
          BorderColor = clBlack
          BorderDownColor = 7021576
          BorderHotColor = clBlack
          Color = clBtnFace
          ColorDown = 11900292
          ColorHot = 14073525
          ColorDropDown = 16251129
          ColorSelected = 14604246
          ColorSelectedTo = clNone
          ShowHint = True
          Style = ssButton
          Tools = <
            item
              BackGroundColor = clBlack
              Caption = 'Automatic'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'Automatic'
              ItemType = itFullWidthButton
            end
            item
              BackGroundColor = clBlack
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13209
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13107
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13056
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697728
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clNavy
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3486515
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3355443
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clMaroon
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 26367
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clOlive
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGreen
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clTeal
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clBlue
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10053222
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGray
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clRed
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 39423
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52377
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6723891
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13421619
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16737843
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clPurple
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10066329
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clFuchsia
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52479
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clYellow
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clLime
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clAqua
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16763904
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697881
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clSilver
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13408767
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10079487
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10092543
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13434828
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16777164
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16764057
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16751052
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clWhite
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              Caption = 'More Colors...'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'More Color'
              ItemType = itFullWidthButton
            end>
          OnSelect = AdvChartColorSelector8Select
        end
      end
      object AdvGDIPChartView5: TAdvGDIPChartView
        Left = 0
        Top = 0
        Width = 804
        Height = 547
        ShowDesignHelper = True
        Align = alClient
        Color = 15921906
        Panes = <
          item
            Bands.Distance = 2.000000000000000000
            Background.Color = clWhite
            Background.Font.Charset = DEFAULT_CHARSET
            Background.Font.Color = clWindowText
            Background.Font.Height = -11
            Background.Font.Name = 'Tahoma'
            Background.Font.Style = []
            Background.GradientType = gtSolid
            BorderColor = clBlack
            CrossHair.CrossHairYValues.Position = [chYAxis]
            CrossHair.Distance = 0
            Height = 100.000000000000000000
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clWindowText
            Legend.Font.Height = -11
            Legend.Font.Name = 'Tahoma'
            Legend.Font.Style = []
            Legend.Left = 10
            Legend.Top = 10
            Name = 'ChartPane 1'
            Options = []
            Range.RangeTo = 20
            Series = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            XAxis.Color = 15921906
            XAxis.Font.Charset = DEFAULT_CHARSET
            XAxis.Font.Color = clWindowText
            XAxis.Font.Height = -11
            XAxis.Font.Name = 'Tahoma'
            XAxis.Font.Style = []
            XAxis.Size = 50
            XGrid.MinorDistance = 1
            XGrid.MajorDistance = 5
            XGrid.MinorLineColor = 15921906
            XGrid.MajorLineColor = clSilver
            XGrid.MinorLineStyle = psDot
            XGrid.MajorLineStyle = psSolid
            XGrid.MajorFont.Charset = DEFAULT_CHARSET
            XGrid.MajorFont.Color = clWindowText
            XGrid.MajorFont.Height = -11
            XGrid.MajorFont.Name = 'Tahoma'
            XGrid.MajorFont.Style = []
            XGrid.MinorFont.Charset = DEFAULT_CHARSET
            XGrid.MinorFont.Color = clWindowText
            XGrid.MinorFont.Height = -11
            XGrid.MinorFont.Name = 'Tahoma'
            XGrid.MinorFont.Style = []
            XGrid.Visible = True
            YAxis.Color = 15921906
            YAxis.Font.Charset = DEFAULT_CHARSET
            YAxis.Font.Color = clWindowText
            YAxis.Font.Height = -11
            YAxis.Font.Name = 'Tahoma'
            YAxis.Font.Style = []
            YAxis.Size = 60
            YGrid.MinorDistance = 1.000000000000000000
            YGrid.MajorDistance = 5.000000000000000000
            YGrid.MinorLineColor = 15921906
            YGrid.Visible = True
          end>
        TabOrder = 1
        Tracker.Font.Charset = DEFAULT_CHARSET
        Tracker.Font.Color = clWindowText
        Tracker.Font.Height = -11
        Tracker.Font.Name = 'Tahoma'
        Tracker.Font.Style = []
        Tracker.Title.Font.Charset = DEFAULT_CHARSET
        Tracker.Title.Font.Color = clWindowText
        Tracker.Title.Font.Height = -11
        Tracker.Title.Font.Name = 'Tahoma'
        Tracker.Title.Font.Style = []
        Tracker.Title.Text = 'TRACKER'
        Version = '3.2.1.4 SEPTEMBER, 2014'
        XAxisZoomSensitivity = 1.000000000000000000
        YAxisZoomSensitivity = 1.000000000000000000
        DoubleBuffered = True
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 792
        ExplicitHeight = 529
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'TabSheet6'
      ImageIndex = 5
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel3: TPanel
        Left = 0
        Top = 547
        Width = 804
        Height = 60
        Align = alBottom
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitTop = 538
        ExplicitWidth = 792
        object Label8: TLabel
          Left = 16
          Top = 8
          Width = 64
          Height = 13
          Caption = 'Type Serie 1:'
        end
        object Label9: TLabel
          Left = 256
          Top = 8
          Width = 23
          Height = 13
          Caption = 'Size:'
        end
        object Label11: TLabel
          Left = 451
          Top = 8
          Width = 29
          Height = 13
          Caption = 'Color:'
        end
        object Label15: TLabel
          Left = 16
          Top = 35
          Width = 64
          Height = 13
          Caption = 'Type Serie 2:'
        end
        object Label16: TLabel
          Left = 451
          Top = 36
          Width = 29
          Height = 13
          Caption = 'Color:'
        end
        object Label17: TLabel
          Left = 256
          Top = 36
          Width = 23
          Height = 13
          Caption = 'Size:'
        end
        object ComboBox5: TComboBox
          Left = 90
          Top = 5
          Width = 145
          Height = 21
          Hint = 'The marker type of the first serie.'
          Style = csDropDownList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = ComboBox5Change
          Items.Strings = (
            'Circle'
            'Square'
            'Diamond'
            'Triangle'
            'Picture')
        end
        object TrackBar3: TTrackBar
          Left = 285
          Top = 0
          Width = 150
          Height = 33
          Hint = 'The size of the markers.'
          Max = 50
          Min = 5
          ParentShowHint = False
          Frequency = 5
          Position = 5
          ShowHint = True
          TabOrder = 1
          OnChange = TrackBar3Change
        end
        object AdvChartColorSelector1: TAdvChartColorSelector
          Left = 486
          Top = 3
          Width = 23
          Height = 22
          Hint = 'The color of the markers.'
          TabOrder = 2
          AppearanceStyle = esOffice2003Classic
          Version = '1.3.5.0'
          SelectedColor = clNone
          ShowRGBHint = True
          AutoThemeAdapt = False
          BorderColor = -1
          BorderDownColor = 7021576
          BorderHotColor = clBlack
          Color = clBtnFace
          ColorDown = 11900292
          ColorHot = 14073525
          ColorDropDown = 16251129
          ColorSelected = 14604246
          ColorSelectedTo = clNone
          ShowHint = True
          Style = ssButton
          Tools = <
            item
              BackGroundColor = clBlack
              Caption = 'Automatic'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'Automatic'
              ItemType = itFullWidthButton
            end
            item
              BackGroundColor = clBlack
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13209
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13107
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13056
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697728
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clNavy
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3486515
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3355443
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clMaroon
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 26367
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clOlive
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGreen
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clTeal
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clBlue
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10053222
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGray
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clRed
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 39423
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52377
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6723891
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13421619
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16737843
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clPurple
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10066329
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clFuchsia
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52479
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clYellow
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clLime
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clAqua
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16763904
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697881
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clSilver
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13408767
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10079487
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10092543
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13434828
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16777164
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16764057
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16751052
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clWhite
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              Caption = 'More Colors...'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'More Color'
              ItemType = itFullWidthButton
            end>
          OnSelect = AdvChartColorSelector1Select
        end
        object ComboBox8: TComboBox
          Left = 90
          Top = 32
          Width = 145
          Height = 21
          Hint = 'The marker type of the second serie.'
          Style = csDropDownList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnChange = ComboBox8Change
          Items.Strings = (
            'Circle'
            'Square'
            'Diamond'
            'Triangle'
            'Picture')
        end
        object AdvChartColorSelector4: TAdvChartColorSelector
          Left = 486
          Top = 31
          Width = 23
          Height = 22
          Hint = 'The color of the markers.'
          TabOrder = 4
          AppearanceStyle = esOffice2003Classic
          Version = '1.3.5.0'
          SelectedColor = clNone
          ShowRGBHint = True
          AutoThemeAdapt = False
          BorderColor = -1
          BorderDownColor = 7021576
          BorderHotColor = clBlack
          Color = clBtnFace
          ColorDown = 11900292
          ColorHot = 14073525
          ColorDropDown = 16251129
          ColorSelected = 14604246
          ColorSelectedTo = clNone
          ShowHint = True
          Style = ssButton
          Tools = <
            item
              BackGroundColor = clBlack
              Caption = 'Automatic'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'Automatic'
              ItemType = itFullWidthButton
            end
            item
              BackGroundColor = clBlack
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13209
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13107
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13056
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697728
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clNavy
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3486515
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3355443
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clMaroon
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 26367
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clOlive
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGreen
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clTeal
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clBlue
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10053222
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGray
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clRed
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 39423
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52377
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6723891
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13421619
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16737843
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clPurple
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10066329
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clFuchsia
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52479
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clYellow
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clLime
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clAqua
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16763904
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697881
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clSilver
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13408767
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10079487
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10092543
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13434828
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16777164
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16764057
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16751052
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clWhite
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              Caption = 'More Colors...'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'More Color'
              ItemType = itFullWidthButton
            end>
          OnSelect = AdvChartColorSelector4Select
        end
        object TrackBar4: TTrackBar
          Left = 285
          Top = 29
          Width = 150
          Height = 30
          Hint = 'The size of the markers.'
          Max = 50
          Min = 5
          ParentShowHint = False
          Frequency = 5
          Position = 5
          ShowHint = True
          TabOrder = 5
          OnChange = TrackBar4Change
        end
      end
      object AdvGDIPChartView3: TAdvGDIPChartView
        Left = 0
        Top = 0
        Width = 804
        Height = 547
        ShowDesignHelper = True
        Align = alClient
        Color = 15921906
        Panes = <
          item
            Bands.Distance = 2.000000000000000000
            Background.Color = clWhite
            Background.Font.Charset = DEFAULT_CHARSET
            Background.Font.Color = clWindowText
            Background.Font.Height = -11
            Background.Font.Name = 'Tahoma'
            Background.Font.Style = []
            Background.GradientType = gtSolid
            BorderColor = clBlack
            CrossHair.CrossHairYValues.Position = [chYAxis]
            CrossHair.Distance = 0
            Height = 100.000000000000000000
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clWindowText
            Legend.Font.Height = -11
            Legend.Font.Name = 'Tahoma'
            Legend.Font.Style = []
            Legend.Left = 10
            Legend.Top = 10
            Name = 'ChartPane 1'
            Options = []
            Range.RangeTo = 20
            Series = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            XAxis.Color = 15921906
            XAxis.Font.Charset = DEFAULT_CHARSET
            XAxis.Font.Color = clWindowText
            XAxis.Font.Height = -11
            XAxis.Font.Name = 'Tahoma'
            XAxis.Font.Style = []
            XAxis.Size = 50
            XGrid.MinorDistance = 1
            XGrid.MajorDistance = 5
            XGrid.MinorLineColor = 15921906
            XGrid.MajorLineColor = clSilver
            XGrid.MinorLineStyle = psDot
            XGrid.MajorLineStyle = psSolid
            XGrid.MajorFont.Charset = DEFAULT_CHARSET
            XGrid.MajorFont.Color = clWindowText
            XGrid.MajorFont.Height = -11
            XGrid.MajorFont.Name = 'Tahoma'
            XGrid.MajorFont.Style = []
            XGrid.MinorFont.Charset = DEFAULT_CHARSET
            XGrid.MinorFont.Color = clWindowText
            XGrid.MinorFont.Height = -11
            XGrid.MinorFont.Name = 'Tahoma'
            XGrid.MinorFont.Style = []
            XGrid.Visible = True
            YAxis.Color = 15921906
            YAxis.Font.Charset = DEFAULT_CHARSET
            YAxis.Font.Color = clWindowText
            YAxis.Font.Height = -11
            YAxis.Font.Name = 'Tahoma'
            YAxis.Font.Style = []
            YAxis.Size = 60
            YGrid.MinorDistance = 1.000000000000000000
            YGrid.MajorDistance = 5.000000000000000000
            YGrid.MinorLineColor = 15921906
            YGrid.Visible = True
          end>
        TabOrder = 1
        Tracker.Font.Charset = DEFAULT_CHARSET
        Tracker.Font.Color = clWindowText
        Tracker.Font.Height = -11
        Tracker.Font.Name = 'Tahoma'
        Tracker.Font.Style = []
        Tracker.Title.Font.Charset = DEFAULT_CHARSET
        Tracker.Title.Font.Color = clWindowText
        Tracker.Title.Font.Height = -11
        Tracker.Title.Font.Name = 'Tahoma'
        Tracker.Title.Font.Style = []
        Tracker.Title.Text = 'TRACKER'
        Version = '3.2.1.4 SEPTEMBER, 2014'
        XAxisZoomSensitivity = 1.000000000000000000
        YAxisZoomSensitivity = 1.000000000000000000
        DoubleBuffered = True
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 792
        ExplicitHeight = 529
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'TabSheet7'
      ImageIndex = 6
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object AdvGDIPChartView6: TAdvGDIPChartView
        Left = 3
        Top = 3
        Width = 792
        Height = 529
        ShowDesignHelper = True
        Align = alClient
        Color = 15921906
        Panes = <
          item
            Bands.Distance = 2.000000000000000000
            Background.Color = clWhite
            Background.Font.Charset = DEFAULT_CHARSET
            Background.Font.Color = clWindowText
            Background.Font.Height = -11
            Background.Font.Name = 'Tahoma'
            Background.Font.Style = []
            Background.GradientType = gtSolid
            BorderColor = clBlack
            CrossHair.CrossHairYValues.Position = [chYAxis]
            CrossHair.Distance = 0
            Height = 100.000000000000000000
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clWindowText
            Legend.Font.Height = -11
            Legend.Font.Name = 'Tahoma'
            Legend.Font.Style = []
            Legend.Left = 10
            Legend.Top = 10
            Name = 'ChartPane 1'
            Options = []
            Range.RangeTo = 50
            Series = <>
            Splitter.Height = 5
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            XAxis.Color = 15921906
            XAxis.Font.Charset = DEFAULT_CHARSET
            XAxis.Font.Color = clWindowText
            XAxis.Font.Height = -11
            XAxis.Font.Name = 'Tahoma'
            XAxis.Font.Style = []
            XAxis.Size = 50
            XGrid.MinorDistance = 1
            XGrid.MajorDistance = 5
            XGrid.MinorLineColor = 15921906
            XGrid.MajorLineColor = clSilver
            XGrid.MinorLineStyle = psDot
            XGrid.MajorLineStyle = psSolid
            XGrid.MajorFont.Charset = DEFAULT_CHARSET
            XGrid.MajorFont.Color = clWindowText
            XGrid.MajorFont.Height = -11
            XGrid.MajorFont.Name = 'Tahoma'
            XGrid.MajorFont.Style = []
            XGrid.MinorFont.Charset = DEFAULT_CHARSET
            XGrid.MinorFont.Color = clWindowText
            XGrid.MinorFont.Height = -11
            XGrid.MinorFont.Name = 'Tahoma'
            XGrid.MinorFont.Style = []
            XGrid.Visible = True
            YAxis.Color = 15921906
            YAxis.Font.Charset = DEFAULT_CHARSET
            YAxis.Font.Color = clWindowText
            YAxis.Font.Height = -11
            YAxis.Font.Name = 'Tahoma'
            YAxis.Font.Style = []
            YAxis.Size = 60
            YGrid.MinorDistance = 1.000000000000000000
            YGrid.MajorDistance = 5.000000000000000000
            YGrid.MinorLineColor = 15921906
            YGrid.Visible = True
          end>
        TabStop = True
        Tracker.Font.Charset = DEFAULT_CHARSET
        Tracker.Font.Color = clWindowText
        Tracker.Font.Height = -11
        Tracker.Font.Name = 'Tahoma'
        Tracker.Font.Style = []
        Tracker.Title.Font.Charset = DEFAULT_CHARSET
        Tracker.Title.Font.Color = clWindowText
        Tracker.Title.Font.Height = -11
        Tracker.Title.Font.Name = 'Tahoma'
        Tracker.Title.Font.Style = []
        Tracker.Title.Text = 'TRACKER'
        Version = '3.2.1.4 SEPTEMBER, 2014'
        XAxisZoomSensitivity = 1.000000000000000000
        YAxisZoomSensitivity = 1.000000000000000000
        DoubleBuffered = True
      end
      object Panel9: TPanel
        Left = 3
        Top = 538
        Width = 792
        Height = 60
        Align = alBottom
        TabOrder = 1
        object Label23: TLabel
          Left = 16
          Top = 24
          Width = 29
          Height = 13
          BiDiMode = bdLeftToRight
          Caption = 'Color:'
          ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = True
        end
        object AdvChartColorSelector9: TAdvChartColorSelector
          Left = 51
          Top = 20
          Width = 23
          Height = 22
          Hint = 'The color of the serie.'
          TabOrder = 0
          AppearanceStyle = esOffice2003Classic
          Version = '1.3.5.0'
          SelectedColor = clNone
          ShowRGBHint = True
          AutoThemeAdapt = False
          BorderColor = clBlack
          BorderDownColor = 7021576
          BorderHotColor = clBlack
          Color = clBtnFace
          ColorDown = 11900292
          ColorHot = 14073525
          ColorDropDown = 16251129
          ColorSelected = 14604246
          ColorSelectedTo = clNone
          ShowHint = True
          Style = ssButton
          Tools = <
            item
              BackGroundColor = clBlack
              Caption = 'Automatic'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'Automatic'
              ItemType = itFullWidthButton
            end
            item
              BackGroundColor = clBlack
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13209
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13107
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13056
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697728
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clNavy
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3486515
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3355443
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clMaroon
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 26367
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clOlive
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGreen
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clTeal
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clBlue
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10053222
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGray
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clRed
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 39423
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52377
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6723891
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13421619
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16737843
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clPurple
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10066329
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clFuchsia
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52479
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clYellow
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clLime
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clAqua
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16763904
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697881
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clSilver
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13408767
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10079487
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10092543
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13434828
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16777164
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16764057
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16751052
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clWhite
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              Caption = 'More Colors...'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'More Color'
              ItemType = itFullWidthButton
            end>
          OnSelect = AdvChartColorSelector9Select
        end
        object CheckBox4: TCheckBox
          Left = 96
          Top = 23
          Width = 129
          Height = 17
          Hint = 
            'Enables synchronized panes, which allows panes to automatically ' +
            'scroll horizontal along with the scrolled pane.'
          Caption = 'Synchronized Panes'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = CheckBox4Click
        end
        object RadioButton1: TCheckBox
          Tag = 4
          Left = 487
          Top = 8
          Width = 113
          Height = 17
          Hint = 
            'Allows the panes to be switched. To switch : Hold the SHIFT butt' +
            'on on the keyboard and drag the pane. Keep holding the SHIFT key' +
            ' and release the mouse on above the second pane.'
          Caption = 'Pane Drag-Drop'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 2
          OnClick = RadioButton3Click
        end
        object RadioButton2: TCheckBox
          Tag = 1
          Left = 249
          Top = 31
          Width = 113
          Height = 17
          Hint = 
            'Enables horizontal scaling on the X-Axis. To scale: hold the lef' +
            't button of the mouse on the X-Axis and drag left / right.'
          Caption = 'Horizontal Scale'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = RadioButton3Click
        end
        object RadioButton3: TCheckBox
          Left = 249
          Top = 8
          Width = 113
          Height = 17
          Hint = 
            'Enables vertical scaling on the Y-Axis. To scale: hold the left ' +
            'button of the mouse on the Y-Axis and drag up / down.'
          Caption = 'Vertical Scale'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 4
          OnClick = RadioButton3Click
        end
        object RadioButton4: TCheckBox
          Tag = 3
          Left = 368
          Top = 8
          Width = 113
          Height = 17
          Hint = 
            'Enables vertical scrolling on the series region. To scroll: hold' +
            ' the left button of the mouse on the series region and drag up /' +
            ' down.'
          Caption = 'Vertical Scroll'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = RadioButton3Click
        end
        object RadioButton5: TCheckBox
          Tag = 2
          Left = 368
          Top = 31
          Width = 113
          Height = 17
          Hint = 
            'Enables vertical scrolling on the series region. To scroll: hold' +
            ' the left button of the mouse on the series region and drag left' +
            ' / right.'
          Caption = 'Horizontal Scroll'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 6
          OnClick = RadioButton3Click
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'TabSheet8'
      ImageIndex = 7
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object AdvGDIPChartView7: TAdvGDIPChartView
        Left = 0
        Top = 0
        Width = 804
        Height = 547
        ShowDesignHelper = True
        Align = alClient
        Color = 15921906
        Panes = <
          item
            Bands.Distance = 2.000000000000000000
            Background.Color = clWhite
            Background.Font.Charset = DEFAULT_CHARSET
            Background.Font.Color = clWindowText
            Background.Font.Height = -11
            Background.Font.Name = 'Tahoma'
            Background.Font.Style = []
            Background.GradientType = gtSolid
            BorderColor = clBlack
            CrossHair.CrossHairYValues.Position = [chYAxis]
            CrossHair.Distance = 0
            Height = 100.000000000000000000
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clWindowText
            Legend.Font.Height = -11
            Legend.Font.Name = 'Tahoma'
            Legend.Font.Style = []
            Legend.Left = 10
            Legend.Top = 10
            Name = 'ChartPane 1'
            Options = []
            Range.RangeTo = 20
            Series = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            XAxis.Color = 15921906
            XAxis.Font.Charset = DEFAULT_CHARSET
            XAxis.Font.Color = clWindowText
            XAxis.Font.Height = -11
            XAxis.Font.Name = 'Tahoma'
            XAxis.Font.Style = []
            XAxis.Size = 50
            XGrid.MinorDistance = 1
            XGrid.MajorDistance = 5
            XGrid.MinorLineColor = 15921906
            XGrid.MajorLineColor = clSilver
            XGrid.MinorLineStyle = psDot
            XGrid.MajorLineStyle = psSolid
            XGrid.MajorFont.Charset = DEFAULT_CHARSET
            XGrid.MajorFont.Color = clWindowText
            XGrid.MajorFont.Height = -11
            XGrid.MajorFont.Name = 'Tahoma'
            XGrid.MajorFont.Style = []
            XGrid.MinorFont.Charset = DEFAULT_CHARSET
            XGrid.MinorFont.Color = clWindowText
            XGrid.MinorFont.Height = -11
            XGrid.MinorFont.Name = 'Tahoma'
            XGrid.MinorFont.Style = []
            XGrid.Visible = True
            YAxis.Color = 15921906
            YAxis.Font.Charset = DEFAULT_CHARSET
            YAxis.Font.Color = clWindowText
            YAxis.Font.Height = -11
            YAxis.Font.Name = 'Tahoma'
            YAxis.Font.Style = []
            YAxis.Size = 60
            YGrid.MinorDistance = 1.000000000000000000
            YGrid.MajorDistance = 5.000000000000000000
            YGrid.MinorLineColor = 15921906
            YGrid.Visible = True
          end>
        Tracker.Font.Charset = DEFAULT_CHARSET
        Tracker.Font.Color = clWindowText
        Tracker.Font.Height = -11
        Tracker.Font.Name = 'Tahoma'
        Tracker.Font.Style = []
        Tracker.Title.Font.Charset = DEFAULT_CHARSET
        Tracker.Title.Font.Color = clWindowText
        Tracker.Title.Font.Height = -11
        Tracker.Title.Font.Name = 'Tahoma'
        Tracker.Title.Font.Style = []
        Tracker.Title.Text = 'TRACKER'
        Version = '3.2.1.4 SEPTEMBER, 2014'
        XAxisZoomSensitivity = 1.000000000000000000
        YAxisZoomSensitivity = 1.000000000000000000
        DoubleBuffered = True
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 792
        ExplicitHeight = 529
      end
      object Panel10: TPanel
        Left = 0
        Top = 547
        Width = 804
        Height = 60
        Align = alBottom
        TabOrder = 1
        ExplicitLeft = 3
        ExplicitTop = 538
        ExplicitWidth = 792
        object Label24: TLabel
          Left = 343
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Point:'
        end
        object Label25: TLabel
          Left = 343
          Top = 36
          Width = 28
          Height = 13
          Caption = 'Type:'
        end
        object Label26: TLabel
          Left = 480
          Top = 9
          Width = 29
          Height = 13
          Caption = 'Color:'
        end
        object Label31: TLabel
          Left = 4
          Top = 3
          Width = 82
          Height = 13
          Caption = 'Annotation Text:'
        end
        object SpinEdit1: TSpinEdit
          Left = 377
          Top = 5
          Width = 48
          Height = 22
          Hint = 'The index of the point you wish to display to annotation.'
          MaxValue = 20
          MinValue = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Value = 0
        end
        object Button3: TButton
          Left = 552
          Top = 3
          Width = 98
          Height = 25
          Hint = 'Adds the annotation to the chart.'
          Caption = 'Add Annotation'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = Button3Click
        end
        object ComboBox10: TComboBox
          Left = 377
          Top = 33
          Width = 160
          Height = 21
          Hint = 'The type of the annotation.'
          Style = csDropDownList
          ItemIndex = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Text = 'Rectangle'
          Items.Strings = (
            'Rectangle'
            'Circle'
            'RoundRect'
            'Balloon'
            'Line')
        end
        object AdvChartColorSelector10: TAdvChartColorSelector
          Left = 514
          Top = 5
          Width = 23
          Height = 22
          Hint = 'The color of the annotation.'
          TabOrder = 3
          AppearanceStyle = esOffice2003Classic
          Version = '1.3.5.0'
          SelectedColor = 16767935
          ShowRGBHint = True
          AutoThemeAdapt = False
          BorderColor = clBlack
          BorderDownColor = 7021576
          BorderHotColor = clBlack
          Color = clBtnFace
          ColorDown = 11900292
          ColorHot = 14073525
          ColorDropDown = 16251129
          ColorSelected = 14604246
          ColorSelectedTo = clNone
          ShowHint = True
          Style = ssButton
          Tools = <
            item
              BackGroundColor = clBlack
              Caption = 'Automatic'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'Automatic'
              ItemType = itFullWidthButton
            end
            item
              BackGroundColor = clBlack
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13209
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13107
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13056
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697728
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clNavy
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3486515
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3355443
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clMaroon
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 26367
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clOlive
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGreen
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clTeal
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clBlue
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10053222
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGray
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clRed
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 39423
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52377
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6723891
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13421619
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16737843
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clPurple
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10066329
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clFuchsia
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52479
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clYellow
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clLime
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clAqua
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16763904
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697881
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clSilver
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13408767
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10079487
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10092543
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13434828
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16777164
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16764057
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16751052
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clWhite
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              Caption = 'More Colors...'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'More Color'
              ItemType = itFullWidthButton
            end>
        end
        object Memo1: TMemo
          Left = 92
          Top = 0
          Width = 245
          Height = 52
          Hint = 'The text that will be displayed in the annotation.'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'TabSheet9'
      ImageIndex = 11
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object AdvGDIPChartView8: TAdvGDIPChartView
        Left = 0
        Top = 0
        Width = 804
        Height = 547
        ShowDesignHelper = True
        Align = alClient
        Color = 15921906
        Panes = <
          item
            Bands.Distance = 2.000000000000000000
            Background.Color = clWhite
            Background.Font.Charset = DEFAULT_CHARSET
            Background.Font.Color = clWindowText
            Background.Font.Height = -11
            Background.Font.Name = 'Tahoma'
            Background.Font.Style = []
            Background.GradientType = gtSolid
            BorderColor = clBlack
            CrossHair.CrossHairYValues.Position = [chYAxis]
            CrossHair.Distance = 0
            Height = 100.000000000000000000
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clWindowText
            Legend.Font.Height = -11
            Legend.Font.Name = 'Tahoma'
            Legend.Font.Style = []
            Legend.Left = 10
            Legend.Top = 10
            Name = 'ChartPane 1'
            Options = []
            Range.RangeTo = 20
            Series = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            XAxis.Color = 15921906
            XAxis.Font.Charset = DEFAULT_CHARSET
            XAxis.Font.Color = clWindowText
            XAxis.Font.Height = -11
            XAxis.Font.Name = 'Tahoma'
            XAxis.Font.Style = []
            XAxis.Size = 50
            XGrid.MinorDistance = 1
            XGrid.MajorDistance = 5
            XGrid.MinorLineColor = 15921906
            XGrid.MajorLineColor = clSilver
            XGrid.MinorLineStyle = psDot
            XGrid.MajorLineStyle = psSolid
            XGrid.MajorFont.Charset = DEFAULT_CHARSET
            XGrid.MajorFont.Color = clWindowText
            XGrid.MajorFont.Height = -11
            XGrid.MajorFont.Name = 'Tahoma'
            XGrid.MajorFont.Style = []
            XGrid.MinorFont.Charset = DEFAULT_CHARSET
            XGrid.MinorFont.Color = clWindowText
            XGrid.MinorFont.Height = -11
            XGrid.MinorFont.Name = 'Tahoma'
            XGrid.MinorFont.Style = []
            XGrid.Visible = True
            YAxis.Color = 15921906
            YAxis.Font.Charset = DEFAULT_CHARSET
            YAxis.Font.Color = clWindowText
            YAxis.Font.Height = -11
            YAxis.Font.Name = 'Tahoma'
            YAxis.Font.Style = []
            YAxis.Position = yRight
            YAxis.Size = 60
            YGrid.MinorDistance = 1.000000000000000000
            YGrid.MajorDistance = 5.000000000000000000
            YGrid.MinorLineColor = 15921906
            YGrid.Visible = True
          end>
        Tracker.Font.Charset = DEFAULT_CHARSET
        Tracker.Font.Color = clWindowText
        Tracker.Font.Height = -11
        Tracker.Font.Name = 'Tahoma'
        Tracker.Font.Style = []
        Tracker.Title.Font.Charset = DEFAULT_CHARSET
        Tracker.Title.Font.Color = clWindowText
        Tracker.Title.Font.Height = -11
        Tracker.Title.Font.Name = 'Tahoma'
        Tracker.Title.Font.Style = []
        Tracker.Title.Text = 'TRACKER'
        Version = '3.2.1.4 SEPTEMBER, 2014'
        XAxisZoomSensitivity = 1.000000000000000000
        YAxisZoomSensitivity = 1.000000000000000000
        DoubleBuffered = True
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 792
        ExplicitHeight = 529
      end
      object Panel11: TPanel
        Left = 0
        Top = 547
        Width = 804
        Height = 60
        Align = alBottom
        TabOrder = 1
        ExplicitLeft = 3
        ExplicitTop = 538
        ExplicitWidth = 792
        object Label30: TLabel
          Left = 10
          Top = 7
          Width = 28
          Height = 13
          Caption = 'Type:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 10
          Top = 35
          Width = 29
          Height = 13
          Caption = 'Color:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object ComboBox11: TComboBox
          Left = 54
          Top = 4
          Width = 203
          Height = 21
          Hint = 'The type of the crosshair.'
          Style = csDropDownList
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnChange = ComboBox11Change
          Items.Strings = (
            'None'
            'Small CrossHair'
            'FullSize CrossHair At Cursor'
            'FullSize CrossHair At Series')
        end
        object CheckBox10: TCheckBox
          Left = 300
          Top = 8
          Width = 94
          Height = 17
          Hint = 
            'Shows the found serie values of the chart on at the selected pos' +
            'itions.'
          Caption = 'Serie values'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 1
          OnClick = CheckBox10Click
        end
        object CheckBox11: TCheckBox
          Left = 416
          Top = 8
          Width = 109
          Height = 17
          Hint = 'Shows the Y-Position value of the crosshair.'
          Caption = 'Y-Position value'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = CheckBox11Click
        end
        object CheckBox13: TCheckBox
          Left = 300
          Top = 31
          Width = 80
          Height = 17
          Hint = 'The found serie values will be displayed in the tracker.'
          Caption = 'Valuetracker'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 3
          OnClick = CheckBox13Click
        end
        object CheckBox12: TCheckBox
          Left = 416
          Top = 31
          Width = 72
          Height = 17
          Hint = 'The found serie values will be displayed on the Y-Axis.'
          Caption = 'Y-Axis'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = CheckBox12Click
        end
        object CheckBox14: TCheckBox
          Left = 525
          Top = 31
          Width = 67
          Height = 17
          Hint = 'The found serie values will be displayed at the cursor.'
          Caption = 'Cursor'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 5
          OnClick = CheckBox14Click
        end
        object AdvChartColorSelector11: TAdvChartColorSelector
          Left = 54
          Top = 31
          Width = 23
          Height = 22
          Hint = 'The color of the crosshair.'
          TabOrder = 6
          AppearanceStyle = esOffice2003Classic
          Version = '1.3.5.0'
          SelectedColor = clNone
          ShowRGBHint = True
          AutoThemeAdapt = False
          BorderColor = clBlack
          BorderDownColor = 7021576
          BorderHotColor = clBlack
          Color = clBtnFace
          ColorDown = 11900292
          ColorHot = 14073525
          ColorDropDown = 16251129
          ColorSelected = 14604246
          ColorSelectedTo = clNone
          ShowHint = True
          Style = ssButton
          Tools = <
            item
              BackGroundColor = clBlack
              Caption = 'Automatic'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'Automatic'
              ItemType = itFullWidthButton
            end
            item
              BackGroundColor = clBlack
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13209
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13107
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13056
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697728
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clNavy
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3486515
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3355443
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clMaroon
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 26367
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clOlive
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGreen
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clTeal
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clBlue
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10053222
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGray
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clRed
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 39423
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52377
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6723891
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13421619
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16737843
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clPurple
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10066329
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clFuchsia
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52479
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clYellow
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clLime
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clAqua
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16763904
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697881
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clSilver
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13408767
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10079487
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10092543
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13434828
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16777164
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16764057
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16751052
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clWhite
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              Caption = 'More Colors...'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'More Color'
              ItemType = itFullWidthButton
            end>
          OnSelect = AdvChartColorSelector11Select
        end
        object CheckBox6: TCheckBox
          Left = 525
          Top = 8
          Width = 108
          Height = 17
          Hint = 'Enables the tracker window.'
          Caption = 'Tracker Window'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = CheckBox6Click
        end
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'TabSheet10'
      ImageIndex = 9
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object AdvGDIPChartView9: TAdvGDIPChartView
        Left = 3
        Top = 3
        Width = 792
        Height = 529
        ShowDesignHelper = True
        Align = alClient
        Color = 15921906
        Panes = <
          item
            Bands.Distance = 2.000000000000000000
            Background.Color = clWhite
            Background.Font.Charset = DEFAULT_CHARSET
            Background.Font.Color = clWindowText
            Background.Font.Height = -11
            Background.Font.Name = 'Tahoma'
            Background.Font.Style = []
            Background.GradientType = gtSolid
            BorderColor = clBlack
            CrossHair.CrossHairYValues.Position = [chYAxis]
            CrossHair.Distance = 0
            Height = 100.000000000000000000
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clWindowText
            Legend.Font.Height = -11
            Legend.Font.Name = 'Tahoma'
            Legend.Font.Style = []
            Legend.Left = 10
            Legend.Top = 10
            Name = 'ChartPane 1'
            Options = []
            Series = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            XAxis.Color = 15921906
            XAxis.Font.Charset = DEFAULT_CHARSET
            XAxis.Font.Color = clWindowText
            XAxis.Font.Height = -11
            XAxis.Font.Name = 'Tahoma'
            XAxis.Font.Style = []
            XAxis.Size = 50
            XGrid.MinorDistance = 1
            XGrid.MajorDistance = 5
            XGrid.MinorLineColor = 15921906
            XGrid.MajorLineColor = clSilver
            XGrid.MinorLineStyle = psDot
            XGrid.MajorLineStyle = psSolid
            XGrid.MajorFont.Charset = DEFAULT_CHARSET
            XGrid.MajorFont.Color = clWindowText
            XGrid.MajorFont.Height = -11
            XGrid.MajorFont.Name = 'Tahoma'
            XGrid.MajorFont.Style = []
            XGrid.MinorFont.Charset = DEFAULT_CHARSET
            XGrid.MinorFont.Color = clWindowText
            XGrid.MinorFont.Height = -11
            XGrid.MinorFont.Name = 'Tahoma'
            XGrid.MinorFont.Style = []
            XGrid.Visible = True
            YAxis.Color = 15921906
            YAxis.Font.Charset = DEFAULT_CHARSET
            YAxis.Font.Color = clWindowText
            YAxis.Font.Height = -11
            YAxis.Font.Name = 'Tahoma'
            YAxis.Font.Style = []
            YAxis.Size = 60
            YGrid.MinorDistance = 1.000000000000000000
            YGrid.MajorDistance = 5.000000000000000000
            YGrid.MinorLineColor = 15921906
            YGrid.Visible = True
          end>
        Tracker.Font.Charset = DEFAULT_CHARSET
        Tracker.Font.Color = clWindowText
        Tracker.Font.Height = -11
        Tracker.Font.Name = 'Tahoma'
        Tracker.Font.Style = []
        Tracker.Title.Font.Charset = DEFAULT_CHARSET
        Tracker.Title.Font.Color = clWindowText
        Tracker.Title.Font.Height = -11
        Tracker.Title.Font.Name = 'Tahoma'
        Tracker.Title.Font.Style = []
        Tracker.Title.Text = 'TRACKER'
        Version = '3.2.1.4 SEPTEMBER, 2014'
        XAxisZoomSensitivity = 1.000000000000000000
        YAxisZoomSensitivity = 1.000000000000000000
        DoubleBuffered = True
      end
      object Panel12: TPanel
        Left = 3
        Top = 538
        Width = 792
        Height = 60
        Align = alBottom
        TabOrder = 1
        object Label29: TLabel
          Left = 136
          Top = 9
          Width = 29
          Height = 13
          Caption = 'Color:'
        end
        object Label32: TLabel
          Left = 136
          Top = 36
          Width = 48
          Height = 13
          Caption = 'LineColor:'
        end
        object AdvChartColorSelector12: TAdvChartColorSelector
          Left = 215
          Top = 6
          Width = 23
          Height = 22
          Hint = 
            'The color of the serie when the chart type is different from a l' +
            'ine chart. '
          TabOrder = 0
          AppearanceStyle = esOffice2003Classic
          Version = '1.3.5.0'
          SelectedColor = clNone
          ShowRGBHint = True
          AutoThemeAdapt = False
          BorderColor = clBlack
          BorderDownColor = 7021576
          BorderHotColor = clBlack
          Color = clBtnFace
          ColorDown = 11900292
          ColorHot = 14073525
          ColorDropDown = 16251129
          ColorSelected = 14604246
          ColorSelectedTo = clNone
          ShowHint = True
          Style = ssButton
          Tools = <
            item
              BackGroundColor = clBlack
              Caption = 'Automatic'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'Automatic'
              ItemType = itFullWidthButton
            end
            item
              BackGroundColor = clBlack
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13209
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13107
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13056
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697728
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clNavy
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3486515
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3355443
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clMaroon
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 26367
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clOlive
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGreen
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clTeal
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clBlue
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10053222
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGray
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clRed
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 39423
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52377
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6723891
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13421619
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16737843
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clPurple
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10066329
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clFuchsia
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52479
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clYellow
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clLime
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clAqua
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16763904
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697881
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clSilver
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13408767
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10079487
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10092543
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13434828
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16777164
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16764057
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16751052
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clWhite
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              Caption = 'More Colors...'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'More Color'
              ItemType = itFullWidthButton
            end>
          OnSelect = AdvChartColorSelector12Select
        end
        object CheckBox5: TCheckBox
          Left = 16
          Top = 8
          Width = 97
          Height = 17
          Hint = 
            'Changes the chart to a Vertical or Horizontal mode. All differen' +
            't chart types are supported in horizontal mode.'
          Alignment = taLeftJustify
          BiDiMode = bdRightToLeftNoAlign
          Caption = 'Horizontal'
          Checked = True
          ParentBiDiMode = False
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 1
          OnClick = CheckBox5Click
        end
        object AdvChartColorSelector13: TAdvChartColorSelector
          Left = 215
          Top = 34
          Width = 23
          Height = 22
          Hint = 'The color of the line chart.'
          TabOrder = 2
          AppearanceStyle = esOffice2003Classic
          Version = '1.3.5.0'
          SelectedColor = clNone
          ShowRGBHint = True
          AutoThemeAdapt = False
          BorderColor = clBlack
          BorderDownColor = 7021576
          BorderHotColor = clBlack
          Color = clBtnFace
          ColorDown = 11900292
          ColorHot = 14073525
          ColorDropDown = 16251129
          ColorSelected = 14604246
          ColorSelectedTo = clNone
          ShowHint = True
          Style = ssButton
          Tools = <
            item
              BackGroundColor = clBlack
              Caption = 'Automatic'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'Automatic'
              ItemType = itFullWidthButton
            end
            item
              BackGroundColor = clBlack
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13209
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13107
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13056
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697728
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clNavy
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3486515
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 3355443
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clMaroon
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 26367
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clOlive
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGreen
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clTeal
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clBlue
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10053222
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clGray
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clRed
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 39423
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52377
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6723891
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13421619
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16737843
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clPurple
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10066329
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clFuchsia
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 52479
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clYellow
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clLime
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clAqua
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16763904
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 6697881
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clSilver
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13408767
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10079487
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 10092543
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 13434828
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16777164
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16764057
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = 16751052
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              BackGroundColor = clWhite
              CaptionAlignment = taCenter
              ImageIndex = -1
            end
            item
              Caption = 'More Colors...'
              CaptionAlignment = taCenter
              ImageIndex = -1
              Hint = 'More Color'
              ItemType = itFullWidthButton
            end>
          OnSelect = AdvChartColorSelector13Select
        end
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'TabSheet11'
      ImageIndex = 10
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object AdvGDIPChartView10: TAdvGDIPChartView
        Left = 3
        Top = 3
        Width = 792
        Height = 595
        ShowDesignHelper = True
        Align = alClient
        Color = 15921906
        Panes = <
          item
            Bands.Distance = 2.000000000000000000
            Background.Color = clWhite
            Background.Font.Charset = DEFAULT_CHARSET
            Background.Font.Color = clWindowText
            Background.Font.Height = -11
            Background.Font.Name = 'Tahoma'
            Background.Font.Style = []
            Background.GradientType = gtSolid
            BorderColor = clBlack
            CrossHair.CrossHairYValues.Position = [chYAxis]
            CrossHair.Distance = 0
            Height = 100.000000000000000000
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clWindowText
            Legend.Font.Height = -11
            Legend.Font.Name = 'Tahoma'
            Legend.Font.Style = []
            Legend.Left = 10
            Legend.Top = 10
            Name = 'ChartPane 1'
            Options = []
            Series = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            XAxis.Color = 15921906
            XAxis.Font.Charset = DEFAULT_CHARSET
            XAxis.Font.Color = clWindowText
            XAxis.Font.Height = -11
            XAxis.Font.Name = 'Tahoma'
            XAxis.Font.Style = []
            XAxis.Size = 50
            XGrid.MinorDistance = 1
            XGrid.MajorDistance = 5
            XGrid.MinorLineColor = 15921906
            XGrid.MajorLineColor = clSilver
            XGrid.MinorLineStyle = psDot
            XGrid.MajorLineStyle = psSolid
            XGrid.MajorFont.Charset = DEFAULT_CHARSET
            XGrid.MajorFont.Color = clWindowText
            XGrid.MajorFont.Height = -11
            XGrid.MajorFont.Name = 'Tahoma'
            XGrid.MajorFont.Style = []
            XGrid.MinorFont.Charset = DEFAULT_CHARSET
            XGrid.MinorFont.Color = clWindowText
            XGrid.MinorFont.Height = -11
            XGrid.MinorFont.Name = 'Tahoma'
            XGrid.MinorFont.Style = []
            XGrid.Visible = True
            YAxis.Color = 15921906
            YAxis.Font.Charset = DEFAULT_CHARSET
            YAxis.Font.Color = clWindowText
            YAxis.Font.Height = -11
            YAxis.Font.Name = 'Tahoma'
            YAxis.Font.Style = []
            YAxis.Position = yBoth
            YAxis.Size = 100
            YGrid.MinorDistance = 1.000000000000000000
            YGrid.MajorDistance = 5.000000000000000000
            YGrid.MinorLineColor = 15921906
            YGrid.Visible = True
          end>
        Tracker.Font.Charset = DEFAULT_CHARSET
        Tracker.Font.Color = clWindowText
        Tracker.Font.Height = -11
        Tracker.Font.Name = 'Tahoma'
        Tracker.Font.Style = []
        Tracker.Title.Font.Charset = DEFAULT_CHARSET
        Tracker.Title.Font.Color = clWindowText
        Tracker.Title.Font.Height = -11
        Tracker.Title.Font.Name = 'Tahoma'
        Tracker.Title.Font.Style = []
        Tracker.Title.Text = 'TRACKER'
        Version = '3.2.1.4 SEPTEMBER, 2014'
        XAxisZoomSensitivity = 1.000000000000000000
        YAxisZoomSensitivity = 1.000000000000000000
        DoubleBuffered = True
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'TabSheet12'
      ImageIndex = 11
      TabVisible = False
      object Panel14: TPanel
        Left = 0
        Top = 547
        Width = 804
        Height = 60
        Align = alBottom
        TabOrder = 0
        object Label33: TLabel
          Left = 16
          Top = 24
          Width = 38
          Height = 13
          Caption = 'Sample:'
        end
        object ComboBox12: TComboBox
          Left = 60
          Top = 20
          Width = 177
          Height = 21
          Hint = 
            'Switch between Time / Date and Custom values. More information c' +
            'an be found in the FAQ of the TMS Advanced Charts.'
          Style = csDropDownList
          ItemIndex = 0
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Text = 'Time'
          OnChange = ComboBox12Change
          Items.Strings = (
            'Time'
            'Date'
            'Custom')
        end
        object Button4: TButton
          Left = 368
          Top = 18
          Width = 121
          Height = 27
          Caption = 'Edit Chart Appearance'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = Button4Click
        end
        object CheckBox7: TCheckBox
          Left = 258
          Top = 23
          Width = 79
          Height = 17
          Hint = 'Show / Hide the title.'
          Alignment = taLeftJustify
          Caption = 'Show title'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 2
          OnClick = CheckBox7Click
        end
      end
      object AdvGDIPChartView11: TAdvGDIPChartView
        Left = 0
        Top = 0
        Width = 804
        Height = 547
        ShowDesignHelper = True
        Align = alClient
        Panes = <
          item
            Bands.Distance = 2.000000000000000000
            Background.Font.Charset = DEFAULT_CHARSET
            Background.Font.Color = clWindowText
            Background.Font.Height = -11
            Background.Font.Name = 'Tahoma'
            Background.Font.Style = []
            BorderColor = clBlack
            CrossHair.CrossHairYValues.Position = [chYAxis]
            CrossHair.Distance = 0
            Height = 100.000000000000000000
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clWindowText
            Legend.Font.Height = -11
            Legend.Font.Name = 'Tahoma'
            Legend.Font.Style = []
            Margin.LeftMargin = 10
            Margin.RightMargin = 10
            Margin.TopMargin = 10
            Name = 'ChartPane 0'
            Options = []
            Range.StartDate = 41719.461625960650000000
            Range.RangeTo = 5
            Series = <>
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Title.Position = tTop
            Title.Text = 'TAdvChartView'
            XAxis.AutoSize = True
            XAxis.Font.Charset = DEFAULT_CHARSET
            XAxis.Font.Color = clWindowText
            XAxis.Font.Height = -11
            XAxis.Font.Name = 'Tahoma'
            XAxis.Font.Style = []
            XAxis.Position = xBoth
            XAxis.Text = 'X-axis'
            XGrid.MajorFont.Charset = DEFAULT_CHARSET
            XGrid.MajorFont.Color = clWindowText
            XGrid.MajorFont.Height = -11
            XGrid.MajorFont.Name = 'Tahoma'
            XGrid.MajorFont.Style = []
            XGrid.MinorFont.Charset = DEFAULT_CHARSET
            XGrid.MinorFont.Color = clWindowText
            XGrid.MinorFont.Height = -11
            XGrid.MinorFont.Name = 'Tahoma'
            XGrid.MinorFont.Style = []
            YAxis.Font.Charset = DEFAULT_CHARSET
            YAxis.Font.Color = clWindowText
            YAxis.Font.Height = -11
            YAxis.Font.Name = 'Tahoma'
            YAxis.Font.Style = []
            YAxis.Size = 40
            YAxis.Text = 'Y-axis'
            YGrid.MinorDistance = 1.000000000000000000
            YGrid.MajorDistance = 2.000000000000000000
          end>
        TabOrder = 1
        Tracker.Font.Charset = DEFAULT_CHARSET
        Tracker.Font.Color = clWindowText
        Tracker.Font.Height = -11
        Tracker.Font.Name = 'Tahoma'
        Tracker.Font.Style = []
        Tracker.Title.Font.Charset = DEFAULT_CHARSET
        Tracker.Title.Font.Color = clWindowText
        Tracker.Title.Font.Height = -11
        Tracker.Title.Font.Name = 'Tahoma'
        Tracker.Title.Font.Style = []
        Tracker.Title.Text = 'TRACKER'
        Version = '3.2.1.4 SEPTEMBER, 2014'
        XAxisZoomSensitivity = 1.000000000000000000
        YAxisZoomSensitivity = 1.000000000000000000
        DoubleBuffered = True
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'TabSheet13'
      ImageIndex = 12
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object AdvGDIPChartView12: TAdvGDIPChartView
        Left = 3
        Top = 3
        Width = 792
        Height = 595
        ShowDesignHelper = True
        Align = alClient
        Color = 15921906
        Panes = <
          item
            AxisMode = amYAxisFullHeight
            Bands.Distance = 2.000000000000000000
            Background.Color = clWhite
            Background.Font.Charset = DEFAULT_CHARSET
            Background.Font.Color = clWindowText
            Background.Font.Height = -11
            Background.Font.Name = 'Tahoma'
            Background.Font.Style = []
            Background.GradientType = gtSolid
            BorderColor = clBlack
            CrossHair.CrossHairYValues.Position = [chYAxis]
            CrossHair.Distance = 0
            Height = 100.000000000000000000
            Legend.Font.Charset = DEFAULT_CHARSET
            Legend.Font.Color = clWindowText
            Legend.Font.Height = -11
            Legend.Font.Name = 'Tahoma'
            Legend.Font.Style = []
            Legend.Left = 10
            Legend.Top = 10
            Name = 'ChartPane 1'
            Options = []
            Range.RangeTo = 8
            Series = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            XAxis.Color = 15921906
            XAxis.Font.Charset = DEFAULT_CHARSET
            XAxis.Font.Color = clWindowText
            XAxis.Font.Height = -11
            XAxis.Font.Name = 'Tahoma'
            XAxis.Font.Style = []
            XAxis.Size = 50
            XGrid.MinorDistance = 1
            XGrid.MajorDistance = 5
            XGrid.MinorLineColor = 15921906
            XGrid.MajorLineColor = clSilver
            XGrid.MinorLineStyle = psDot
            XGrid.MajorLineStyle = psSolid
            XGrid.MajorFont.Charset = DEFAULT_CHARSET
            XGrid.MajorFont.Color = clWindowText
            XGrid.MajorFont.Height = -11
            XGrid.MajorFont.Name = 'Tahoma'
            XGrid.MajorFont.Style = []
            XGrid.MinorFont.Charset = DEFAULT_CHARSET
            XGrid.MinorFont.Color = clWindowText
            XGrid.MinorFont.Height = -11
            XGrid.MinorFont.Name = 'Tahoma'
            XGrid.MinorFont.Style = []
            XGrid.Visible = True
            YAxis.Color = 15921906
            YAxis.Font.Charset = DEFAULT_CHARSET
            YAxis.Font.Color = clWindowText
            YAxis.Font.Height = -11
            YAxis.Font.Name = 'Tahoma'
            YAxis.Font.Style = []
            YAxis.Size = 100
            YGrid.MinorDistance = 1.000000000000000000
            YGrid.MajorDistance = 5.000000000000000000
            YGrid.MinorLineColor = 15921906
            YGrid.Visible = True
          end>
        Tracker.Font.Charset = DEFAULT_CHARSET
        Tracker.Font.Color = clWindowText
        Tracker.Font.Height = -11
        Tracker.Font.Name = 'Tahoma'
        Tracker.Font.Style = []
        Tracker.Title.Font.Charset = DEFAULT_CHARSET
        Tracker.Title.Font.Color = clWindowText
        Tracker.Title.Font.Height = -11
        Tracker.Title.Font.Name = 'Tahoma'
        Tracker.Title.Font.Style = []
        Tracker.Title.Text = 'TRACKER'
        Version = '3.2.1.4 SEPTEMBER, 2014'
        XAxisZoomSensitivity = 1.000000000000000000
        YAxisZoomSensitivity = 1.000000000000000000
        DoubleBuffered = True
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 214
    Height = 617
    Margins.Right = 0
    Align = alLeft
    Caption = 'Panel6'
    TabOrder = 1
    object Menu: TAdvGDIPChartView
      Left = 1
      Top = 1
      Width = 212
      Height = 388
      Cursor = crHandPoint
      Margins.Right = 0
      ShowDesignHelper = False
      Align = alClient
      Panes = <
        item
          Bands.Distance = 2.000000000000000000
          Background.Font.Charset = DEFAULT_CHARSET
          Background.Font.Color = clWindowText
          Background.Font.Height = -11
          Background.Font.Name = 'Tahoma'
          Background.Font.Style = []
          CrossHair.CrossHairYValues.Position = [chYAxis]
          CrossHair.Distance = 0
          Height = 100.000000000000000000
          Legend.Font.Charset = DEFAULT_CHARSET
          Legend.Font.Color = clWindowText
          Legend.Font.Height = -11
          Legend.Font.Name = 'Tahoma'
          Legend.Font.Style = []
          Legend.Visible = False
          Name = 'ChartPane 1'
          Options = []
          Range.RangeTo = 12
          Series.ChartMode = dmHorizontal
          Series.BarChartSpacing = 5
          Series.BarChartSpacingType = wtPixels
          Series = <
            item
              AutoRange = arDisabled
              Pie.ValueFont.Charset = DEFAULT_CHARSET
              Pie.ValueFont.Color = clWindowText
              Pie.ValueFont.Height = -11
              Pie.ValueFont.Name = 'Tahoma'
              Pie.ValueFont.Style = []
              Pie.LegendFont.Charset = DEFAULT_CHARSET
              Pie.LegendFont.Color = clWindowText
              Pie.LegendFont.Height = -11
              Pie.LegendFont.Name = 'Tahoma'
              Pie.LegendFont.Style = []
              Annotations = <>
              ChartType = ctBar
              Color = 16250871
              ColorTo = 14737632
              CrossHairYValue.BorderWidth = 0
              CrossHairYValue.Font.Charset = DEFAULT_CHARSET
              CrossHairYValue.Font.Color = clWindowText
              CrossHairYValue.Font.Height = -11
              CrossHairYValue.Font.Name = 'Tahoma'
              CrossHairYValue.Font.Style = []
              CrossHairYValue.GradientSteps = 0
              LegendText = 'Serie 0'
              Marker.MarkerColorTo = clBlack
              Maximum = 102.000000000000000000
              Name = 'Serie 0'
              ValueFont.Charset = DEFAULT_CHARSET
              ValueFont.Color = clWindowText
              ValueFont.Height = -11
              ValueFont.Name = 'Tahoma'
              ValueFont.Style = []
              ValueFormat = '%g'
              ValueWidth = 100
              XAxis.DateTimeFont.Charset = DEFAULT_CHARSET
              XAxis.DateTimeFont.Color = clWindowText
              XAxis.DateTimeFont.Height = -11
              XAxis.DateTimeFont.Name = 'Tahoma'
              XAxis.DateTimeFont.Style = []
              XAxis.MajorFont.Charset = DEFAULT_CHARSET
              XAxis.MajorFont.Color = clWindowText
              XAxis.MajorFont.Height = -11
              XAxis.MajorFont.Name = 'Tahoma'
              XAxis.MajorFont.Style = []
              XAxis.MajorUnit = 1.000000000000000000
              XAxis.MajorUnitSpacing = 0
              XAxis.MinorFont.Charset = DEFAULT_CHARSET
              XAxis.MinorFont.Color = clWindowText
              XAxis.MinorFont.Height = -11
              XAxis.MinorFont.Name = 'Tahoma'
              XAxis.MinorFont.Style = []
              XAxis.MinorUnit = 1.000000000000000000
              XAxis.MinorUnitSpacing = 0
              XAxis.TextTop.Font.Charset = DEFAULT_CHARSET
              XAxis.TextTop.Font.Color = clWindowText
              XAxis.TextTop.Font.Height = -11
              XAxis.TextTop.Font.Name = 'Tahoma'
              XAxis.TextTop.Font.Style = []
              XAxis.TextBottom.Font.Charset = DEFAULT_CHARSET
              XAxis.TextBottom.Font.Color = clWindowText
              XAxis.TextBottom.Font.Height = -11
              XAxis.TextBottom.Font.Name = 'Tahoma'
              XAxis.TextBottom.Font.Style = []
              YAxis.MajorFont.Charset = DEFAULT_CHARSET
              YAxis.MajorFont.Color = clWindowText
              YAxis.MajorFont.Height = -11
              YAxis.MajorFont.Name = 'Tahoma'
              YAxis.MajorFont.Style = []
              YAxis.MajorUnitSpacing = 0
              YAxis.MinorFont.Charset = DEFAULT_CHARSET
              YAxis.MinorFont.Color = clWindowText
              YAxis.MinorFont.Height = -11
              YAxis.MinorFont.Name = 'Tahoma'
              YAxis.MinorFont.Style = []
              YAxis.MinorUnitSpacing = 0
              YAxis.TextLeft.Font.Charset = DEFAULT_CHARSET
              YAxis.TextLeft.Font.Color = clWindowText
              YAxis.TextLeft.Font.Height = -11
              YAxis.TextLeft.Font.Name = 'Tahoma'
              YAxis.TextLeft.Font.Style = []
              YAxis.TextRight.Font.Charset = DEFAULT_CHARSET
              YAxis.TextRight.Font.Color = clWindowText
              YAxis.TextRight.Font.Height = -11
              YAxis.TextRight.Font.Name = 'Tahoma'
              YAxis.TextRight.Font.Style = []
              BarValueTextFont.Charset = DEFAULT_CHARSET
              BarValueTextFont.Color = clWindowText
              BarValueTextFont.Height = -15
              BarValueTextFont.Name = 'Tahoma'
              BarValueTextFont.Style = []
              BarValueTextType = btXAxisValue
              XAxisGroups = <>
              GradientType = gtVertical
              SerieType = stNormal
            end>
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          XAxis.Font.Charset = DEFAULT_CHARSET
          XAxis.Font.Color = clWindowText
          XAxis.Font.Height = -11
          XAxis.Font.Name = 'Tahoma'
          XAxis.Font.Style = []
          XAxis.Position = xNone
          XGrid.MajorFont.Charset = DEFAULT_CHARSET
          XGrid.MajorFont.Color = clWindowText
          XGrid.MajorFont.Height = -11
          XGrid.MajorFont.Name = 'Tahoma'
          XGrid.MajorFont.Style = []
          XGrid.MinorFont.Charset = DEFAULT_CHARSET
          XGrid.MinorFont.Color = clWindowText
          XGrid.MinorFont.Height = -11
          XGrid.MinorFont.Name = 'Tahoma'
          XGrid.MinorFont.Style = []
          YAxis.Font.Charset = DEFAULT_CHARSET
          YAxis.Font.Color = clWindowText
          YAxis.Font.Height = -11
          YAxis.Font.Name = 'Tahoma'
          YAxis.Font.Style = []
          YAxis.Position = yNone
          YGrid.MinorDistance = 1.000000000000000000
          YGrid.MajorDistance = 2.000000000000000000
        end>
      Tracker.Font.Charset = DEFAULT_CHARSET
      Tracker.Font.Color = clWindowText
      Tracker.Font.Height = -11
      Tracker.Font.Name = 'Tahoma'
      Tracker.Font.Style = []
      Tracker.Title.Font.Charset = DEFAULT_CHARSET
      Tracker.Title.Font.Color = clWindowText
      Tracker.Title.Font.Height = -11
      Tracker.Title.Font.Name = 'Tahoma'
      Tracker.Title.Font.Style = []
      Tracker.Title.Text = 'TRACKER'
      Version = '3.2.1.4 SEPTEMBER, 2014'
      XAxisZoomSensitivity = 1.000000000000000000
      YAxisZoomSensitivity = 1.000000000000000000
      OnMouseMove = MenuMouseMove
      OnMouseDown = MenuMouseDown
      OnMouseUp = MenuMouseUp
      OnMouseLeave = MenuMouseLeave
      DoubleBuffered = True
    end
    object Panel7: TPanel
      Left = 1
      Top = 389
      Width = 212
      Height = 185
      Margins.Left = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alBottom
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      object StaticText1: TStaticText
        Left = 0
        Top = 0
        Width = 210
        Height = 183
        Align = alClient
        Caption = 'StaticText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object Panel13: TPanel
      Left = 1
      Top = 574
      Width = 212
      Height = 42
      Margins.Left = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alBottom
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      object Label14: TLabel
        Left = 0
        Top = 17
        Width = 210
        Height = 23
        Cursor = crHandPoint
        Align = alClient
        AutoSize = False
        Caption = 'Frequently asked questions'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = Label14Click
      end
      object Label28: TLabel
        Left = 0
        Top = 0
        Width = 210
        Height = 17
        Cursor = crHandPoint
        Align = alTop
        AutoSize = False
        Caption = 'TMS Advanced Charts webpage'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = Label28Click
      end
      object Image2: TImage
        Left = 170
        Top = 0
        Width = 40
        Height = 40
        Cursor = crHandPoint
        ParentShowHint = False
        Picture.Data = {
          07544269746D617036300000424D363000000000000036000000280000004000
          000040000000010018000000000000300000D70D0000D70D0000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFDFDFDFDFDFDFDFDFDFC
          FCFCFCFCFCFCFCFCFCFCFCFDFDFDFDFDFDFDFDFDFEFEFEFEFEFEFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFBFBFBF8F8
          F8F6F6F6F4F4F4F2F2F2EFEFEFECECECE9E9E9E5E5E5E2E2E2DEDEDEDBDBDBDA
          DADAD9D9D9DADADADBDBDBDDDDDDE1E1E1E4E4E4E8E8E8EBEBEBEFEFEFF2F2F2
          F5F5F5F7F7F7FAFAFAFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFEFEFBFBFBF9F9F9F5F5F5F1F1F1ECECECE8E8E8E4E4E4E0E0E0DCDC
          DCD8D8D8D3D3D3CECECEC7C7C7C0C0C0B9B9B9B1B1B1ABABABA4A4A4A0A0A09D
          9D9D9B9B9B9B9B9B9E9E9EA1A1A1A6A6A6ACACACB4B4B4BBBBBBC4C4C4CBCBCB
          D2D2D2D8D8D8DDDDDDE1E1E1E6E6E6EAEAEAEFEFEFF3F3F3F7F7F7FAFAFAFDFD
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF9F9F9
          F4F4F4EEEEEEEAEAEAE5E5E5E0E0E0DBDBDBD6D6D6D2D2D2CCCCCCC7C7C7C1C1
          C1B8B8B8AEAEAEA2A2A29696968C8C8CA0A0A0B9B9B9C9C9C9DBDBDBE7E7E7EE
          EEEEF6F6F6F6F6F6EEEEEEE7E7E7DADADAC9C9C9BABABAA2A2A29090909A9A9A
          A7A7A7B3B3B3BEBEBEC7C7C7CECECED3D3D3D9D9D9DDDDDDE2E2E2E7E7E7ECEC
          ECF1F1F1F7F7F7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF9F9F9F3F3F3EDEDED
          E8E8E8E2E2E2DDDDDDD8D8D8D2D2D2CDCDCDC7C7C7C0C0C0B8B8B8AEAEAEA0A0
          A0919191878787A9A9A9D4D4D4F4F4F4F8F8F8F7F7F7F6F6F6F5F5F5F4F4F4F4
          F4F4F3F3F3F3F3F3F4F4F4F4F4F4F4F4F4F5F5F5F6F6F6F8F8F8F3F3F3D4D4D4
          ADADAD8C8C8C979797A7A7A7B5B5B5C0C0C0C8C8C8CFCFCFD5D5D5DADADAE0E0
          E0E5E5E5EBEBEBF0F0F0F6F6F6FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFAFAFAF4F4F4EFEFEFE9E9E9
          E3E3E3DDDDDDD8D8D8D2D2D2CCCCCCC5C5C5BDBDBDB2B2B2A3A3A39090909090
          90C6C6C6F4F4F4F8F8F8F6F6F6F4F4F4F2F2F2F1F1F1EFEFEFEEEEEEEEEEEEED
          EDEDEDEDEDEDEDEDEDEDEDEDEDEDEEEEEEEFEFEFF0F0F0F1F1F1F3F3F3F5F5F5
          F7F7F7F3F3F3C7C7C7969696979797AAAAAABABABAC5C5C5CDCDCDD5D5D5DADA
          DAE0E0E0E6E6E6ECECECF2F2F2F7F7F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF7F7F7F1F1F1ECECEC
          E6E6E6E0E0E0DBDBDBD5D5D5CECECEC4C4C4B5B5B5A1A1A1989898CDCDCDF8F8
          F8F7F7F7F4F4F4F2F2F2F0F0F0EDEDEDECECECEAEAEAE9E9E9E8E8E8E7E7E7E6
          E6E6E6E6E6E6E6E6E6E6E6E7E7E7E7E7E7E8E8E8E9E9E9EBEBEBEDEDEDEEEEEE
          F1F1F1F3F3F3F6F6F6F7F7F7CFCFCF9D9D9DA8A8A8BCBCBCCBCBCBD6D6D6DDDD
          DDE3E3E3E9E9E9EFEFEFF4F4F4FAFAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFBFBF6F6F6
          F0F0F0EBEBEBE5E5E5DDDDDDD1D1D1BEBEBEA6A6A6C2C2C2F5F5F5F7F7F7F4F4
          F4F1F1F1EEEEEEECECECE9E9E9E7E7E7E5E5E5E4E4E4E2E2E2E1E1E1E0E0E0E0
          E0E0DFDFDFDFDFDFE0E0E0E0E0E0E1E1E1E2E2E2E3E3E3E4E4E4E6E6E6E8E8E8
          EAEAEAEDEDEDF0F0F0F3F3F3F6F6F6F4F4F4C4C4C4ABABABC4C4C4D8D8D8E5E5
          E5EDEDEDF3F3F3F8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFDFDFAFAFAF2F2F2E3E3E3CBCBCBB8B8B8E7E7E7F9F9F9F5F5F5F2F2F2EEEE
          EEEBEBEBE8E8E8E6E6E6E3E3E3E1E1E1DFDFDFDEDEDEDEDEDEDEDEDEDEDEDEDE
          DEDEDEDEDEDFDFDFDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEE0E0E0E2E2E2
          E4E4E4E7E7E7EAEAEAEDEDEDF0F0F0F3F3F3F7F7F7E6E6E6BCBCBCD1D1D1E9E9
          E9F7F7F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFEFEF9F9F9ECECECD3D3D3CDCDCDF5F5F5F7F7F7F3F3F3F0F0F0ECECECE9E9
          E9E5E5E5E2E2E2E0E0E0DEDEDEDEDEDEDEDEDEDFDFDFE0E0E0E0E0E0E1E1E1E1
          E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E0E0E0E0E0E0DFDFDFDEDEDEDEDEDE
          DEDEDEE1E1E1E4E4E4E7E7E7EAEAEAEEEEEEF1F1F1F5F5F5F3F3F3CCCCCCD3D3
          D3ECECECF9F9F9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
          F9F9F9EBEBEBD0D0D0D2D2D2F9F9F9F6F6F6F2F2F2EEEEEEEAEAEAE6E6E6E3E3
          E3E0E0E0DEDEDEDEDEDEDFDFDFE0E0E0E1E1E1E2E2E2E3E3E3E3E3E3E4E4E4E4
          E4E4E4E4E4E4E4E4E4E4E4E4E4E4E3E3E3E3E3E3E2E2E2E1E1E1E1E1E1E0E0E0
          DFDFDFDEDEDEDEDEDEE1E1E1E5E5E5E8E8E8ECECECF0F0F0F4F4F4F7F7F7D0D0
          D0D0D0D0EBEBEBF9F9F9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFAFAFA
          ECECECD0D0D0D5D5D5FAFAFAF5F5F5F1F1F1EDEDEDE9E9E9E5E5E5E1E1E1DEDE
          DEDEDEDEDFDFDFE0E0E0E2E2E2E3E3E3E4E4E3DAC9B6C8A078BE8850B57738AC
          6722A35A11A25911AA6520B17335B9844DC49D74D7C6B5E4E4E4E3E3E3E2E2E2
          E1E1E1E0E0E0DFDFDFDDDDDDDFDFDFE3E3E3E7E7E7EBEBEBEFEFEFF3F3F3F8F8
          F8D5D5D5D0D0D0ECECECFAFAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFBFBEEEEEE
          D3D3D3D2D2D2FAFAFAF5F5F5F1F1F1ECECECE8E8E8E3E3E3DFDFDFDDDDDDDFDF
          DFE0E0E0E2E2E2E3E3E3DBCBBAC79A6BB87228B56713B96915BB6B15BD6C15BD
          6D15BD6C15BB6B14B96913B66712B46410B0600EAA5C0DAD6721BF9366D8C8B8
          E4E4E4E2E2E2E1E1E1E0E0E0DEDEDEDEDEDEE1E1E1E6E6E6EAEAEAEEEEEEF3F3
          F3F8F8F8D0D0D0D3D3D3EEEEEEFBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF2F2F2D9D9D9
          CDCDCDFAFAFAF6F6F6F1F1F1ECECECE7E7E7E3E3E3DEDEDEDEDEDEDFDFDFE1E1
          E1E3E3E3DED4C7C6925DB76917BD6E18C4741AC8781CCC7B1ECC7B20CD7C20CB
          7C20CA7A20C87A1FC7781DC5761CC3731BC07018BB6B15B56511AE5F0EA75A0D
          BB8855DBD1C6E3E3E3E2E2E2E0E0E0DFDFDFDEDEDEE0E0E0E5E5E5E9E9E9EEEE
          EEF3F3F3F7F7F7CCCCCCD9D9D9F2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF6F6F6E1E1E1C6C6C6
          F6F6F6F7F7F7F2F2F2ECECECE7E7E7E3E3E3DEDEDEDEDEDEE0E0E0E2E2E2E2E0
          DECB9F70B96E1CC0711BCA7A1FD08023D28427D48629D4862AD1862CCE832BC7
          7F28C17926BE7624C17825C47B27C87E27C87D24C67A22C3761EBE701AB66814
          AD5F0FA65B10C09469E2E0DDE2E2E2E1E1E1DFDFDFDEDEDEE0E0E0E5E5E5EAEA
          EAEFEFEFF4F4F4F3F3F3C6C6C6E1E1E1F6F6F6FDFDFDFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFAFAFAEAEAEAC8C8C8EBEBEB
          F8F8F8F3F3F3EDEDEDE8E8E8E3E3E3DEDEDEDEDEDEE0E0E0E2E2E2E0D8CFC285
          44BF701AC97B20D28327D68A2CD78D30D78E34D78F35D58F36CF8A34C27E2EAF
          6E24A3621D9F5F1BA5631EB27125C17D2DC88430C9832EC8812CC67D27C27722
          BC701BB26613A75B0DB07438DED6CEE3E3E3E1E1E1DFDFDFDEDEDEE0E0E0E6E6
          E6EBEBEBF0F0F0F5F5F5E9E9E9C8C8C8EAEAEAFAFAFAFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF2F2F2D6D6D6D6D6D6FAFAFA
          F4F4F4EFEFEFE9E9E9E4E4E4DFDFDFDEDEDEE0E0E0E2E2E2DCCCBBBE782DC474
          1CD08124D78A2CDA8F33DA9338DA953BD9953DD7953ED3923CC48334AB6D29CA
          AA8AECE1D7F8F5F2E4D5C6B58758AE6F27C28233CA8936CA8835C98633C7822F
          C47D29BE7521B66A18A95D0EA8631FD7C7B8E3E3E3E1E1E1DFDFDFDEDEDEE1E1
          E1E7E7E7ECECECF1F1F1F7F7F7D5D5D5D6D6D6F2F2F2FCFCFCFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF8F8F8E5E5E5C6C6C6F8F8F8F6F6F6
          F1F1F1EBEBEBE6E6E6E0E0E0DEDEDEE0E0E0E2E2E2DCCCBBBD7020C8761CD483
          24DA8C2DDC9336DC963DDB9840DA9942D99942D69742CE8E3DB4752CE2D0BDFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEC29B72B8792EC88939CB8C3ACA8A38C98836
          C78532C47F2DBF7723B66A17AA5C0CA2570ED6C7B8E3E3E3E1E1E1DFDFDFDEDE
          DEE3E3E3E8E8E8EEEEEEF3F3F3F5F5F5C5C5C5E5E5E5F8F8F8FEFEFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1D1D1D1E1E1E1F9F9F9F3F3F3
          EDEDEDE7E7E7E2E2E2DEDEDEDFDFDFE1E1E1E0D8D0C0792DC9771CD78322DD8B
          29DD9132DD973BDC9A41DB9B44DA9B45D99A44D69842C88A3BC79D6EFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F5F2B27732C58738CA8C3BCA8C3AC98A3A
          C88837C68432C37D2ABD711DB56510A85808A65F1CDED6CEE2E2E2E0E0E0DEDE
          DEDFDFDFE5E5E5EAEAEAF0F0F0F6F6F6DFDFDFD1D1D1F1F1F1FCFCFCFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFEFEFEF9F9F9E4E4E4C5C5C5FAFAFAF6F6F6F0F0F0
          EAEAEAE4E4E4DEDEDEDEDEDEE1E1E1E2E0DEC48745C7751BD78120DE8924DF8D
          2ADE9232DD973BDC9A41DB9B44DA9B45D89A44D59842C78939DCC1A3FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0905AC48738CB8C3BCA8C3AC98A3A
          C88837C68432C37D2ABF731EB96912B15E09A55405AC6E34E2E0DEE2E2E2E0E0
          E0DDDDDDE1E1E1E7E7E7EDEDEDF3F3F3F7F7F7C5C5C5E4E4E4F9F9F9FEFEFEFF
          FFFFFFFFFFFFFFFFFFFFFFFDFDFDF3F3F3D4D4D4DEDEDEF9F9F9F3F3F3EDEDED
          E7E7E7E1E1E1DEDEDEE0E0E0E2E2E2CEA272C4731BD58020DE8723E08924DF8C
          28DE8F2FDD9437DC963DDB9940DA9942D99942D69741CA8B3ADEC4A5FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4945CC68737CA8B3ACA8A38C98837
          C78533C5802DC27924BE7019BA6810B56009AD5905A05003BC9066E3E3E3E1E1
          E1DFDFDFDEDEDEE4E4E4EAEAEAF0F0F0F6F6F6DDDDDDD4D4D4F3F3F3FDFDFDFF
          FFFFFFFFFFFFFFFFFEFEFEFBFBFBEAEAEAC5C5C5F8F8F8F6F6F6F0F0F0EAEAEA
          E4E4E4DEDEDEDFDFDFE1E1E1DFD4C8C0731FD17E1FDE8722E18923E08923DF8A
          25DE8C29DD8F2EDC9134DA9338DA953BD9953DD6943ECF8E3AD1A673FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF7F2BD8036C88735CA8836C98633C7822F
          C57F2AC37923BF721BBC6B12BA650CB76008B25D05A856039E5107DBD1C6E2E2
          E2E0E0E0DEDEDEE1E1E1E7E7E7EDEDEDF3F3F3F5F5F5C5C5C5EAEAEAFBFBFBFE
          FEFEFFFFFFFFFFFFFEFEFEF7F7F7DEDEDED1D1D1FAFAFAF4F4F4EEEEEEE7E7E7
          E1E1E1DEDEDEE0E0E0E2E2E2CB9860C9771DDB8522E28A24E28A23E18923DF88
          23DE8824DC8927DB8B2ADA8D2ED88E31D88F34D78F35D38D35C68230EAD7C0FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFED1A777C37F2DC9832FC8822CC77E28C57A24
          C3761EC07018BD6B12BC660DB96309B76107B55E05AE5904A25102B58150E4E4
          E4E1E1E1DFDFDFDEDEDEE4E4E4EAEAEAF1F1F1F7F7F7D0D0D0DEDEDEF7F7F7FE
          FEFEFFFFFFFFFFFFFDFDFDF2F2F2D1D1D1E6E6E6F8F8F8F2F2F2EBEBEBE5E5E5
          DFDFDFDEDEDEE1E1E1DDCDBBC0721CD58021E18A24E38B24E28A23E18922DF88
          22DE8621DD8622DB8623DA8624D88726D78828D6882AD5872BCF842AC67E2BDD
          B98FF2E7DAFBF7F2EDDCC9CC975DC27924C77C25C87B23C67820C5751CC27118
          C06E13BF6A10BD670DBB640AB96208B76006B55E05B25C04A955039C4E03D6C6
          B7E2E2E2E0E0E0DEDEDEE2E2E2E8E8E8EEEEEEF5F5F5E3E3E3D1D1D1F2F2F2FD
          FDFDFFFFFFFFFFFFFCFCFCECECECC4C4C4F9F9F9F6F6F6F0F0F0E9E9E9E3E3E3
          DEDEDEDFDFDFE2E2E2CEA16FC9781DDD8723E48C25E48C24E28A23E18922DF88
          21DE8620DC8520DB8320D9831FD88220D68220D58220D48121D27F21CD7C20C6
          781EC1731CBE711BC0711BC3741BC6751BC7751AC67318C47115C36E13C16C10
          BF6A0EBE670CBC660ABA6308B96207B76006B65F05B35D04AD5803A15102B98C
          61E3E3E3E1E1E1DEDEDEE0E0E0E6E6E6EDEDEDF3F3F3F5F5F5C4C4C4ECECECFC
          FCFCFFFFFFFEFEFEFAFAFAE4E4E4CACACAFBFBFBF4F4F4EEEEEEE8E8E8E1E1E1
          DEDEDEE0E0E0E3E3E3C37D2FD27F20E28B24E58D25E48C24E28A23E18922DF88
          21DE8620DC851FDB831ED9821ED8811DD6801DD57F1CD37D1CCD781AC47117BC
          6B15B86814B66713B76712BB6A13C26D13C67013C56F12C36D10C26B0FC06A0D
          BF680CBD660ABC6509BA6308B96207B76006B65F05B45D04B05A03A55302A15B
          18E4E4E4E1E1E1DFDFDFDEDEDEE4E4E4EBEBEBF1F1F1F8F8F8CACACAE4E4E4FA
          FAFAFFFFFFFEFEFEF7F7F7DDDDDDD6D6D6FAFAFAF3F3F3EDEDEDE6E6E6E0E0E0
          DEDEDEE1E1E1DCCBB8C3741CD88422E48C26E58D25E48C24E28A23E18922DF88
          21DE8620DC851FDB831ED9821DD8801CD67F1BD47E1BD17A19C37115BF803FB7
          8049B47D48B37D47B47D47BB8249B76714C26D10C46D10C36C0FC26B0DC0690C
          BF680BBD660ABC6509BA6308B96207B76006B65F05B45D04B15A03A955029B4C
          01D5C3B2E2E2E2E0E0E0DEDEDEE3E3E3E9E9E9F0F0F0F6F6F6D5D5D5DDDDDDF7
          F7F7FFFFFFFEFEFEF5F5F5D6D6D6DEDEDEF9F9F9F2F2F2EBEBEBE5E5E5DFDFDF
          DFDFDFE2E2E2CFA77CC9781EDD8824E58D26E58D25E48C24E28A23E18922DF88
          21DE8620DC851FDB831ED9821DD8801CD67F1BD47D1AD07918BC6A13F1E5D9FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB46D25C06A0FC46D0FC36C0EC26A0DC0690C
          BF680BBD660ABC6509BA6308B96207B76006B65F05B45D04B25B03AC57029E4E
          01BD9570E3E3E3E0E0E0DEDEDEE2E2E2E8E8E8EFEFEFF5F5F5DDDDDDD6D6D6F5
          F5F5FFFFFFFDFDFDF2F2F2D0D0D0E8E8E8F8F8F8F1F1F1EBEBEBE4E4E4DEDEDE
          DFDFDFE2E2E2C89257CD7C1FE18A25E68E26E58D25E48C24E28A23E18922DF88
          21DE8620DC851FDB831ED9821DD8801CD67F1BD57D1ACF7918BA6912F0E5D9FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB37232BC680EC36C0FC36C0EC26A0DC0690C
          BF680BBD660ABC6509BA6308B96207B76006B65F05B45D04B25B03AE5802A04F
          01AF7946E3E3E3E1E1E1DEDEDEE1E1E1E7E7E7EEEEEEF4F4F4E6E6E6D0D0D0F2
          F2F2FFFFFFFDFDFDF0F0F0CBCBCBF1F1F1F7F7F7F1F1F1EAEAEAE3E3E3DEDEDE
          E0E0E0E2E2E2C28340D07E20E28C25E68E26E58D25E48C24E28A23E18922DF88
          21DE8620DC851FDB831ED9821DD8801CD67F1BD47D1AD07919BD6B13EBDAC9FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8D5CB7640DC26B0FC36C0EC26A0DC0690C
          BF680BBD660ABC6509BA6308B96207B76006B65F05B45D04B35B03AF5902A250
          01A5672CE4E4E4E1E1E1DEDEDEE0E0E0E7E7E7EDEDEDF4F4F4EEEEEECBCBCBF0
          F0F0FFFFFFFCFCFCEFEFEFC7C7C7F4F4F4F7F7F7F0F0F0EAEAEAE3E3E3DEDEDE
          E0E0E0E3E3E3BA752BD27F21E38D26E68E26E58D25E48C24E28A23E18922DF88
          21DE8620DC851FDB831ED9821DD8801CD67F1BD47D1AD17A19C26F14DBBA98FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC3ABAC5D0BBE690EC26B0EC16A0DC0690C
          BF680BBD660ABC6509BA6308B96207B76006B65F05B45D04B25C03AF5902A351
          019B5616E4E4E4E1E1E1DEDEDEE0E0E0E6E6E6EDEDEDF4F4F4F1F1F1C7C7C7EF
          EFEFFFFFFFFCFCFCEEEEEEC6C6C6FAFAFAF7F7F7F0F0F0E9E9E9E3E3E3DEDEDE
          E0E0E0E3E3E3B2681BD48121E48D26E68E26E58D25E48C24E28A23E18922DF88
          21DE8620DC851FDB831ED9821DD8801CD67F1BD57D1AD27B19C87316C88E54FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDAF7134B5620CC0690EC16A0DC0690C
          BF680BBD660ABC6509BA6308B96207B76006B65F05B45D04B25C03B05A02A452
          01934A06E4E4E4E1E1E1DFDFDFDFDFDFE6E6E6EDEDEDF3F3F3F7F7F7C6C6C6EE
          EEEEFFFFFFFCFCFCEEEEEEC6C6C6FAFAFAF7F7F7F0F0F0E9E9E9E3E3E3DEDEDE
          E0E0E0E3E3E3B2681BD48121E48D26E68E26E58D25E48C24E28A23E18922DF88
          21DE8620DC851FDB831ED9821DD8801CD67F1BD57D1AD37B19CD7717BB6913F0
          E2D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECDFD2A75D13B7630CBF680DBF680C
          BF680BBD660ABC6509BA6308B96207B76006B65F05B45D04B25C03B05A02A452
          01934A06E4E4E4E1E1E1DEDEDEDFDFDFE6E6E6EDEDEDF3F3F3F7F7F7C6C6C6EE
          EEEEFFFFFFFCFCFCEFEFEFC7C7C7F5F5F5F7F7F7F0F0F0EAEAEAE3E3E3DEDEDE
          E0E0E0E2E2E2BA752BD27F21E38D26E68E26E58D25E48C24E28A23E18922DF88
          21DE8620DC851FDB831ED9821DD8801CD67F1BD57D1AD37C19D07918C67115C7
          8E53FFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBC2AAA8590BB9640CBE670C
          BE680BBD660ABC6509BA6308B96207B76006B65F05B45D04B25C03AF5902A351
          019B5616E4E4E4E1E1E1DEDEDEE0E0E0E6E6E6EDEDEDF4F4F4F2F2F2C7C7C7EF
          EFEFFFFFFFFDFDFDF0F0F0CBCBCBF1F1F1F7F7F7F1F1F1EAEAEAE4E4E4DEDEDE
          DFDFDFE2E2E2C28340D07E20E28C25E68E26E58D25E48C24E28A23E18922DF88
          21DE8620DC851FDB831ED9821DD8801CD67F1BD57D1AD47C19D17A18CD7616BD
          6B12DAB997FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAC8AAB5B0ABA650B
          BE670BBD660ABC6509BA6308B96207B76006B65F05B45D04B35B03AF5902A250
          01A5662CE4E4E4E1E1E1DEDEDEE0E0E0E7E7E7EEEEEEF4F4F4EEEEEECBCBCBF0
          F0F0FFFFFFFDFDFDF2F2F2D0D0D0E8E8E8F8F8F8F1F1F1EBEBEBE4E4E4DEDEDE
          DFDFDFE2E2E2C89257CE7C20E18C29E6902BE6902AE48E29E38D28E18B26E089
          24DE8622DC851FDB831ED9821DD8801CD67F1BD57D1AD47C19D27A18CF7817C8
          7314B86A17EEDFD1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEB9834FB25F0A
          BC650BBD660ABC660BBB650CBA650CB9630BB7620BB6610AB45E08AF5B07A150
          02AF7946E3E3E3E0E0E0DEDEDEE1E1E1E8E8E8EEEEEEF5F5F5E6E6E6D0D0D0F2
          F2F2FFFFFFFEFEFEF5F5F5D6D6D6DFDFDFF9F9F9F3F3F3ECECECE5E5E5DFDFDF
          DEDEDEE1E1E1CFA77CCA7C26DF8E30E79433E79432E59331E49131E39030E18F
          2FE08D2EDE8C2CDC8828DA8524D8811FD67F1BD57D1AD47C19D27A18D07917CD
          7716C46E13BB7731FAF6F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5EFE8AB6117
          BB6914C06E18C06E18BF6C17BD6B17BC6A16BA6815B96714B66513B06010A255
          0BBD956FE3E3E3E0E0E0DEDEDEE2E2E2E9E9E9EFEFEFF6F6F6DDDDDDD6D6D6F5
          F5F5FFFFFFFEFEFEF7F7F7DDDDDDD6D6D6FAFAFAF4F4F4EDEDEDE7E7E7E0E0E0
          DEDEDEE0E0E0DCCBB7C47825DA8D35E6973AE7983AE69739E59538E49437E293
          37E19136E09135DE8F34DD8E33DB8C32D98A2FD8862AD68325D37E20D27B1CCF
          7919CB7416BD6A12C99B6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAA17A
          B66A1DC17221C27321C17220BF711FBE701EBD6E1DBB6D1DB96A1BB063179F54
          0CD4C3B2E2E2E2DFDFDFDEDEDEE4E4E4EAEAEAF1F1F1F7F7F7D5D5D5DDDDDDF7
          F7F7FFFFFFFEFEFEFAFAFAE4E4E4CACACAFCFCFCF5F5F5EFEFEFE8E8E8E2E2E2
          DEDEDEE0E0E0E2E2E2C48035D48B38E59940E89C42E79B42E69A41E59940E498
          3FE2963EE1953EE0943DDF933CDD913BDC903ADA8E39D98D38D88C38D78B37D5
          8A36D38734CB8130B56E27F6EFEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE3D9
          B16921C27629C4792BC4782AC27729C17628C07427BE7326BA6F24AE651EA460
          1FE4E4E4E1E1E1DEDEDEDFDFDFE5E5E5ECECECF2F2F2F8F8F8CACACAE4E4E4FA
          FAFAFFFFFFFFFFFFFCFCFCECECECC4C4C4F9F9F9F7F7F7F1F1F1EAEAEAE4E4E4
          DEDEDEDFDFDFE1E1E1CEA170CC8638E19945E89F4AE8A04AE79E49E69D48E59C
          48E39B47E29A46E19845E09844DE9643DC9342D99140D8903FD78F3FD78F3FD7
          8E3ED58D3DCE8739B8722CE2CFBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFC
          AF6D2AC27B30C67F33C67E33C57D32C47C31C27A30C0782FBA722BAA6420B98C
          61E3E3E3E0E0E0DEDEDEE1E1E1E7E7E7EDEDEDF4F4F4F6F6F6C4C4C4ECECECFC
          FCFCFFFFFFFFFFFFFDFDFDF2F2F2D1D1D1E6E6E6F9F9F9F3F3F3ECECECE6E6E6
          E0E0E0DEDEDEE0E0E0DCCCBAC27A2BD99548E6A151E9A453E8A352E7A251E6A1
          51E5A050E49F4FE29D4EE19C4EDF9A4CD99548CF8C42CB873ECE8A40D28D43D3
          8F44D18C43C8853DB16F2DEDE2D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          BA824CC47F39C9853DC9843DC8833CC7823CC5813BC17D38B67230A15915D5C5
          B6E2E2E2DFDFDFDEDEDEE3E3E3E9E9E9F0F0F0F6F6F6E4E4E4D1D1D1F2F2F2FD
          FDFDFFFFFFFFFFFFFEFEFEF7F7F7DEDEDED1D1D1FBFBFBF5F5F5EFEFEFE9E9E9
          E3E3E3DEDEDEDFDFDFE2E2E2CB9861CD8B42E1A054E9A75AE9A75AE8A75AE7A6
          59E6A458E5A457E4A257E2A156DF9D53D19049DAB58EDFC4A9BB854DB87837BD
          7C3ABB7A39B17334CEAD8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          BB834DC68542CC8A47CC8A46CA8945C98845C78543BF7E3DAF6D2EB58251E3E3
          E3E0E0E0DEDEDEE0E0E0E6E6E6ECECECF2F2F2F8F8F8D0D0D0DEDEDEF7F7F7FE
          FEFEFFFFFFFFFFFFFEFEFEFBFBFBEAEAEAC5C5C5F9F9F9F7F7F7F1F1F1EBEBEB
          E5E5E5DFDFDFDEDEDEE0E0E0DED4C7C27C2FD79953E6A75EEAAB62E9AB62E9AA
          61E7A960E6A860E5A75FE4A55EDD9F59C68847ECDDCFFFFFFFFFFFFEF5EEE8E7
          D7C8E4D2C2F4EEE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF6F3
          B87B40CA8D4CCF914FCE9050CD8F4FCB8D4DC7894ABA7C40A45E1BDAD0C5E2E2
          E2DFDFDFDEDEDEE2E2E2E8E8E8EEEEEEF4F4F4F6F6F6C5C5C5EAEAEAFBFBFBFE
          FEFEFFFFFFFFFFFFFFFFFFFDFDFDF3F3F3D4D4D4DFDFDFFAFAFAF4F4F4EEEEEE
          E8E8E8E2E2E2DEDEDEDFDFDFE1E1E1CEA272C7853CDDA15FE7AC68EAAF6AEAAF
          6AE8AD69E8AD69E6AB68E4A966DAA05EC18B53FEFDFDFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC8B4
          C1864ACF9458D1975AD19659CF9458CB9155C2874CAC692ABB8F65E3E3E3E0E0
          E0DEDEDEE0E0E0E5E5E5EBEBEBF1F1F1F7F7F7DEDEDED4D4D4F3F3F3FDFDFDFF
          FFFFFFFFFFFFFFFFFFFFFFFEFEFEF9F9F9E4E4E4C5C5C5FCFCFCF7F7F7F1F1F1
          EBEBEBE6E6E6E0E0E0DEDEDEE0E0E0E1DFDDC48847CD904FE0A768E9B06FEAB2
          71EAB271E9B170E8B070E5AD6DD79F61D4AF8BFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF7F4BF8D5D
          CC945AD49C61D49D63D29A61D0985FC78F57B5793EAC7037E1DFDDE1E1E1DFDF
          DFDEDEDEE3E3E3E9E9E9EEEEEEF4F4F4F9F9F9C5C5C5E4E4E4F9F9F9FEFEFEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF1F1F1D1D1D1E2E2E2FAFAFAF5F5F5
          EFEFEFE9E9E9E4E4E4DEDEDEDEDEDEE0E0E0E0D8CFC17E35D19758E2AC71E9B4
          78EAB67AEBB67AE9B579E6B176D8A368EAD7C4FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8F5C8A079C9945D
          D5A16AD7A36DD6A26CD39F69CC9762BB824AA86524DDD5CEE2E2E2DFDFDFDDDD
          DDE1E1E1E6E6E6ECECECF2F2F2F7F7F7E0E0E0D1D1D1F1F1F1FCFCFCFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF8F8F8E5E5E5C6C6C6F9F9F9F8F8F8
          F2F2F2EDEDEDE7E7E7E2E2E2DEDEDEDFDFDFE1E1E1DBCCBBBE7426D1985BE1AE
          76E8B77EEBBA81EBB981E8B77FE0AE77CF9F6DD8BA9CF2EAE2FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEE7D7C8C4966BCB9864D7A572
          DAA976DAA875D6A572CE9C69BD854EA35B15D6C6B7E2E2E2E0E0E0DEDEDEDFDF
          DFE5E5E5EAEAEAF0F0F0F5F5F5F7F7F7C6C6C6E5E5E5F8F8F8FEFEFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF2F2F2D6D6D6D6D6D6FCFCFC
          F6F6F6F1F1F1EBEBEBE6E6E6E1E1E1DEDEDEDFDFDFE1E1E1DBCCBABF7B31CC92
          54DEAE7AE6B884EABC88EABC88E8BA86E0B27ED5A572C79663CAA27BD6B89CE0
          CBB7E4D3C3E8DACDE5D5C6E1CDBAD3B599C4996FC69665D3A473DAAD7DDDAF7F
          DCAE7FD7A979CE9F70BA8048A86422D6C7B7E2E2E2E0E0E0DEDEDEDEDEDEE3E3
          E3E9E9E9EEEEEEF3F3F3F9F9F9D5D5D5D6D6D6F2F2F2FCFCFCFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFAFAFAEAEAEAC8C8C8ECECEC
          FAFAFAF5F5F5EFEFEFEAEAEAE5E5E5E0E0E0DEDEDEDFDFDFE1E1E1DFD7CFC284
          43C48139D8A975E3B786E8BD8DEABF8FE9BE8FE6BC8CE3B787DCB080D6A979D0
          A373CD9E6FCB9D6DCC9D6ECEA072D3A678D8AC7FDDB184E0B588DFB587DCB285
          D7AA7DCB9C6DB06E2CAF7236DDD5CDE2E2E2E0E0E0DEDEDEDEDEDEE3E3E3E8E8
          E8EDEDEDF2F2F2F7F7F7EBEBEBC8C8C8EAEAEAFAFAFAFEFEFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF6F6F6E1E1E1C6C6C6
          F7F7F7F9F9F9F4F4F4EFEFEFEAEAEAE5E5E5E0E0E0DEDEDEDFDFDFE0E0E0E1DF
          DDCB9E6FBB7224C98F51DAAF80E3BA8DE7C093E9C195E9C296E8C095E7BF94E5
          BE92E3BC91E2BA90E2BA90E2BB90E3BC91E2BB91E1BA90DFB88DDAB187D1A579
          BB8147A85F18BF9367E2DFDDE1E1E1E0E0E0DEDEDEDEDEDEE3E3E3E7E7E7ECEC
          ECF1F1F1F6F6F6F5F5F5C6C6C6E1E1E1F6F6F6FDFDFDFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF2F2F2D9D9D9
          CDCDCDFCFCFCF8F8F8F3F3F3EEEEEEEAEAEAE5E5E5E1E1E1DEDEDEDEDEDEE0E0
          E0E1E1E1DDD3C7C6925BB86D1DC68A4AD4A776DEB78EE3BD94E5C098E6C199E6
          C29AE7C29BE6C29AE5C099E3BE97E1BC95DDB891D8B18ACD9F71BB7E42A85D12
          BA8653DBD1C5E2E2E2E1E1E1DFDFDFDEDEDEDFDFDFE3E3E3E7E7E7ECECECF1F1
          F1F5F5F5F9F9F9CDCDCDD9D9D9F2F2F2FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFBFBEEEEEE
          D3D3D3D2D2D2FCFCFCF8F8F8F3F3F3EFEFEFEAEAEAE6E6E6E2E2E2DEDEDEDEDE
          DEDFDFDFE0E0E0E2E2E2DACAB9C79A6BB87127B76C1EC1813DC9935ACE9B67D1
          A272D3A97DD3A97DCFA071CA9865C48E56BA7938AD6218AD661FBF9265D7C7B7
          E2E2E2E1E1E1E0E0E0DEDEDEDEDEDEE0E0E0E4E4E4E8E8E8ECECECF1F1F1F5F5
          F5FAFAFAD1D1D1D3D3D3EEEEEEFBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFAFAFA
          ECECECD0D0D0D6D6D6FCFCFCF8F8F8F4F4F4EFEFEFEBEBEBE7E7E7E4E4E4E0E0
          E0DEDEDEDEDEDEDFDFDFE0E0E0E1E1E1E2E2E2D9C8B5C8A076BD8750B57637AB
          6721A35911A25910A96420B17334B9834CC39C74D7C5B4E3E3E3E2E2E2E1E1E1
          E0E0E0DFDFDFDEDEDEDEDEDEE2E2E2E6E6E6E9E9E9EDEDEDF2F2F2F6F6F6FAFA
          FAD5D5D5D0D0D0ECECECFAFAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
          F9F9F9EBEBEBD0D0D0D2D2D2FCFCFCF9F9F9F5F5F5F1F1F1EDEDEDE9E9E9E6E6
          E6E2E2E2DFDFDFDEDEDEDEDEDEDFDFDFE0E0E0E0E0E0E1E1E1E2E2E2E2E2E2E2
          E2E2E3E3E3E3E3E3E3E3E3E2E2E2E2E2E2E2E2E2E1E1E1E0E0E0DFDFDFDEDEDE
          DEDEDEDEDEDEE1E1E1E4E4E4E7E7E7EBEBEBEFEFEFF3F3F3F7F7F7FAFAFAD2D2
          D2D0D0D0EBEBEBF9F9F9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FEFEFEF9F9F9ECECECD3D3D3CDCDCDF7F7F7FAFAFAF6F6F6F2F2F2EFEFEFEBEB
          EBE8E8E8E5E5E5E3E3E3E0E0E0DEDEDEDEDEDEDEDEDEDEDEDEDFDFDFDFDFDFE0
          E0E0E0E0E0E0E0E0E0E0E0E0E0E0DFDFDFDFDFDFDEDEDEDEDEDEDEDEDEDFDFDF
          E1E1E1E4E4E4E7E7E7EAEAEAEDEDEDF1F1F1F4F4F4F8F8F8F6F6F6CDCDCDD3D3
          D3ECECECF9F9F9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFEFEFEFAFAFAEEEEEED9D9D9C6C6C6ECECECFCFCFCF8F8F8F5F5F5F1F1
          F1EEEEEEEBEBEBE9E9E9E6E6E6E4E4E4E2E2E2E0E0E0DFDFDFDEDEDEDEDEDEDE
          DEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDEDFDFDFE0E0E0E1E1E1E3E3E3E5E5E5
          E7E7E7EAEAEAEDEDEDF0F0F0F3F3F3F6F6F6FAFAFAEBEBEBC6C6C6D9D9D9EEEE
          EEFAFAFAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFEFEFBFBFBF2F2F2E1E1E1C8C8C8D6D6D6F9F9F9FAFAFAF7F7
          F7F4F4F4F1F1F1EFEFEFECECECEAEAEAE8E8E8E7E7E7E5E5E5E4E4E4E4E4E4E3
          E3E3E3E3E3E3E3E3E3E3E3E3E3E3E4E4E4E5E5E5E6E6E6E8E8E8E9E9E9EBEBEB
          EEEEEEF0F0F0F3F3F3F6F6F6F9F9F9F8F8F8D5D5D5C8C8C8E1E1E1F2F2F2FBFB
          FBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF6F6F6EAEAEAD6D6D6C6C6C6E2E2E2FCFC
          FCFAFAFAF7F7F7F5F5F5F3F3F3F1F1F1EFEFEFEDEDEDECECECEBEBEBEAEAEAEA
          EAEAE9E9E9E9E9E9EAEAEAEAEAEAEBEBEBEBEBEBEDEDEDEEEEEEF0F0F0F2F2F2
          F4F4F4F6F6F6F9F9F9FAFAFAE1E1E1C6C6C6D6D6D6EAEAEAF6F6F6FCFCFCFEFE
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFAFAFAF2F2F2E5E5E5D1D1D1C5C5
          C5DFDFDFF9F9F9FBFBFBF9F9F9F7F7F7F5F5F5F4F4F4F3F3F3F1F1F1F1F1F1F0
          F0F0F0F0F0F0F0F0F0F0F0F1F1F1F1F1F1F2F2F2F3F3F3F4F4F4F6F6F6F8F8F8
          FAFAFAF8F8F8DEDEDEC5C5C5D1D1D1E5E5E5F2F2F2FAFAFAFDFDFDFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF8F8F8F1F1F1E4E4
          E4D4D4D4C5C5C5D1D1D1E6E6E6F9F9F9FCFCFCFAFAFAF9F9F9F8F8F8F7F7F7F7
          F7F7F7F7F7F7F7F7F7F7F7F7F7F7F8F8F8F9F9F9FAFAFAFBFBFBF9F9F9E6E6E6
          D1D1D1C5C5C5D4D4D4E4E4E4F1F1F1F8F8F8FCFCFCFEFEFEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFCFCFCF9F9
          F9F3F3F3EAEAEADEDEDED1D1D1C4C4C4CACACAD6D6D6DFDFDFE8E8E8F1F1F1F5
          F5F5FAFAFAFAFAFAF4F4F4F1F1F1E8E8E8DEDEDED6D6D6CACACAC4C4C4D1D1D1
          DEDEDEEAEAEAF3F3F3F9F9F9FCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
          FEFDFDFDFBFBFBF7F7F7F2F2F2ECECECE5E5E5DDDDDDD6D6D6D0D0D0CBCBCBC7
          C7C7C5C5C5C5C5C5C7C7C7CBCBCBD0D0D0D6D6D6DDDDDDE5E5E5ECECECF2F2F2
          F7F7F7FBFBFBFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFEFEFEFEFEFEFDFDFDFBFBFBF9F9F9F7F7F7F4F4F4F2F2F2F0F0F0EF
          EFEFEEEEEEEEEEEEEFEFEFF0F0F0F2F2F2F4F4F4F7F7F7F9F9F9FBFBFBFDFDFD
          FEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
        ShowHint = True
        Stretch = True
        OnClick = Image2Click
      end
    end
  end
  object ADOConnection1: TADOConnection
    Left = 552
    Top = 8
  end
  object ADOTable1: TADOTable
    Left = 600
    Top = 8
  end
  object DataSource1: TDataSource
    Left = 648
    Top = 8
  end
  object ColorDialog1: TColorDialog
    Left = 984
    Top = 576
  end
end
