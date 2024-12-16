object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 1063
  ClientWidth = 1401
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClick = BitBtn2Click
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 176
    Top = 531
    Width = 60
    Height = 15
    Caption = 'Fuzzy Rules'
  end
  object Label2: TLabel
    Left = 456
    Top = 531
    Width = 63
    Height = 15
    Caption = 'Rules Result'
  end
  object Label3: TLabel
    Left = 736
    Top = 531
    Width = 21
    Height = 15
    Caption = 'Min'
  end
  object Label4: TLabel
    Left = 1016
    Top = 531
    Width = 23
    Height = 15
    Caption = 'Max'
  end
  object Chart1: TChart
    Left = 176
    Top = 16
    Width = 400
    Height = 250
    Legend.Alignment = laTop
    Legend.CheckBoxes = True
    Title.Text.Strings = (
      'IMF Height')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 200.000000000000000000
    BottomAxis.Minimum = 140.000000000000000000
    BottomAxis.Title.Caption = 'Height (cm)'
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1.500000000000000000
    LeftAxis.Title.Caption = #956
    View3D = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      HoverElement = [heCurrent]
      Title = 'Short'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      HoverElement = [heCurrent]
      Title = 'Medium'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series3: TLineSeries
      HoverElement = [heCurrent]
      Title = 'Tall'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series41: TBarSeries
      HoverElement = []
      BarPen.Visible = False
      SeriesColor = clBlack
      Title = 'Input Height'
      BarWidthPercent = 1
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object Chart2: TChart
    Left = 582
    Top = 16
    Width = 400
    Height = 250
    Legend.Alignment = laTop
    Legend.CheckBoxes = True
    Title.Text.Strings = (
      'IMF Weight')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 120.000000000000000000
    BottomAxis.Minimum = 30.000000000000000000
    BottomAxis.Title.Caption = 'Weight (kg)'
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1.500000000000000000
    LeftAxis.Title.Caption = #956
    View3D = False
    TabOrder = 1
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series4: TLineSeries
      HoverElement = [heCurrent]
      Title = 'Light'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series5: TLineSeries
      HoverElement = [heCurrent]
      Title = 'Medium'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series6: TLineSeries
      HoverElement = [heCurrent]
      Title = 'Heavy'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series42: TBarSeries
      HoverElement = []
      BarBrush.BackColor = clDefault
      BarPen.Visible = False
      Marks.Visible = False
      Marks.Callout.Length = 8
      SeriesColor = clBlack
      Title = 'Input Weight'
      BarWidthPercent = 1
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 121
    Width = 144
    Height = 41
    Caption = 'Fuzzification'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object LabeledEdit1: TLabeledEdit
    Left = 8
    Top = 40
    Width = 144
    Height = 23
    EditLabel.Width = 36
    EditLabel.Height = 15
    EditLabel.Caption = 'Height'
    TabOrder = 3
    Text = '158'
  end
  object LabeledEdit2: TLabeledEdit
    Left = 8
    Top = 88
    Width = 144
    Height = 23
    EditLabel.Width = 38
    EditLabel.Height = 15
    EditLabel.Caption = 'Weight'
    TabOrder = 4
    Text = '40'
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 168
    Width = 144
    Height = 41
    Caption = 'Inference'
    TabOrder = 5
    OnClick = BitBtn2Click
  end
  object Chart3: TChart
    Left = 989
    Top = 16
    Width = 400
    Height = 250
    Legend.Alignment = laTop
    Legend.CheckBoxes = True
    Title.Text.Strings = (
      'OMF')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 100.000000000000000000
    BottomAxis.Title.Caption = 'Body Condition (%)'
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1.500000000000000000
    LeftAxis.Title.Caption = #956
    View3D = False
    TabOrder = 6
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series7: TLineSeries
      HoverElement = [heCurrent]
      Title = 'Not Ideal'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series8: TLineSeries
      HoverElement = [heCurrent]
      Title = 'Fairly Ideal'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series9: TLineSeries
      HoverElement = [heCurrent]
      Title = 'Ideal'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series43: TBarSeries
      HoverElement = []
      BarBrush.BackColor = clDefault
      BarPen.Visible = False
      Marks.Visible = False
      Marks.Callout.Length = 8
      SeriesColor = clBlack
      Title = 'Output BC%'
      BarWidthPercent = 1
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object Chart13: TChart
    Left = 792
    Top = 272
    Width = 597
    Height = 250
    Legend.Alignment = laTop
    Legend.CheckBoxes = True
    Title.Text.Strings = (
      'Truncate')
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 100.000000000000000000
    BottomAxis.Title.Caption = 'Body Condition (%)'
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1.500000000000000000
    LeftAxis.Title.Caption = #956
    View3D = False
    TabOrder = 7
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series37: TLineSeries
      HoverElement = [heCurrent]
      Title = 'Not Ideal'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series38: TLineSeries
      HoverElement = [heCurrent]
      Title = 'Fairly Ideal'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series39: TLineSeries
      HoverElement = [heCurrent]
      Title = 'Ideal'
      Brush.BackColor = clDefault
      LinePen.Width = 3
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series40: TBarSeries
      HoverElement = []
      BarBrush.BackColor = clDefault
      BarPen.Visible = False
      Marks.Visible = False
      Marks.Callout.Length = 8
      SeriesColor = 33023
      Title = 'Truncate'
      Transparency = 20
      BarWidthPercent = 100
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
    object Series71: TBarSeries
      HoverElement = []
      BarBrush.BackColor = clDefault
      Marks.Visible = False
      Marks.Callout.Length = 0
      Title = 'Centroid'
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object BitBtn3: TBitBtn
    Left = 8
    Top = 215
    Width = 144
    Height = 41
    Caption = 'Defuzzify'
    TabOrder = 8
    OnClick = BitBtn3Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 272
    Width = 144
    Height = 201
    ItemHeight = 15
    TabOrder = 9
  end
  object LabeledEdit3: TLabeledEdit
    Left = 8
    Top = 504
    Width = 144
    Height = 23
    EditLabel.Width = 134
    EditLabel.Height = 15
    EditLabel.Caption = 'Body Condition Level [%]'
    TabOrder = 10
    Text = ''
  end
  object LabeledEdit4: TLabeledEdit
    Left = 8
    Top = 552
    Width = 144
    Height = 23
    EditLabel.Width = 69
    EditLabel.Height = 15
    EditLabel.Caption = 'Not Ideal [%]'
    TabOrder = 11
    Text = ''
  end
  object LabeledEdit5: TLabeledEdit
    Left = 8
    Top = 600
    Width = 144
    Height = 23
    EditLabel.Width = 77
    EditLabel.Height = 15
    EditLabel.Caption = 'Fairly Ideal [%]'
    TabOrder = 12
    Text = ''
  end
  object LabeledEdit6: TLabeledEdit
    Left = 8
    Top = 648
    Width = 144
    Height = 23
    EditLabel.Width = 46
    EditLabel.Height = 15
    EditLabel.Caption = 'Ideal [%]'
    TabOrder = 13
    Text = ''
  end
  object PageControl1: TPageControl
    Left = 176
    Top = 272
    Width = 601
    Height = 250
    ActivePage = TabSheet1
    TabOrder = 14
    object TabSheet1: TTabSheet
      Caption = 'Rule 1'
      object Chart7: TChart
        Left = 0
        Top = 0
        Width = 593
        Height = 220
        Legend.CheckBoxes = True
        Legend.Visible = False
        Title.Text.Strings = (
          'Rule 1 (S + L --> I)')
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.Maximum = 100.000000000000000000
        BottomAxis.Title.Caption = 'Body Condition (%)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 1.500000000000000000
        LeftAxis.Title.Caption = #956
        View3D = False
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series45: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          OutLine.Style = psDash
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series46: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          OutLine.Style = psDash
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series44: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          OutLine.Style = psDash
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series10: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series11: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series12: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Rule 2'
      ImageIndex = 1
      object Chart4: TChart
        Left = 0
        Top = 0
        Width = 593
        Height = 220
        Legend.CheckBoxes = True
        Legend.Visible = False
        Title.Text.Strings = (
          'Rule 2 (M + L --> FI)')
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.Maximum = 100.000000000000000000
        BottomAxis.Title.Caption = 'Body Condition (%)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 1.500000000000000000
        LeftAxis.Title.Caption = #956
        View3D = False
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series47: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series48: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series49: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series13: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series14: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series15: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Rule 3'
      ImageIndex = 2
      object Chart5: TChart
        Left = 0
        Top = 0
        Width = 593
        Height = 220
        Legend.CheckBoxes = True
        Legend.Visible = False
        Title.Text.Strings = (
          'Rule 3 (T + L --> NI)')
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.Maximum = 100.000000000000000000
        BottomAxis.Title.Caption = 'Body Condition (%)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 1.500000000000000000
        LeftAxis.Title.Caption = #956
        View3D = False
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series50: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series51: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series52: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series16: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series17: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series18: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Rule 4'
      ImageIndex = 3
      object Chart6: TChart
        Left = 0
        Top = 0
        Width = 593
        Height = 220
        Legend.CheckBoxes = True
        Legend.Visible = False
        Title.Text.Strings = (
          'Rule 4 (S + M --> FI)')
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.Maximum = 100.000000000000000000
        BottomAxis.Title.Caption = 'Body Condition (%)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 1.500000000000000000
        LeftAxis.Title.Caption = #956
        View3D = False
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series53: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series54: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series55: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series19: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series20: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series21: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Rule 5'
      ImageIndex = 4
      object Chart8: TChart
        Left = 0
        Top = 0
        Width = 593
        Height = 220
        Legend.CheckBoxes = True
        Legend.Visible = False
        Title.Text.Strings = (
          'Rule 5 (M + M --> I)')
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.Maximum = 100.000000000000000000
        BottomAxis.Title.Caption = 'Body Condition (%)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 1.500000000000000000
        LeftAxis.Title.Caption = #956
        View3D = False
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series56: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series57: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series58: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series22: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series23: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series24: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Rule 6'
      ImageIndex = 5
      object Chart9: TChart
        Left = 0
        Top = 0
        Width = 593
        Height = 220
        Legend.CheckBoxes = True
        Legend.Visible = False
        Title.Text.Strings = (
          'Rule 6 (T + M --> FI)')
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.Maximum = 100.000000000000000000
        BottomAxis.Title.Caption = 'Body Condition (%)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 1.500000000000000000
        LeftAxis.Title.Caption = #956
        View3D = False
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series59: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Color = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series60: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series61: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series25: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series26: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series27: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Rule 7'
      ImageIndex = 6
      object Chart10: TChart
        Left = 0
        Top = 0
        Width = 593
        Height = 220
        Legend.CheckBoxes = True
        Legend.Visible = False
        Title.Text.Strings = (
          'Rule 7 (S + H --> NI)')
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.Maximum = 100.000000000000000000
        BottomAxis.Title.Caption = 'Body Condition (%)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 1.500000000000000000
        LeftAxis.Title.Caption = #956
        View3D = False
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series62: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series63: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series64: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series28: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series29: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series30: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Rule 8'
      ImageIndex = 7
      object Chart11: TChart
        Left = 0
        Top = 0
        Width = 593
        Height = 220
        Legend.CheckBoxes = True
        Legend.Visible = False
        Title.Text.Strings = (
          'Rule 8 (M + H --> FI)')
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.Maximum = 100.000000000000000000
        BottomAxis.Title.Caption = 'Body Condition (%)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 1.500000000000000000
        LeftAxis.Title.Caption = #956
        View3D = False
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series65: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series66: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series67: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series31: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series32: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series33: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Rule 9'
      ImageIndex = 8
      object Chart12: TChart
        Left = 0
        Top = 0
        Width = 593
        Height = 220
        Legend.CheckBoxes = True
        Legend.Visible = False
        Title.Text.Strings = (
          'Rule 9 (T + H --> I)')
        BottomAxis.Automatic = False
        BottomAxis.AutomaticMaximum = False
        BottomAxis.AutomaticMinimum = False
        BottomAxis.Maximum = 100.000000000000000000
        BottomAxis.Title.Caption = 'Body Condition (%)'
        LeftAxis.Automatic = False
        LeftAxis.AutomaticMaximum = False
        LeftAxis.AutomaticMinimum = False
        LeftAxis.Maximum = 1.500000000000000000
        LeftAxis.Title.Caption = #956
        View3D = False
        TabOrder = 0
        DefaultCanvas = 'TGDIPlusCanvas'
        ColorPaletteIndex = 13
        object Series68: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series69: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series70: TLineSeries
          HoverElement = [heCurrent]
          SeriesColor = clSilver
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series34: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series35: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
        object Series36: TLineSeries
          HoverElement = [heCurrent]
          Brush.BackColor = clDefault
          LinePen.Width = 3
          Pointer.InflateMargins = True
          Pointer.Style = psRectangle
          XValues.Name = 'X'
          XValues.Order = loAscending
          YValues.Name = 'Y'
          YValues.Order = loNone
        end
      end
    end
  end
  object StringGrid1: TStringGrid
    Left = 176
    Top = 552
    Width = 265
    Height = 119
    ColCount = 4
    DefaultRowHeight = 26
    FixedCols = 0
    RowCount = 4
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goFixedRowDefAlign]
    TabOrder = 15
  end
  object StringGrid2: TStringGrid
    Left = 456
    Top = 552
    Width = 265
    Height = 193
    ColCount = 4
    DefaultRowHeight = 26
    FixedCols = 0
    RowCount = 7
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goFixedRowDefAlign]
    TabOrder = 16
  end
  object StringGrid3: TStringGrid
    Left = 736
    Top = 552
    Width = 265
    Height = 119
    ColCount = 4
    DefaultRowHeight = 26
    FixedCols = 0
    RowCount = 4
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goFixedRowDefAlign]
    TabOrder = 17
  end
  object StringGrid4: TStringGrid
    Left = 1016
    Top = 552
    Width = 265
    Height = 71
    ColCount = 4
    DefaultRowHeight = 26
    FixedCols = 0
    RowCount = 2
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goFixedRowDefAlign]
    TabOrder = 18
  end
end
