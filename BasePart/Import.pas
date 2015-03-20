unit Import;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, AdvObj, BaseGrid, AdvGrid,
  Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Phys, FireDAC.Phys.SQLite, SQLiteTable3,
  Vcl.StdCtrls, Vcl.Buttons, VirtualTrees,DM;

type
  TForm2 = class(TForm)
    AdvStringGrid1: TAdvStringGrid;
    AdvStringGrid2: TAdvStringGrid;
    GR1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Button1: TButton;
    BitBtn1: TBitBtn;
    VirtualStringTree1: TVirtualStringTree;
    VirtualTree1: TMenuItem;
    reenode1: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure AdvStringGrid1ClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure N3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure VirtualTree1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  I,Ik,Im,Irez,simbN,simbO,Tcol,Trow,Row,Col:integer;
  IDpart,IDgroup,IDcomp:integer;
  //ImBase : IImbaseApplication;
  //DataBase: IImDataBase;
  Str1,Str2: string;
  FieldNames,TableRecord, CatalogRecord,KeysList: WideString ;

implementation
uses Unit1;
{$R *.dfm}



procedure TForm2.AdvStringGrid1ClickCell(Sender: TObject; ARow, ACol: Integer);
begin
       if ACol <> 0 then
  begin
    Col := ACol;
  end
  else
  begin
    Col := 1;
  end;
  if ARow <> 0 then
  begin
    Row := ARow
  end
  else
  begin
    Row := 1;
  end;

  Row := ARow
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
        if DataModule2.OpenDialog1.Execute then
    begin
     //Form1.slDBpath := Form1.OpenDialog1.FileName;
      Form1.SQLConnection1.Connected:=False;
      Form1.SQLConnection1.Params.Values['Database']:=DataModule2.OpenDialog1.FileName;
      Form1.SQLConnection1.Connected:=True;

    end;

            for Row := AdvStringGrid1.RowCount-2 downto 1 do
    begin

                      if AdvStringGrid1.Cells[3,Row].ToInteger>=1 then
           begin
//                  Form1.sldb := TSQLiteDatabase.Create(Form1.slDBPath);
//                  Form1.sltb := Form1.sldb.GetTable('SELECT idPart FROM Parts where FullName = "'+AdvStringGrid1.Cells[1,Row].Replace('"','""')+'";');
                   Form1.SQLQuery1.Active := False;
                   Form1.SQLQuery1.SQL.Clear;
                   Form1.SQLQuery1.SQL.Add('SELECT idPart FROM Parts where FullName = "'+AdvStringGrid1.Cells[1,Row].Replace('"','""')+'";');
                   //Form1.SQLQuery1.Active := True;
                   Form1.SQLQuery1.Open;
                   // Form1.sltb.Count
                     if Form1.SQLQuery1.RecordCount = 0 then
                 begin
//                    Form1.sSQL := 'INSERT INTO Parts(FullName,ImKey) VALUES("'+AdvStringGrid1.Cells[1,Row].Replace('"','""')+'","'+(AdvStringGrid1.Cells[2,Row].Replace('"','""'))+'");';
//                    Form1.sldb.ExecSQL(Form1.sSQL);
//                    IDpart := Form1.sldb.GetLastInsertRowID;

                    Form1.SQLQuery1.Active := False;
                    Form1.SQLQuery1.SQL.Clear;
                    Form1.SQLQuery1.SQL.Add('INSERT INTO Parts(ImName,FullName,ImKey) VALUES("'+AdvStringGrid1.Cells[1,Row].Replace('"','""')+'","'+ AdvStringGrid1.Cells[1,Row].Replace('"','""')+'","'+AnsiToUtf8(AdvStringGrid1.Cells[2,Row].Replace('"','""'))+'");');
                    Form1.SQLQuery1.ExecSQL();

                    Form1.SQLQuery1.SQL.Clear;
                    Form1.SQLQuery1.SQL.Add('SELECT last_insert_rowid() FROM Parts');
                    Form1.SQLQuery1.Open;
                    IDpart := Form1.SQLQuery1.FieldByName('last_insert_rowid()').Value;
                 end
                 else
                 begin
                    //IDpart := Form1.sltb.FieldByName['idPart'].ToInteger;
                 end;
             // /********************************************************************************************************************/
                     //Form1.sltb := Form1.sldb.GetTable('SELECT idGroup FROM Groups where idPart = '+IDpart.ToString+';');
                    Form1.SQLQuery1.SQL.Clear;
                    Form1.SQLQuery1.SQL.Add('SELECT idGroup FROM Groups where idPart = '+IDpart.ToString+';');
                    Form1.SQLQuery1.Open;
                     //  Form1.sltb.Count = 0
                    if Form1.SQLQuery1.RecordCount = 0 then
                 begin
