object Form7: TForm7
  Left = 210
  Top = 146
  Width = 749
  Height = 509
  Caption = 'NIM'
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
  object lbl1: TLabel
    Left = 30
    Top = 32
    Width = 28
    Height = 18
    Caption = 'NIM'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 30
    Top = 72
    Width = 130
    Height = 18
    Caption = 'NAMA MAHASISWA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 30
    Top = 112
    Width = 130
    Height = 18
    Caption = 'TAHUN ANGKATAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 184
    Top = 32
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 184
    Top = 72
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object cbb1: TComboBox
    Left = 184
    Top = 112
    Width = 169
    Height = 21
    ItemHeight = 13
    TabOrder = 2
  end
  object string1: TStringGrid
    Left = 384
    Top = 24
    Width = 320
    Height = 120
    TabOrder = 3
  end
  object btn1: TBitBtn
    Left = 176
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Add Data'
    TabOrder = 4
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 272
    Top = 152
    Width = 75
    Height = 25
    Caption = 'View Grafik'
    TabOrder = 5
    OnClick = btn2Click
  end
  object cht1: TChart
    Left = 26
    Top = 187
    Width = 460
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
