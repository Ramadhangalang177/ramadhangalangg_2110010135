object Form5: TForm5
  Left = 192
  Top = 125
  Width = 778
  Height = 395
  Caption = 'Penyakit'
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
  object l1: TLabel
    Left = 47
    Top = 32
    Width = 57
    Height = 14
    Caption = 'PENYAKIT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l2: TLabel
    Left = 47
    Top = 72
    Width = 112
    Height = 14
    Caption = 'JUMLAH PENDERITA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt1: TEdit
    Left = 183
    Top = 72
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object cbb_1: TComboBox
    Left = 183
    Top = 32
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'COVID 19'
      'DEMAM'
      'RINDU'
      'FLU')
  end
  object bt_simpan: TButton
    Left = 101
    Top = 103
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 2
    OnClick = bt_simpanClick
  end
  object string1: TStringGrid
    Left = 16
    Top = 136
    Width = 320
    Height = 150
    TabOrder = 3
  end
  object cht1: TChart
    Left = 348
    Top = 70
    Width = 388
    Height = 236
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      '')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 4
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
  object b1: TButton
    Left = 29
    Top = 293
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 5
    OnClick = b1Click
  end
  object b3: TButton
    Left = 207
    Top = 293
    Width = 75
    Height = 25
    Caption = 'CLOSE'
    TabOrder = 6
    OnClick = b3Click
  end
end
