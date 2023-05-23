unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, Buttons,
  Grids;

type
  TForm7 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    cbb1: TComboBox;
    string1: TStringGrid;
    btn1: TBitBtn;
    btn2: TBitBtn;
    cht1: TChart;
    Series1: TPieSeries;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.FormCreate(Sender: TObject);
begin
string1.RowCount:=1;
string1.ColCount:=4;
string1.Cells[0,0]:='NO';
string1.Cells[1,0]:='NIM';
string1.Cells[2,0]:='NAMA MAHASISWA';
string1.Cells[3,0]:='TAHUN ANGKATAN';

string1.ColWidths[0]:=20;
string1.ColWidths[1]:=70;
string1.ColWidths[2]:=170;
string1.ColWidths[3]:=100;
end;

procedure TForm7.btn1Click(Sender: TObject);
begin
 string1.RowCount := string1.RowCount+1;
string1.Cells[0,string1.RowCount -1] := IntToStr(string1.RowCount -1);
string1.Cells[1,string1.RowCount -1] := edt1.Text;
string1.Cells[2,string1.RowCount -1] := edt2.Text;
string1.Cells[3,string1.RowCount -1] := cbb1.Text;
end;

procedure TForm7.btn2Click(Sender: TObject);
var i:Integer;
begin
 for i:=1 to string1.RowCount-1 do
 begin
   cht1.Series[0].Add(StrToFloat(string1.Cells[1,i]),string1.Cells[2,i]);

 end;
end;

end.
