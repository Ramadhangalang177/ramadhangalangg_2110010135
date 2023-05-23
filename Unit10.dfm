object Form10: TForm10
  Left = 417
  Top = 156
  Width = 740
  Height = 563
  Caption = 'TAMBAH DATA JADWAL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 15
    Top = 5
    Width = 676
    Height = 251
    Caption = 'TAMBAH DATA JADWAL'
    TabOrder = 0
    object Label1: TLabel
      Left = 20
      Top = 20
      Width = 52
      Height = 13
      Caption = 'JAM AWAL'
    end
    object Label2: TLabel
      Left = 290
      Top = 20
      Width = 54
      Height = 13
      Caption = 'JAM AKHIR'
    end
    object Label3: TLabel
      Left = 20
      Top = 55
      Width = 99
      Height = 13
      Caption = 'HARI PELAKSANAAN'
    end
    object Label4: TLabel
      Left = 20
      Top = 85
      Width = 46
      Height = 13
      Caption = 'TANGGAL'
    end
    object Label5: TLabel
      Left = 20
      Top = 115
      Width = 49
      Height = 13
      Caption = 'RUANGAN'
    end
    object Label6: TLabel
      Left = 20
      Top = 175
      Width = 67
      Height = 13
      Caption = 'MATA KULIAH'
    end
    object Label7: TLabel
      Left = 20
      Top = 145
      Width = 30
      Height = 13
      Caption = 'KELAS'
    end
    object Label8: TLabel
      Left = 20
      Top = 200
      Width = 67
      Height = 13
      Caption = 'TOTAL HADIR'
    end
    object Edit1: TEdit
      Left = 150
      Top = 15
      Width = 126
      Height = 21
      TabOrder = 0
      Text = '00:00'
    end
    object Edit2: TEdit
      Left = 375
      Top = 15
      Width = 121
      Height = 21
      TabOrder = 1
      Text = '00:00'
    end
    object cbb1: TComboBox
      Left = 150
      Top = 50
      Width = 181
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = '----PILIH HARI----'
      Items.Strings = (
        'SENIN'
        'SELASA'
        'RABU'
        'KAMIS'
        'JUMAT'
        'SABTU'
        'MINGGU')
    end
    object dtp1: TDateTimePicker
      Left = 150
      Top = 80
      Width = 181
      Height = 21
      Date = 45068.844881770830000000
      Time = 45068.844881770830000000
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 150
      Top = 110
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object Edit4: TEdit
      Left = 150
      Top = 140
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object Edit5: TEdit
      Left = 150
      Top = 170
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object Edit6: TEdit
      Left = 150
      Top = 195
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object Button1: TButton
      Left = 575
      Top = 30
      Width = 75
      Height = 25
      Caption = 'SIMPAN'
      TabOrder = 8
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 575
      Top = 65
      Width = 75
      Height = 25
      Caption = 'EDIT'
      TabOrder = 9
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 575
      Top = 100
      Width = 75
      Height = 25
      Caption = 'HAPUS'
      TabOrder = 10
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 575
      Top = 135
      Width = 75
      Height = 25
      Caption = 'BATAL'
      TabOrder = 11
      OnClick = Button4Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 15
    Top = 275
    Width = 676
    Height = 216
    DataSource = Form9.ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
end
