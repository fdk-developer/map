unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, Grids, DBGrids, DBTables, ExtCtrls, Buttons,
  ComCtrls;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    Pesquisa: TTabSheet;
    Tabela: TTabSheet;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Bevel2: TBevel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Table1: TTable;
    Table1NOME: TStringField;
    Table1SOBRE_NOME: TStringField;
    Table1RUA_AVENID: TStringField;
    Table1RA_NOME: TStringField;
    Table1NUMERO: TFloatField;
    Table1TELEFONE: TStringField;
    Table1COMPLEMENT: TStringField;
    DataSource1: TDataSource;
    DBNavigator3: TDBNavigator;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBNavigator4: TDBNavigator;
    SpeedButton1: TSpeedButton;
    Bevel1: TBevel;
    Label7: TLabel;
    Edit1: TEdit;
    SpeedButton2: TSpeedButton;
    DBEdit7: TDBEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Bevel3: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    SpeedButton3: TSpeedButton;
    Bevel4: TBevel;
    Label8: TLabel;
    Bevel5: TBevel;
    Animate1: TAnimate;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.DFM}

procedure TForm2.FormCreate(Sender: TObject);
var
jac_dat, jac_dbf : string;

begin
jac_dat := ExtractFilePath(ParamStr(0))+'data1.fdk';
// jac_dbf := 'c:\Map\data1.dbf';
jac_dbf := ExtractFilePath(ParamStr(0))+'data1.dbf';

if not fileexists(jac_dat) then
        begin
        showMessage('Erro ao abrir: '+ jac_dat);
        showMessage('Favor entrar em contato com seu distribuidor');
        end
else
        begin


        renamefile(jac_dat,jac_dbf);
        DataSource1.DataSet := Table1;
        Table1.DatabaseName := 'c:\Map';
        Table1.TableName := 'data1.dbf';
        Table1.TableType := ttDBase;

        Table1.Active := true;

        end;

end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
table1.active := false;
Renamefile('c:\Map\data1.dbf','c:\Map\data1.fdk');
form2.close;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin

if radiobutton1.checked = true then
        begin
        Animate1.active := true;
        table1.IndexName := 'IND_NOME.NDX';
        Table1.FindNearest([Edit1.text]);
        end;

if radiobutton2.checked = true then
        begin
        table1.IndexName := 'IND_SNOME.NDX';
        Table1.FindNearest([Edit1.text]);
        end;

if radiobutton3.checked = true then
        begin
        table1.IndexName := 'Ind_ranom.ndx';
        Table1.FindNearest([Edit1.text]);
        end;

if radiobutton4.checked = true then
        begin
        table1.IndexName := 'IND_TELE.ndx';
        Table1.FindNearest([Edit1.text]);
        end;

if (radiobutton1.checked = false) and (radiobutton2.checked = false) and
(radiobutton3.checked = false) and (radiobutton4.checked = false) then
messagedlg ('Nenhuma opção selecionada !', mterror, [mbok], 0);

sleep(2000);
animate1.active := false;
end;


procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
   if radiobutton5.checked = true then
        begin
        label1.Font.Color := clRed;
        table1.IndexName := 'IND_NOME.NDX';
        end
        else
        label1.Font.Color := clMenuText;
   if radiobutton6.checked = true then
        begin
        label2.Font.Color := clRed;
        table1.IndexName := 'IND_SNOME.NDX';
        end
        else
        label2.Font.Color := clMenuText;
   if radiobutton7.checked = true then
        begin
        label3.Font.Color := clRed;
        table1.IndexName := 'Ind_ranom.ndx';
        end
        else
        label3.Font.Color := clMenuText;
   if radiobutton8.checked = true then
        begin
        label5.Font.Color := clRed;
        table1.IndexName := 'IND_TELE.ndx';
        end
        else
        label5.Font.Color := clMenuText;
end;

end.
