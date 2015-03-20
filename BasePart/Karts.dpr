program Karts;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Import in 'Import.pas' {Form2},
  SQLite3 in 'SQLite3.pas',
  SQLiteTable3 in 'SQLiteTable3.pas',
  ManagerMYSQL in 'ManagerMYSQL.pas' {Form3},
  ImBase_TLB in '..\..\PCAD_DL\Impath\ImBase_TLB.pas',
  ImportAlt in 'ImportAlt.pas' {Form4},
  Auzorithed in 'Auzorithed.pas' {Form5},
  RedDataKRR in 'RedDataKRR.pas' {RedaktorDataKRR},
  DM in 'DM.pas' {DataModule2: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TRedaktorDataKRR, RedaktorDataKRR);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.Run;
end.
