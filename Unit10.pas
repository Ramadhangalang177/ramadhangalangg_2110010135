unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls;

type
  TForm10 = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    cbb1: TComboBox;
    dtp1: TDateTimePicker;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure bersih;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  upd:string;

implementation
uses Unit9;

{$R *.dfm}

procedure TForm10.bersih;
begin
Edit1.Text:='00:00';
Edit2.Text:='00:00';
cbb1.Text:='---PILIH HARI---';
Edit3.Text:='-';
Edit4.Text:='-';
Edit5.Text:='-';
Edit6.Text:='-';
Form9.qry1.SQL.Clear;
Form9.qry1.SQL.Add('select * from jadwal_table');
Form9.qry1.Open;
DBGrid1.columns[0].Width:=30;
DBGrid1.Columns[1].Width:=50;
DBGrid1.Columns[2].Width:=50;
DBGrid1.Columns[3].Width:=90;
DBGrid1.Columns[4].Width:=60;
DBGrid1.Columns[5].Width:=60;
DBGrid1.Columns[6].Width:=110;
DBGrid1.Columns[7].Width:=80;

end;

procedure TForm10.Button1Click(Sender: TObject);
var a:Integer;
begin
  if (Edit1.Text='') or  (Edit1.Text='00:00') or  (Edit2.Text='') or  (Edit2.Text='00:00') then
  begin
    ShowMessage('DATA BELUM DIISI DENGAN BENAR');
    end else
    if (cbb1.Text='')or(cbb1.Text='---PILIH HARI---') then
    begin
     ShowMessage('HARI BELUM DIISI DENGAN BENAR');
    end else
    if(Edit3.text='')or(Edit3.Text='-')or(Edit4.text='')or(Edit4.Text='-') then
    begin
    ShowMessage('INPUTAN RUANGAN ATAU MATAKULIAH MASIH BELUM SESUAI');
    end else
    if (Edit5.text='')or(Edit5.Text='-')or(Edit6.text='')or(Edit6.Text='-') then
    begin
     ShowMessage('INPUTAN KELAS ATAU TOTAL HADIR MASIH BELUM SESUAI');
    end else
  if Form9.qry1.Locate('hari',cbb1.Text,[]) then
  begin
   ShowMessage('DATA SUDAH ADA DALAM SISTEM');
  end else
  begin
    a:=Form9.qry1.RecordCount+1;
    with Form9.qry1 do
    begin
    SQL.Clear;
    SQL.Add('insert into jadwal_table values("'+inttostr(a)+'","'+Edit1.Text+'","'+Edit2.Text+'","'+cbb1.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'")');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from jadwal_table');
    Open;
    ShowMessage('Data Berhasil Di Simpan');
    bersih;
    end;
  end;
end;

procedure TForm10.DBGrid1CellClick(Column: TColumn);
begin
 try
upd:=Form9.qry1.Fields[0].AsString;
Edit1.Text:=Form9.qry1.Fields[1].AsString;
Edit2.Text:=Form9.qry1.Fields[2].AsString;
cbb1.Text:=Form9.qry1.Fields[3].AsString;
dtp1.date:=Form9.qry1.Fields[4].AsDateTime;
Edit3.Text:=Form9.qry1.Fields[5].AsString;
Edit4.Text:=Form9.qry1.Fields[6].AsString;
Edit5.Text:=Form9.qry1.Fields[7].AsString;
Edit6.Text:=Form9.qry1.Fields[8].AsString;

except
   // kosong
end;
end;

procedure TForm10.FormShow(Sender: TObject);
begin
bersih;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
    if (Edit1.Text='') or  (Edit1.Text='00:00') or  (Edit2.Text='') or  (Edit2.Text='00:00') then
    begin
      ShowMessage('DATA BELUM DIISI DENGAN BENAR');
    end else
    if (cbb1.Text='')or(cbb1.Text='---PILIH HARI---') then
    begin
      ShowMessage('HARI BELUM DIISI DENGAN BENAR');
    end else
    if(Edit3.text='')or(Edit3.Text='-')or(Edit4.text='')or(Edit4.Text='-') then
    begin
      ShowMessage('INPUTAN RUANGAN ATAU MATAKULIAH MASIH BELUM SESUAI');
    end else
    if (Edit5.text='')or(Edit5.Text='-')or(Edit6.text='')or(Edit6.Text='-') then
    begin
      ShowMessage('INPUTAN KELAS ATAU TOTAL HADIR MASIH BELUM SESUAI');
    end else
    if (Edit1.Text=Form9.qry1.Fields[1].AsString)and(Edit2.Text=Form9.qry1.Fields[2].AsString)and(cbb1.Text=Form9.qry1.Fields[3].AsString)and(dtp1.Date=Form9.qry1.Fields[4].AsDateTime)and(Edit3.Text=Form9.qry1.Fields[5].AsString)and(Edit4.Text=Form9.qry1.Fields[6].AsString)and(Edit5.Text=Form9.qry1.Fields[7].AsString)and(Edit6.Text=Form9.qry1.Fields[8].AsString) then
    begin
      ShowMessage('Data Tidak ada Perubahan ');
    end else
    begin
      //kode update
      with Form9.qry1 do
      begin
      SQL.Clear;
        SQL.Add('update jadwal_table set jam_mulai="'+Edit1.Text+'",jam_akhir="'+Edit2.Text+'",ruang="'+Edit3.Text+'",matakul="'+Edit4.Text+'",kelas="'+Edit5.Text+'",kehadiran_total"'+Edit6.Text+'"where no="'+upd+'"');
        ExecSQL;

        SQL.Clear;
        SQL.Add('select * from jadwal_table');
        Open;
        ShowMessage('Data Berhasil Di Edit');
        bersih;       //procedure bersih
      end;
    end;
end;


procedure TForm10.Button3Click(Sender: TObject);
begin
    if (Edit1.Text='') or  (Edit1.Text='00:00') or  (Edit2.Text='') or  (Edit2.Text='00:00') then
    begin
      ShowMessage('DATA BELUM DIISI DENGAN BENAR');
    end else
    if (cbb1.Text='')or(cbb1.Text='---PILIH HARI---') then
    begin
      ShowMessage('HARI BELUM DIISI DENGAN BENAR');
    end else
    if(Edit3.text='')or(Edit3.Text='-')or(Edit4.text='')or(Edit4.Text='-') then
    begin
      ShowMessage('INPUTAN RUANGAN ATAU MATAKULIAH MASIH BELUM SESUAI');
    end else
    if (Edit5.text='')or(Edit5.Text='-')or(Edit6.text='')or(Edit6.Text='-') then
    begin
      ShowMessage('INPUTAN KELAS ATAU TOTAL HADIR MASIH BELUM SESUAI');
    end else
    begin
      //kode delete
      if MessageDlg('Apakah Anda Yakin Ingin MengHapus Data Ini?',mtWarning,[mbYes,mbNo],0)=mryes then
      begin
      with Form9.qry1 do
        begin
         SQL.Clear;
         SQL.Add('Delete From jadwal_table where no="'+upd+'"');
         ExecSQL;

         SQL.Clear;
         SQL.Add('select * from jadwal_table');
         Open;
         ShowMessage('DATA BATAL DIHAPUS!');
         bersih;
        end;
       end else
       begin
         ShowMessage('DATA BATAL DIHAPUS!');
       end;
      end;
    end;


procedure TForm10.Button4Click(Sender: TObject);
begin
bersih;
end;

end.


