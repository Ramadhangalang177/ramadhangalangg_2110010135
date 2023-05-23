object Form1: TForm1
  Left = 278
  Top = 181
  Width = 521
  Height = 306
  Caption = 'Menu Utama'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 40
    Top = 25
    object Menu1: TMenuItem
      Caption = 'Menu Utama'
      object Kalkulator11: TMenuItem
        Caption = 'Latihan 1'
        OnClick = Kalkulator11Click
      end
      object Kalkulator1: TMenuItem
        Caption = 'Latihan 2'
        OnClick = Kalkulator1Click
      end
      object Kondisional1: TMenuItem
        Caption = 'Kondisional 1'
        OnClick = Kondisional1Click
      end
      object BobotNilia1: TMenuItem
        Caption = 'Kondisional 2'
        OnClick = BobotNilia1Click
      end
      object Penyakit1: TMenuItem
        Caption = 'Penyakit'
        OnClick = Penyakit1Click
      end
      object Angkatan1: TMenuItem
        Caption = 'Angkatan'
        OnClick = Angkatan1Click
      end
      object NIM1: TMenuItem
        Caption = 'NIM'
        OnClick = NIM1Click
      end
      object Jadwal1: TMenuItem
        Caption = 'Jadwal Praktikum'
        OnClick = Jadwal1Click
      end
    end
  end
end
