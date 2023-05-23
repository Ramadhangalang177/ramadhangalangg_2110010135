object Form6: TForm6
  Left = 211
  Top = 158
  Width = 732
  Height = 502
  Caption = 'Angkatan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 20
    Width = 91
    Height = 13
    Caption = 'TAHUN ANGKATAN'
  end
  object Label2: TLabel
    Left = 10
    Top = 55
    Width = 101
    Height = 13
    Caption = 'JUMLAH TERDAFTAR'
  end
  object Label3: TLabel
    Left = 10
    Top = 85
    Width = 55
    Height = 13
    Caption = 'FALKULTAS'
  end
  object Cbb1: TComboBox
    Left = 140
    Top = 15
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object Edtnilai1: TEdit
    Left = 140
    Top = 50
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Cbb2: TComboBox
    Left = 140
    Top = 85
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object Button1: TButton
    Left = 35
    Top = 130
    Width = 75
    Height = 25
    Caption = 'ADD DATA'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 170
    Top = 130
    Width = 75
    Height = 25
    Caption = 'VIEW GRAFIK'
    TabOrder = 4
    OnClick = Button2Click
  end
  object StringGrid1: TStringGrid
    Left = 300
    Top = 15
    Width = 320
    Height = 146
    TabOrder = 5
    ColWidths = (
      64
      64
      65
      70
      64)
  end
  object Chart1: TChart
    Left = 100
    Top = 200
    Width = 400
    Height = 250
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'TChart')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 6
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Visible = True
      SeriesColor = clRed
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
    end
  end
end
