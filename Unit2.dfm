object Form2: TForm2
  Left = 220
  Top = 159
  Width = 450
  Height = 386
  Caption = 'Kondisional'
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
    Left = 45
    Top = 155
    Width = 36
    Height = 13
    Caption = 'NILAI 1'
  end
  object Label2: TLabel
    Left = 45
    Top = 190
    Width = 36
    Height = 13
    Caption = 'NILAI 2'
  end
  object Label3: TLabel
    Left = 45
    Top = 225
    Width = 36
    Height = 13
    Caption = 'NILAI 3'
  end
  object Label4: TLabel
    Left = 245
    Top = 155
    Width = 32
    Height = 13
    Caption = 'TOTAL'
  end
  object Label5: TLabel
    Left = 250
    Top = 195
    Width = 29
    Height = 13
    Caption = 'Grade'
  end
  object Panel1: TPanel
    Left = 45
    Top = 30
    Width = 316
    Height = 51
    Caption = 'Contoh Kondisional'
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 105
    Top = 105
    Width = 56
    Height = 31
    Caption = 'Nilai'
    TabOrder = 1
  end
  object Panel3: TPanel
    Left = 170
    Top = 105
    Width = 56
    Height = 31
    Caption = 'Bobot'
    TabOrder = 2
  end
  object edtnilai1: TEdit
    Left = 90
    Top = 150
    Width = 76
    Height = 21
    TabOrder = 3
  end
  object edtnilai2: TEdit
    Left = 90
    Top = 185
    Width = 76
    Height = 21
    TabOrder = 4
  end
  object edtnilai3: TEdit
    Left = 90
    Top = 220
    Width = 76
    Height = 21
    TabOrder = 5
  end
  object edtbobot1: TEdit
    Left = 170
    Top = 150
    Width = 61
    Height = 21
    TabOrder = 6
  end
  object edtbobot2: TEdit
    Left = 170
    Top = 185
    Width = 61
    Height = 21
    TabOrder = 7
  end
  object edtbobot3: TEdit
    Left = 170
    Top = 220
    Width = 61
    Height = 21
    TabOrder = 8
  end
  object edttotal: TEdit
    Left = 285
    Top = 150
    Width = 71
    Height = 21
    TabOrder = 9
  end
  object edtgrade: TEdit
    Left = 285
    Top = 190
    Width = 71
    Height = 21
    TabOrder = 10
  end
  object Button1: TButton
    Left = 90
    Top = 265
    Width = 75
    Height = 25
    Caption = 'Hitung'
    TabOrder = 11
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 175
    Top = 265
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 12
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 285
    Top = 265
    Width = 75
    Height = 25
    Caption = 'Keluar'
    TabOrder = 13
    OnClick = Button3Click
  end
end
