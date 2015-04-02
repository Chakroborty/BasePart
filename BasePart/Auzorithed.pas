unit Auzorithed;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Unit1,ManagerMYSQL,DM,
  AdvProgressBar, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    btn1: TButton;
    btn2: TButton;
    AdvProgressBar1: TAdvProgressBar;
    ProgressBar1: TProgressBar;
    tmr1: TTimer;
    procedure btn1Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  I:Integer;
implementation

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
        DataModule2.MySQLqry.Active:=False;
        DataModule2.MySQLqry.SQL.Clear;
        DataModule2.MySQLqry.SQL.Text := 'SELECT * FROM Person WHERE Login="'+Edit1.Text+'";';
        DataModule2.MySQLqry.Active:=True;
        DataModule2.MySQLqry.ExecSQL;

              if DataModule2.MySQLqry.RecordCount=1  then
       begin
            if DataModule2.MySQLqry.FieldByName('Password').Value = Edit2.Text then
          begin
            //Form5.Hide;
            Form1.Polzovatel.id := DataModule2.MySQLqry.FieldByName('idPerson').Value;
            DataModule2.PartRec.idPerson := DataModule2.MySQLqry.FieldByName('idPerson').Value;
            Form1.Polzovatel.Name := DataModule2.MySQLqry.FieldByName('Name').Value;
            Form1.Polzovatel.Otchestvo := DataModule2.MySQLqry.FieldByName('Otchestvo').Value;
            Form1.Polzovatel.Famili := DataModule2.MySQLqry.FieldByName('Famili').Value;
            Form1.Polzovatel.idStatus := DataModule2.MySQLqry.FieldByName('UserStatus_idUserStatus').Value;

            DataModule2.MySQLqry.Active:=False;
            DataModule2.MySQLqry.SQL.Clear;
            DataModule2.MySQLqry.SQL.Text := 'SELECT * FROM userstatus WHERE idUserStatus='+Form1.Polzovatel.idStatus.ToString+';';
            DataModule2.MySQLqry.Active:=True;
            DataModule2.MySQLqry.ExecSQL;
            Form1.Polzovatel.Status := DataModule2.MySQLqry.FieldByName('Status').Value;
            Form1.Polzovatel.StaNum := DataModule2.MySQLqry.FieldByName('StaNum').Value;
            ShowMessage('Вы вошли как '+ Form1.Polzovatel.Status+': ' + Form1.Polzovatel.Famili+' '+Form1.Polzovatel.Name +' '
                  + Form1.Polzovatel.Otchestvo);
                  Form1.Show;


           // ProgressBar1.Visible:= True;
           // tmr1.Enabled:=True;



           // Form1.Show;
          end
          else
          begin
             ShowMessage('Не правильный логин');
          end;
       end
       else
       begin
           ShowMessage('Не правильный логин или пароль');

       end;



end;

procedure TForm5.btn2Click(Sender: TObject);
begin
        Application.Terminate;
end;

procedure TForm5.tmr1Timer(Sender: TObject);
begin

               AdvProgressBar1.Position := AdvProgressBar1.Position +1;
               ProgressBar1.Position := ProgressBar1.Position+1;


                          if (ProgressBar1.Position=100) and (AdvProgressBar1.Position =100) then
             begin
                  tmr1.Enabled := False;
                  ProgressBar1.Position:=0 ;
                  AdvProgressBar1.Position :=0;
                  ShowMessage('Вы вошли как '+ Form1.Polzovatel.Status+': ' + Form1.Polzovatel.Famili+' '+Form1.Polzovatel.Name +' '
                  + Form1.Polzovatel.Otchestvo);
                  Form1.Show;
             end;

end;

end.
