unit DM;

interface

uses
  System.SysUtils, System.Classes, Vcl.Dialogs, Data.Win.ADODB, Data.DB;
//type
//TAttrValue = record
//idPtipe,idPSubtipe,ObshNTD,PicJ: Integer;
//User,Parol,Klass: string;
//end;

  type

RecordData = record
idPtipe,idPSubtipe,idPart,idCADkomponents,idPerson,idData,idPoNTD, idPatPoNTD: Integer;
idPic3D,idCARDS,ObshNTD,idFirmsIz,idFirmsRaz,PicJ: Integer;
SubTipe,SubTipe1,Klass: string;
end;
     type
PCADData = record
idSymb,idPatern,idLib,idComp,idPCADpart,idPCADLiBparts : Integer;
Status : Boolean;
end;
      type
ALTIUMData = record
idFootprRef,idFootPath,idLibRef,idLibPath,idComp: Integer;
Status : Boolean;
end;
      type
Datasheet = record
idDatasheet,idPartDtsh: Integer;
Path,SubPath,DSHFile : string;

DshStatus : Boolean;
end;
type
  TDataModule2 = class(TDataModule)
    OpenDialog1: TOpenDialog;
    DataSource3: TDataSource;
    ADOTable3: TADOTable;
    DataSource2: TDataSource;
    dsStrana1: TDataSource;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    MySQLqry: TADOQuery;
    KRRSource: TDataSource;
    KRRtable: TADOTable;
    KRRSource2: TDataSource;
    Subtqry1: TADOQuery;
    DataSource4: TDataSource;
    SpiskiTable: TADOTable;
    Subtqry2: TADOQuery;
    Subtqry3: TADOQuery;
    Subtqry4: TADOQuery;
    Subtqry5: TADOQuery;
    Firmds1: TDataSource;
    Firmds2: TDataSource;
    dsStrana2: TDataSource;
    Strantbl1: TADOTable;
    Firmtbl1: TADOTable;
    ADOTable2: TADOTable;
    DataSource1: TDataSource;
    Datatbl: TADOTable;
    Taotbl: TADOTable;
    SHetds: TDataSource;
    TAOds: TDataSource;
  private
    { Private declarations }
  public
     PartRec:RecordData;
     PCADrec:PCADData;
     Altiumrec:ALTIUMData;
     TexData,BaseTexData:Datasheet;
   function InsertRec(Sel,Ins,Column:string; Wstavka:Boolean):Integer;
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
  function TDataModule2.InsertRec(Sel,Ins,Column:string; Wstavka:Boolean): Integer;
  begin
			 //**************** Ќачало нового блока************
		    if not Wstavka then
    begin
          DataModule2.MySQLqry.Active:= False;
          DataModule2.MySQLqry.SQL.Clear;
          DataModule2.MySQLqry.SQL.Text := Sel;//добавить пров. по  PartSubTipe_idPartSubTipe
          DataModule2.MySQLqry.Open;
    end;

      if (DataModule2.MySQLqry.RecordCount=0) or Wstavka then
      begin

          DataModule2.MySQLqry.Active := False;
          DataModule2.MySQLqry.SQL.Clear;
          DataModule2.MySQLqry.SQL.Text := Ins;
          DataModule2.MySQLqry.ExecSQL;


          DataModule2.MySQLqry.Active := False;
          DataModule2.MySQLqry.SQL.Clear;
          DataModule2.MySQLqry.SQL.Text := 'SELECT LAST_INSERT_ID() as ID;';
          DataModule2.MySQLqry.Open;
          Result :=  DataModule2.MySQLqry.FieldByName('ID').AsInteger;

      end
      else
      begin
          Result := DataModule2.MySQLqry.FieldByName(Column).Value;

      end;

  end;
end.