//                    Form1.sSQL := 'INSERT INTO Groups(idPart,GroupType) VALUES('+IDpart.ToString+',"'+AdvStringGrid1.Cells[1,Row].Replace('"','""')+'");';
//                    Form1.sldb.ExecSQL(Form1.sSQL);
//                    IDgroup := Form1.sldb.GetLastInsertRowID;
//                    Str1 := 'Ãðóïïà'+ IDgroup.ToString();
//                    Form1.sSQL := 'UPDATE Groups SET GroupType = "'+Str1+'" WHERE idGroup = '+IDgroup.ToString+';';
//                    Form1.sldb.ExecSQL(Form1.sSQL);

                    Form1.SQLQuery1.Active := False;
                    Form1.SQLQuery1.SQL.Clear;
                    Form1.SQLQuery1.SQL.Add('INSERT INTO Groups(idPart,idList,GroupType) VALUES('+IDpart.ToString+',1,"'+AdvStringGrid1.Cells[1,Row].Replace('"','""')+'");');
                    Form1.SQLQuery1.ExecSQL();

                    Form1.SQLQuery1.SQL.Clear;
                    Form1.SQLQuery1.SQL.Add('SELECT last_insert_rowid() FROM Groups');
                    Form1.SQLQuery1.Open;
                    IDgroup := Form1.SQLQuery1.FieldByName('last_insert_rowid()').Value;
                    Str1 := 'Ãðóïïà'+ IDgroup.ToString();
                    Form1.SQLQuery1.Active := False;
                    Form1.SQLQuery1.SQL.Clear;
                    Form1.SQLQuery1.SQL.Add('UPDATE Groups SET GroupType = "'+Str1+'" WHERE idGroup = '+IDgroup.ToString+';');
                    Form1.SQLQuery1.ExecSQL();
                 end
                 else
                 begin
                   // IDgroup := Form1.sltb.FieldByName['idGroup'].ToInteger;
                    IDgroup := Form1.SQLQuery1.FieldByName('idGroup').Value;
                 end;
             // /********************************************************************************************************************/
                                  Str1 :=   AdvStringGrid1.Cells[0,Row];
                                  if Pos(',',Str1) > 0 then Delete(Str1,Pos(',',Str1),Length(Str1)+1);
                                  if Pos('...',Str1) > 0 then Delete(Str1,Pos('...',Str1),Length(Str1)+1);

                                                simbN := 1;
                                                I := 1;
                                            while (simbN = 1) or (I < Str1.Length) do
                                       begin
                                         if Str1[i] in ['0'..'9'] then
                                            begin
                                                  simbN := I;
                                            end;
                                            I:=I+1;
                                       end;
                                 Str2:=Copy(Str1,simbN,Length(Str1));
                                 Delete(Str1,simbN,Length(Str1)+1);
                                 Im := Str2.ToInteger();


                                  for Ik := 0 to (AdvStringGrid1.Cells[3,Row].ToInteger - 1) do
                 begin

                       // Form1.sltb := Form1.sldb.GetTable('SELECT idKomponents FROM Komponents where RefDes = "' + Str1 + (Im+Ik).ToString + '";'); // Form1.sldb.GetTable('SELECT idKomponents FROM Komponents where RefDes = "' + AdvStringGrid1.Cells[0,Row] + '";');
                    Form1.SQLQuery1.SQL.Clear;
                    Form1.SQLQuery1.SQL.Add('SELECT idKomponents FROM Komponents where RefDes = "' + Str1 + (Im+Ik).ToString + '";');
                    Form1.SQLQuery1.Open;
                                       //  Form1.sltb.Count = 0
                                       if Form1.SQLQuery1.RecordCount = 0 then
                                    begin
                                       //Form1.sSQL := 'INSERT INTO Komponents(idGroup,RefDes,Ref,Des) VALUES('+IDgroup.ToString+',"' + Str1 + (Im+Ik).ToString + '","'+Str1+'",'+(Im+Ik).ToString +');';
                                       //Form1.sldb.ExecSQL(Form1.sSQL);
                                       //IDcomp := Form1.sldb.GetLastInsertRowID;

                                       Form1.SQLQuery1.Active := False;
                                      Form1.SQLQuery1.SQL.Clear;
                                      Form1.SQLQuery1.SQL.Add('INSERT INTO Komponents(idGroup,RefDes,Ref,Des) VALUES('+IDgroup.ToString+',"' + Str1 + (Im+Ik).ToString + '","'+Str1+'",'+(Im+Ik).ToString +');');
                                      Form1.SQLQuery1.ExecSQL();

                                      Form1.SQLQuery1.SQL.Clear;
                                      Form1.SQLQuery1.SQL.Add('SELECT last_insert_rowid() FROM Komponents');
                                      Form1.SQLQuery1.Open;
                                      IDcomp := Form1.SQLQuery1.FieldByName('last_insert_rowid()').Value;
                                    end
                                    else
                                    begin
                                       //IDcomp := Form1.sltb.FieldByName['idKomponents'].ToInteger;
                                       IDcomp := Form1.SQLQuery1.FieldByName('idKomponents').Value;

                                    end;

                 end;
             // /********************************************************************************************************************/


           end;
            AdvStringGrid2.Cells[1,1] := IDcomp.ToString;
    end;
