unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DbChart,
  StdCtrls, Grids, DBGrids, frxClass, frxDBSet;

type
  TForm9 = class(TForm)
    dbgrd1: TDBGrid;
    Button1: TButton;
    cht1: TDBChart;
    Series1: TBarSeries;
    Button2: TButton;
    con1: TADOConnection;
    qry1: TADOQuery;
    ds1: TDataSource;
    Button3: TButton;
    frxDBjadwal: TfrxDBDataset;
    frxjadwal: TfrxReport;
    frxDBdetailjadwal: TfrxDBDataset;
    frxdetailjadwal: TfrxReport;
    qry2: TADOQuery;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure frxjadwalClickObject(View: TfrxView; Button: TMouseButton;
      Shift: TShiftState; var Modified: Boolean);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation
uses Unit10;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
var i:Integer;
begin
 qry1.SQL.Clear;
 qry1.SQL.Add('select Count(no)as jumlah_kelas,sum(kehadiran_total) as total_siswa,kelas as nama_kelas from jadwal_table group by kelas');
 qry1.Open;

 cht1.Series[0].Clear;
 for i:=1 to qry1.RecordCount do
 begin
 cht1.Series[0].Add(StrToInt(qry1.fieldbyname('total_siswa').AsString),qry1.Fields[2].AsString);
 qry1.Next;
 end;
 dbgrd1.Columns[2].Width:=90;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
qry1.SQL.Clear;
qry1.SQL.Add('select * from jadwal_table');
qry1.Open;
dbgrd1.columns[0].Width:=30;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[5].Width:=50;
dbgrd1.Columns[6].Width:=50;
dbgrd1.Columns[7].Width:=90;
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
cht1.Title.Text.Add('GRAFIK KEHADIRAN PRAKTIKUM SISWA');
dbgrd1.columns[0].Width:=30;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[5].Width:=50;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=90;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
frxjadwal.ShowReport();
end;

procedure TForm9.frxjadwalClickObject(View: TfrxView;
  Button: TMouseButton; Shift: TShiftState; var Modified: Boolean);
begin
  if View.Name ='Memo7' then
  begin
    qry2.SQL.Clear;
    qry2.SQL.Add('select * from jadwal_table where kelas="'+view.TagStr+'"');
    qry2.Open;

    frxdetailjadwal.ShowReport();
  end;
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
 Form10.ShowModal;
end;

end.
