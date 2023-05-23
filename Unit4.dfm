object Form4: TForm4
  Left = 192
  Top = 125
  Width = 559
  Height = 497
  Caption = 'Bobot Nilai'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 25
    Top = 145
    Width = 88
    Height = 13
    Caption = 'NILAI KEHADIRAN'
  end
  object Label2: TLabel
    Left = 25
    Top = 185
    Width = 63
    Height = 13
    Caption = 'NILAI TUGAS'
  end
  object Label3: TLabel
    Left = 25
    Top = 225
    Width = 49
    Height = 13
    Caption = 'NILAI UTS'
  end
  object Label4: TLabel
    Left = 25
    Top = 260
    Width = 69
    Height = 13
    Caption = 'NILAI HARIAN'
  end
  object Label5: TLabel
    Left = 25
    Top = 290
    Width = 50
    Height = 13
    Caption = 'NILAI UAS'
  end
  object Label6: TLabel
    Left = 320
    Top = 150
    Width = 32
    Height = 13
    Caption = 'TOTAL'
  end
  object Label7: TLabel
    Left = 320
    Top = 185
    Width = 34
    Height = 13
    Caption = 'GRADE'
  end
  object Label8: TLabel
    Left = 325
    Top = 220
    Width = 22
    Height = 13
    Caption = 'KET.'
  end
  object Panel1: TPanel
    Left = 70
    Top = 15
    Width = 321
    Height = 46
    Caption = 'CEK NILAI BOBOT SISWA'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 120
    Top = 90
    Width = 86
    Height = 31
    Caption = 'Nilai'
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 230
    Top = 90
    Width = 76
    Height = 31
    Caption = 'Bobot'
    TabOrder = 2
  end
  object edtnilai1: TEdit
    Left = 120
    Top = 145
    Width = 86
    Height = 21
    TabOrder = 3
  end
  object edtnilai2: TEdit
    Left = 120
    Top = 180
    Width = 86
    Height = 21
    TabOrder = 4
  end
  object edtnilai3: TEdit
    Left = 120
    Top = 215
    Width = 86
    Height = 21
    TabOrder = 5
  end
  object edtnilai4: TEdit
    Left = 120
    Top = 250
    Width = 86
    Height = 21
    TabOrder = 6
  end
  object edtnilai5: TEdit
    Left = 120
    Top = 285
    Width = 86
    Height = 21
    TabOrder = 7
  end
  object edtbobot1: TEdit
    Left = 225
    Top = 145
    Width = 76
    Height = 21
    TabOrder = 8
  end
  object edtbobot2: TEdit
    Left = 225
    Top = 180
    Width = 76
    Height = 21
    TabOrder = 9
  end
  object edtbobot3: TEdit
    Left = 225
    Top = 215
    Width = 76
    Height = 21
    TabOrder = 10
  end
  object edtbobot4: TEdit
    Left = 225
    Top = 250
    Width = 76
    Height = 21
    TabOrder = 11
  end
  object edtbobot5: TEdit
    Left = 225
    Top = 285
    Width = 76
    Height = 21
    TabOrder = 12
  end
  object edttotal: TEdit
    Left = 365
    Top = 145
    Width = 76
    Height = 21
    TabOrder = 13
  end
  object edtgrade: TEdit
    Left = 365
    Top = 180
    Width = 86
    Height = 21
    TabOrder = 14
  end
  object edtket: TEdit
    Left = 365
    Top = 215
    Width = 121
    Height = 21
    TabOrder = 15
  end
  object Button1: TButton
    Left = 120
    Top = 325
    Width = 75
    Height = 25
    Caption = 'HITUNG'
    TabOrder = 16
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 230
    Top = 325
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 17
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 380
    Top = 260
    Width = 75
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 18
    OnClick = Button3Click
  end
end
