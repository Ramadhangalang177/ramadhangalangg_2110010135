unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    edtnilai1: TEdit;
    edtnilai2: TEdit;
    edtnilai3: TEdit;
    edtnilai4: TEdit;
    edtnilai5: TEdit;
    edtbobot1: TEdit;
    edtbobot2: TEdit;
    edtbobot3: TEdit;
    edtbobot4: TEdit;
    edtbobot5: TEdit;
    edttotal: TEdit;
    edtgrade: TEdit;
    edtket: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
nil1, nil2, nil3, nil4, nil5, hasil : Real;
    b1, b2, b3, b4, b5 : Real;
    grade,ket : string;
begin
 nil1 := StrToFloat(edtnilai1.Text);
    nil2 := StrToFloat(edtnilai2.Text);
    nil3 := StrToFloat(edtnilai3.Text);
    nil4 := StrToFloat(edtnilai4.Text);
    nil5 := StrToFloat(edtnilai5.Text);

    b1 := Strtofloat(edtbobot1.text);
    b2 := Strtofloat(edtbobot2.text);
    b3 := Strtofloat(edtbobot3.text);
    b4 := Strtofloat(edtbobot4.text);
    b5 := Strtofloat(edtbobot5.text);

    hasil := nil1*b1 + nil2*b2 + nil3*b3 + nil4*b4 + nil5*b5;

    if (hasil >= 80) then
    grade:='A'
    else
    if (hasil >= 70) then
    grade:='B'
    else
    if (hasil >= 60) then
    grade:='C'
    else
    if (hasil >= 50) then
    grade:='D'
    else
    grade:='E';

    if ((grade ='A')or(grade='B')or(grade='C')) then
      ket:='LULUS'
    else
      ket:='TIDAK LULUS';

      edttotal.Text := FloatToStr(hasil);
      edtgrade.Text := grade;
      edtket.Text := ket;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  edtnilai1.Text :='0';
    edtnilai2.Text :='0';
    edtnilai3.Text :='0';
    edtnilai4.Text :='0';
    edtnilai5.Text :='0';
    edttotal.Text :='';
    edtgrade.Text :='';
end;

procedure TForm4.Button3Click(Sender: TObject);

begin
  Application.Terminate;
end;

end.
