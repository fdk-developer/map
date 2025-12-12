unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, ExtCtrls, Buttons, StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Bevel1: TBevel;
    SpeedButton5: TSpeedButton;
    MonthCalendar1: TMonthCalendar;
    Bevel2: TBevel;
    procedure Sair2Click(Sender: TObject);
    procedure Particular1Click(Sender: TObject);
    procedure Jacarezinho1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5;

{$R *.DFM}

procedure TForm1.Sair2Click(Sender: TObject);
begin
        form1.close;
end;

procedure TForm1.Particular1Click(Sender: TObject);
begin
  form3.show;
end;

procedure TForm1.Jacarezinho1Click(Sender: TObject);
begin
        form2.show;
end;

procedure TForm1.Sobre1Click(Sender: TObject);
begin
        form4.show;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
        form3.show;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
        form2.show;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
        form4.show;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
var
jac_fdk, jac_dbf : string;
begin
jac_fdk := 'c:\map\data1.fdk';
jac_dbf := 'c:\map\data1.dbf';
// verifica antes de sair
// se o arquivo dat esta aberto
if fileexists(jac_fdk) then
        form1.close
   else
   begin
        renamefile(jac_dbf,jac_fdk);
        form1.close;
   end;
end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
var
x : integer;
begin

//calendario
if (form1.Width<>330) then
        begin
        form1.width:= 330;
        sleep(100);
        speedbutton5.caption := 'Calendário <<';
        end
        else
        begin
        form1.width:= 120;
        speedbutton5.caption := 'Calendário >>';
        end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
form1.Width := 120;
end;

end.
