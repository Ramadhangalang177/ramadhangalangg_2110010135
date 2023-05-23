unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, Grids, StdCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Cbb1: TComboBox;
    Edtnilai1: TEdit;
    Cbb2: TComboBox;
    Button1: TButton;
    Button2: TButton;
    StringGrid1: TStringGrid;
    Chart1: TChart;
    Series1: TPieSeries;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.FormCreate(Sender: TObject);
begin
  StringGrid1.RowCount:=1;
  StringGrid1.ColCount:=4;
  StringGrid1.Cells[0,0]:='NO';
  StringGrid1.Cells[1,0]:='JUMLAH TERDAFTAR';
  StringGrid1.Cells[2,0]:='FALKULTAS';
  StringGrid1.Cells[3,0]:='TAHUN ANGKATAN';

  StringGrid1.ColWidths[0]:=20;
  StringGrid1.ColWidths[1]:=70;
  StringGrid1.ColWidths[2]:=170;
  StringGrid1.ColWidths[3]:=100;
end;


procedure TForm6.Button1Click(Sender: TObject);
begin
StringGrid1.RowCount := StringGrid1.RowCount+1;
StringGrid1.Cells[0,StringGrid1.RowCount -1] := IntToStr(StringGrid1.RowCount -1);
StringGrid1.Cells[1,StringGrid1.RowCount -1] := Edtnilai1.Text;
StringGrid1.Cells[2,StringGrid1.RowCount -1] := Cbb2.Text;
StringGrid1.Cells[3,StringGrid1.RowCount -1] := Cbb1.Text;
end;

procedure TForm6.Button2Click(Sender: TObject);
var i:Integer;
begin
 for i:=1 to StringGrid1.RowCount-1 do
  begin
    Chart1.Series[0].Add(StrToFloat(StringGrid1.Cells[1,i]),StringGrid1.Cells[2,i]);
  end;
end;



end.
