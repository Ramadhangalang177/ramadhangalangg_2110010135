object Form3: TForm3
  Left = 232
  Top = 177
  Width = 535
  Height = 410
  Caption = 'Kalkulator2'
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
    Left = 65
    Top = 40
    Width = 76
    Height = 18
    Caption = 'INPUTAN 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 65
    Top = 80
    Width = 76
    Height = 18
    Caption = 'INPUTAN 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object e_nilai1: TEdit
    Left = 175
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object e_nilai2: TEdit
    Left = 175
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 335
    Top = 45
    Width = 116
    Height = 46
    Caption = 'PROSES SEMUA'
    TabOrder = 2
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 65
    Top = 135
    Width = 391
    Height = 176
    Caption = 'NILAI DIPROSES'
    TabOrder = 3
    object Label3: TLabel
      Left = 25
      Top = 35
      Width = 73
      Height = 13
      Caption = 'HASIL TAMBAH'
    end
    object Label4: TLabel
      Left = 25
      Top = 65
      Width = 73
      Height = 13
      Caption = 'HASIL KURANG'
    end
    object Label5: TLabel
      Left = 25
      Top = 100
      Width = 54
      Height = 13
      Caption = 'HASIL KALI'
    end
    object Label6: TLabel
      Left = 25
      Top = 130
      Width = 90
      Height = 13
      Caption = 'HASIL PEMBAGIAN'
    end
    object edt1: TEdit
      Left = 130
      Top = 30
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 130
      Top = 60
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edt3: TEdit
      Left = 130
      Top = 95
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edt4: TEdit
      Left = 130
      Top = 130
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Button2: TButton
      Left = 285
      Top = 25
      Width = 75
      Height = 25
      Caption = '+'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 285
      Top = 60
      Width = 75
      Height = 25
      Caption = '-'
      TabOrder = 5
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 285
      Top = 95
      Width = 75
      Height = 25
      Caption = 'X'
      TabOrder = 6
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 285
      Top = 130
      Width = 75
      Height = 25
      Caption = '/'
      TabOrder = 7
      OnClick = Button5Click
    end
  end
end
