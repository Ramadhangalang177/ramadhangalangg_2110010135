unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    edtnilai1: TEdit;
    edtnilai2: TEdit;
    edtnilai3: TEdit;
    edtbobot1: TEdit;
    edtbobot2: TEdit;
    edtbobot3: TEdit;
    edttotal: TEdit;
    edtgrade: TEdit;
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
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  nil1, nil2, nil3, hasil : Real ;
  b1, b2, b3 :Real;
  grade :string;
begin
  nil1 := StrToFloat(edtnilai1.Text);
    nil2 := StrToFloat(edtnilai2.Text);
    nil3 := StrToFloat(edtnilai3.Text);

    b1 := StrToFloat(edtbobot1.Text)/100;
    b2 := StrToFloat(edtbobot2.Text)/100;
    b3 := StrToFloat(edtbobot3.Text)/100;

    hasil := nil1*b1 + nil2*b2 + nil3*b3;

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

    edttotal.Text := FloatToStr(hasil);
    edtgrade.Text := grade;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 edtnilai1.Text := '0';
  edtnilai2.Text := '0';
  edtnilai3.Text := '0';
  edttotal.Text := '';
  edtgrade.Text := '';
end;


procedure TForm2.Button3Click(Sender: TObject);
begin
 Application.Terminate
end;

end.
 