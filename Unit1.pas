unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Kondisional1: TMenuItem;
    Kalkulator1: TMenuItem;
    BobotNilia1: TMenuItem;
    Penyakit1: TMenuItem;
    Angkatan1: TMenuItem;
    NIM1: TMenuItem;
    Jadwal1: TMenuItem;
    Kalkulator11: TMenuItem;
    procedure Kondisional1Click(Sender: TObject);
    procedure Kalkulator1Click(Sender: TObject);
    procedure BobotNilia1Click(Sender: TObject);
    procedure Penyakit1Click(Sender: TObject);
    procedure Angkatan1Click(Sender: TObject);
    procedure NIM1Click(Sender: TObject);
    procedure Kalkulator11Click(Sender: TObject);
    procedure Jadwal1Click(Sender: TObject);

   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9 ;

{$R *.dfm}

procedure TForm1.Kondisional1Click(Sender: TObject);
begin
  Form2.show;
end;

procedure TForm1.Kalkulator1Click(Sender: TObject);
begin
  Form3.show;
end;

procedure TForm1.BobotNilia1Click(Sender: TObject);
begin
  Form4.show;
end;

procedure TForm1.Penyakit1Click(Sender: TObject);
begin
  Form5.show;
end;

procedure TForm1.Angkatan1Click(Sender: TObject);
begin
  Form6.show;
end;

procedure TForm1.NIM1Click(Sender: TObject);
begin
  Form7.show;
end;

procedure TForm1.Kalkulator11Click(Sender: TObject);
begin
  Form8.Show;
end;

procedure TForm1.Jadwal1Click(Sender: TObject);
begin
  Form9.show
end;

end.
