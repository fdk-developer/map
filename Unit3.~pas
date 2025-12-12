unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ExtCtrls, Buttons;

type
  TForm3 = class(TForm)
    Table1: TTable;
    Table1Nome: TStringField;
    Table1Endereco: TStringField;
    Table1Cidade: TStringField;
    Table1Estado: TStringField;
    Table1CEP: TStringField;
    Table1Telefone: TStringField;
    Table1Telefone_cel: TStringField;
    Table1Email: TStringField;
    Table1Url: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Bevel1: TBevel;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    DBNavigator5: TDBNavigator;
    DBNavigator6: TDBNavigator;
    DBNavigator7: TDBNavigator;
    DBNavigator8: TDBNavigator;
    DBNavigator9: TDBNavigator;
    DBNavigator10: TDBNavigator;
    Bevel2: TBevel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2;

{$R *.DFM}

procedure TForm3.FormCreate(Sender: TObject);
var
jac_dat2, jac_db2 : string;
begin
jac_dat2 := 'c:\Map\data2.fdk';
jac_db2 := 'c:\Map\data2.db';

if not fileexists(jac_dat2) then
        begin
        showMessage('Erro ao abrir: '+ jac_dat2);
        showMessage('Favor entrar em contato com seu distribuidor');
        end
else
        begin
        renamefile(jac_dat2,jac_db2);
        DataSource1.DataSet := Table1;
        Table1.DatabaseName := 'c:\Map';
        Table1.TableName := 'data2.db';
        Table1.TableType := ttParadox;
        Table1.Active := true;
        end;

end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
table1.active := false;
Renamefile('c:\Map\data2.db','c:\Map\data2.fdk');
form3.close;
end;

end.
