unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    e_nilai1: TEdit;
    e_nilai2: TEdit;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
edt1.Text:=IntToStr(StrToInt(e_nilai1.Text)+strtoint(e_nilai2.Text));
edt2.Text:=IntToStr(StrToInt(e_nilai1.Text)-strtoint(e_nilai2.Text));
edt3.Text:=IntToStr(StrToInt(e_nilai1.Text)*strtoint(e_nilai2.Text));
edt4.Text:=FloatToStr(StrToFloat(e_nilai1.Text)/strtoFloat(e_nilai2.Text));
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
edt1.Text:=IntToStr(StrToInt(e_nilai1.Text)+strtoint(e_nilai2.Text));
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
edt2.Text:=IntToStr(StrToInt(e_nilai1.Text)+strtoint(e_nilai2.Text));
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
edt3.Text:=IntToStr(StrToInt(e_nilai1.Text)+strtoint(e_nilai2.Text));
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
edt4.Text:=IntToStr(StrToInt(e_nilai1.Text)+strtoint(e_nilai2.Text));
end;

end.
