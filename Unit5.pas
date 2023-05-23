unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids, StdCtrls;

type
  TForm5 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    edt1: TEdit;
    cbb_1: TComboBox;
    bt_simpan: TButton;
    string1: TStringGrid;
    cht1: TChart;
    Series1: TPieSeries;
    b1: TButton;
    b3: TButton;
    procedure bt_simpanClick(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
begin
string1.Cells[0,0]:='JENIS PENYAKIT';
string1.Cells[0,1]:='COVID 19';
string1.Cells[0,2]:='FLU BIASA';
string1.Cells[0,3]:='DEMAM';
string1.Cells[0,4]:='RINDU';
string1.Cells[1,0]:='JUMLAH';
cht1.Title.Text.Add('GRAFIK INFORMASI JENIS PENYAKIT');
end;

procedure TForm5.bt_simpanClick(Sender: TObject);
begin
string1.Cells[1,cbb_1.ItemIndex+1]:=edt1.Text;
end;

procedure TForm5.b1Click(Sender: TObject);
var i: Integer;
begin
for i:=1 to string1.RowCount-1 do
cht1.Series[0].Add(StrToFloat(string1.Cells[1,i]),string1.Cells[0,i]);
end;

procedure TForm5.b3Click(Sender: TObject);
begin
 Application.Terminate;
end;



end.