end;

procedure TForm2.N1Click(Sender: TObject);
begin
      AdvStringGrid2.AddRow;
      AdvStringGrid2.MoveRows(Form2.AdvStringGrid1.RowCount-1,1,1);
      AdvStringGrid2.Cells[0,1] :=  AdvStringGrid1.Cells[0,Row];
      AdvStringGrid2.Cells[1,1] :=  AdvStringGrid1.Cells[1,Row];
      AdvStringGrid2.Cells[2,1] :=  AdvStringGrid1.Cells[2,Row];

end;

procedure TForm2.N2Click(Sender: TObject);
begin
//            for I := 1 to 4 do
//      begin
//         AdvStringGrid1.RemoveRows(1,I);
//      end;

                  if AdvStringGrid1.SelectedRowCount>0 then
         begin
           Ik:=AdvStringGrid1.SelectedRow[0];
           AdvStringGrid1.RemoveRows(Ik,AdvStringGrid1.SelectedRowCount);
         end;


end;

procedure TForm2.N3Click(Sender: TObject);
begin

         if DataModule2.OpenDialog1.Execute then
    begin

         Form1.slDBpath := DataModule2.OpenDialog1.FileName;
         Form1.sldb := TSQLiteDatabase.Create(Form1.slDBPath);

         Form1.sltb := Form1.sldb.GetTable('SELECT idPart FROM Parts where FullName = "'+AdvStringGrid1.Cells[1,Row].Replace('"','""')+'";');
        //IDpart := Form1.sltb.Count;

            if Form1.sltb.Count = 0 then
        begin
           Form1.sSQL := 'INSERT INTO Parts(ImName,FullName,ImKey) VALUES("'+AdvStringGrid1.Cells[1,Row].Replace('"','""')+'","'+ AdvStringGrid1.Cells[1,Row].Replace('"','""')+'","'+AnsiToUtf8(AdvStringGrid1.Cells[2,Row].Replace('"','""'))+'");';
           Form1.sldb.ExecSQL(Form1.sSQL);
           IDpart := Form1.sldb.GetLastInsertRowID;
        end
        else
        begin
           IDpart := Form1.sltb.FieldByName['idPart'].ToInteger;
        end;
    // /********************************************************************************************************************/
            Form1.sltb := Form1.sldb.GetTable('SELECT idGroup FROM Groups where idPart = '+IDpart.ToString+';');

           if Form1.sltb.Count = 0 then
        begin
           Form1.sSQL := 'INSERT INTO Groups(idPart,GroupType) VALUES('+IDpart.ToString+',"'+AdvStringGrid1.Cells[1,Row].Replace('"','""')+'");';
           Form1.sldb.ExecSQL(Form1.sSQL);
           IDgroup := Form1.sldb.GetLastInsertRowID;
           Str1 := 'Ãðóïïà'+ IDgroup.ToString();
           Form1.sSQL := 'UPDATE Groups SET GroupType = "'+Str1+'" WHERE idGroup = '+IDgroup.ToString+';';
           Form1.sldb.ExecSQL(Form1.sSQL);
        end
        else
        begin
           IDgroup := Form1.sltb.FieldByName['idGroup'].ToInteger;
        end;
    // /********************************************************************************************************************/
             Form1.sltb := Form1.sldb.GetTable('SELECT idKomponents FROM Komponents where RefDes = "' + AdvStringGrid1.Cells[0,Row] + '";');

           if Form1.sltb.Count = 0 then
        begin
           Form1.sSQL := 'INSERT INTO Komponents(idGroup,RefDes) VALUES('+IDgroup.ToString+',"' + AdvStringGrid1.Cells[0,Row] + '");';
           Form1.sldb.ExecSQL(Form1.sSQL);
           IDcomp := Form1.sldb.GetLastInsertRowID;
        end
        else
        begin
           IDcomp := Form1.sltb.FieldByName['idKomponents'].ToInteger;
        end;

    // /********************************************************************************************************************/
         Form1.sltb := Form1.sldb.GetTable('SELECT idKomponents FROM Komponents where RefDes = "' + AdvStringGrid1.Cells[0,Row] + '";');
         IDcomp := Form1.sltb.Count;
         AdvStringGrid2.Cells[1,1] := Form1.sltb.FieldAsString(Form1.sltb.FieldIndex['idKomponents']);
    end;

  //sldb := TSQLiteDatabase.Create(slDBPath);

end;

procedure TForm2.VirtualTree1Click(Sender: TObject);
begin
      VirtualStringTree1.AddChild(VirtualStringTree1.FocusedNode);

end;

end.
