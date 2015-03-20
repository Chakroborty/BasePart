unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, AdvObj, BaseGrid, AdvGrid,
  Vcl.Menus, Xml.xmldom, Xml.XMLIntf, Xml.Win.msxmldom,Import,       // ImBase_TLB,
  Xml.XMLDoc, SQLiteTable3, Data.DbxSqlite, Data.FMTBcd, Data.DB,
  Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  mswheel, Datasnap.Provider, Datasnap.DBClient, DBAdvGrid, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.ShellAnimations, AdvToolBar, Vcl.Tabs, Vcl.DockTabSet,
  Vcl.ValEdit, AdvSplitter, VirtualTrees, Data.Win.ADODB,ManagerMYSQL, RedDataKRR,DM;
    type
PAttrValue = ^TAttrValue;
TAttrValue = record
id: Integer;
Table,KartNum,
KartName,
Fix1,
Fix2,
param,
value: string;
end;
   type
DATAuser = record
id,idStatus,StaNum: Integer;
Name,Otchestvo,Famili,Status: string;
end;


type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    XML1: TMenuItem;
    EXCEL1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    XMLDocument1: TXMLDocument;
    pm1: TPopupMenu;
    N8: TMenuItem;
    SQLConnection1: TSQLConnection;
    DataSource1: TDataSource;
    ClientDataSet1: TClientDataSet;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    Panel1: TPanel;
    Panel2: TPanel;
    DBAdvGrid1: TDBAdvGrid;
    ValueListEditor1: TValueListEditor;
    Splitter2: TSplitter;
    AdvSplitter1: TAdvSplitter;
    VirtualStringTree1: TVirtualStringTree;
    LITEQuery2: TSQLQuery;
    LITEQuery3: TSQLQuery;
    LITEQuery4: TSQLQuery;
    N9: TMenuItem;
    procedure XML1Click(Sender: TObject);
    procedure AdvStringGrid1ClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure N2Click(Sender: TObject);
    procedure VirtualStringTree1GetText(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
      var CellText: string);
    procedure FormCreate(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N9Click(Sender: TObject);


  private
    { Private declarations }
  public
  var
  slDBpath: string;
  sldb: TSQLiteDatabase;
  sltb: TSQLIteTable;
  sSQL: String;
  Notes: String;
  Polzovatel:DATAuser;
    { Public declarations }
  end;

var
  Form1: TForm1;

  I,k,m,rez,simbN,simbO,Tcol,Trow,Row,Col:integer;
  //ImBase : IImbaseApplication;
  //DataBase: IImDataBase;
  FieldNames,TableRecord, CatalogRecord,KeysList,SQLstrrez : WideString ;
  Data: PAttrValue;
  RootNode, ChildNode,ChildNode1,ChildNode2,ChildNode3: PVirtualNode;






implementation

{$R *.dfm}

procedure TForm1.AdvStringGrid1ClickCell(Sender: TObject; ARow, ACol: Integer);
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

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    VirtualStringTree1.NodeDataSize := SizeOf(TAttrValue);

end;

procedure TForm1.N2Click(Sender: TObject);
      var
 //RootNode, ChildNode,ChildNode1,ChildNode2,ChildNode3: PVirtualNode;
 I: Integer;
 Data: PAttrValue;



begin


      if DataModule2.OpenDialog1.Execute then
    begin
//      Название проекта -- устройства
       VirtualStringTree1.Clear;
      SQLConnection1.Connected:=False;
      SQLConnection1.Params.Values['Database']:=DataModule2.OpenDialog1.FileName;
      SQLConnection1.Connected:=True;
     // TreeView1.Items.Add(nil,'Проект');
      RootNode := VirtualStringTree1.AddChild(nil);
      Data := VirtualStringTree1.GetNodeData(RootNode);
      Data.KartNum := 'Карты рабочих режимов';
      Data.Fix1 := '';
      SQLQuery1.SQL.Clear;
      SQLQuery1.SQL.Add('SELECT * FROM Karts;');
      SQLQuery1.Open;

        while not SQLQuery1.eof do
        begin
          //Название карт

         // TreeView1.Items.AddChild(TreeView1.Items.Item[0],SQLQuery1.FieldByName('KartNumber').Value);
          ChildNode := VirtualStringTree1.AddChild(RootNode,nil);
          Data := VirtualStringTree1.GetNodeData(ChildNode);
          Data.Table := 'Karts';
          Data.id := SQLQuery1.FieldByName('idKarts').Value;
          Data.KartNum := SQLQuery1.FieldByName('KartNumber').AsString;
          Data.KartName := SQLQuery1.FieldByName('KartName').AsString;
          Data.Fix1 := 'Карта №';
          Data.value := '';
          Data.param := '';
          SQLQuery1.Next;
           //Листы
          LITEQuery2.SQL.Clear;
          LITEQuery2.SQL.Add('SELECT * FROM Lists WHERE idKart='+Data.id.ToString+';');
          LITEQuery2.Open;
           while not LITEQuery2.eof do
          begin
            ChildNode1 := VirtualStringTree1.AddChild(ChildNode,nil);
            Data := VirtualStringTree1.GetNodeData(ChildNode1);
            Data.Table := 'Lists';
            Data.id := LITEQuery2.FieldByName('idList').Value;
            Data.KartNum := LITEQuery2.FieldByName('Page').AsString;
            Data.KartName := '';
            Data.Fix1 := 'Лист №';
            Data.value := '';
            Data.param := '';
            LITEQuery2.Next;
            //Группы
            LITEQuery3.SQL.Clear;
            LITEQuery3.SQL.Add('SELECT * FROM Groups WHERE idList='+Data.id.ToString+';');
            LITEQuery3.Open;
                 while not LITEQuery3.eof do
            begin
              ChildNode2 := VirtualStringTree1.AddChild(ChildNode1,nil);
              Data := VirtualStringTree1.GetNodeData(ChildNode2);
              Data.Table := 'Groups';
              Data.id := LITEQuery3.FieldByName('idGroup').Value;
              Data.KartNum := LITEQuery3.FieldByName('GroupType').Value;

              LITEQuery4.SQL.Clear;
              LITEQuery4.SQL.Add('SELECT * FROM Parts WHERE idPart='+LITEQuery3.FieldByName('idPart').AsString+';');
              LITEQuery4.Open;
              Data.KartName := LITEQuery4.FieldByName('ImKey').Value;
              Data.Fix1 := '';
              Data.value := LITEQuery4.FieldByName('Klass').Value;
              Data.param := LITEQuery4.FieldByName('ImName').Value;

              //Компонент
              LITEQuery3.Next;
              LITEQuery4.SQL.Clear;
              LITEQuery4.SQL.Add('SELECT * FROM Komponents WHERE idGroup='+Data.id.ToString+';');
              LITEQuery4.Open;
                     while not LITEQuery4.eof do
                begin
                  ChildNode3 := VirtualStringTree1.AddChild(ChildNode2,nil);
                  Data := VirtualStringTree1.GetNodeData(ChildNode3);
                  Data.Table := 'Komponents';
                  Data.id := LITEQuery4.FieldByName('idKomponents').Value;
                  Data.KartNum := LITEQuery4.FieldByName('RefDes').Value;
                  Data.KartName := '';
                  Data.Fix1 := '';
                  Data.value := '';
                  Data.param := '';
                  LITEQuery4.Next;



                end;
            end;
          end;
        end;

    end;


    VirtualStringTree1.FullExpand();


end;

procedure TForm1.N8Click(Sender: TObject);

  //var

 //I: Integer;
 //Data: PAttrValue;
begin
      Data := VirtualStringTree1.GetNodeData(VirtualStringTree1.FocusedNode);

              if (Data.Table = 'Groups') or (Data.Table = 'Komponents') then
       begin
        if Data.Table = 'Komponents' then
        begin
          ChildNode3 := VirtualStringTree1.FocusedNode;

           if VirtualStringTree1.GetNodeLevel(ChildNode3)>0 then
              ChildNode2:=ChildNode3.Parent;
          Data := VirtualStringTree1.GetNodeData(ChildNode2);
                                                              { TODO -o1 -cTree Viev : Определение предидущего узла }
        end;
         Form3.AdvStringGrid4.Cells[1,1] := Data.KartName;
         //Form3.AdvStringGrid1.Cells[1,1] := Data.KartName;
         Form3.AdvStringGrid4.Cells[1,2] := Data.value;
         //Form3.AdvStringGrid1.Cells[1,2] := Data.value;
         Form3.AdvStringGrid4.Cells[1,4] := Data.param;
         Form3.AdvPageControl1.ActivePageIndex:=0;
         //Form3.AdvStringGrid1.Cells[1,8] := Data.param;
         Form3.ShowModal;

       end;




end;

procedure TForm1.N9Click(Sender: TObject);
begin
       Data := VirtualStringTree1.GetNodeData(VirtualStringTree1.FocusedNode);

              if (Data.Table = 'Groups') or (Data.Table = 'Komponents') then
     begin
                if Data.Table = 'Komponents' then
        begin
          ChildNode3 := VirtualStringTree1.FocusedNode;

           if VirtualStringTree1.GetNodeLevel(ChildNode3)>0 then
              ChildNode2:=ChildNode3.Parent;
          Data := VirtualStringTree1.GetNodeData(ChildNode2);

        end;
        RedaktorDataKRR.AdvStringGrid2.Cells[1,1]:= Data.KartName;
        RedaktorDataKRR.AdvStringGrid2.Cells[1,2]:= Data.value;
        RedaktorDataKRR.AdvStringGrid2.Cells[1,3]:= Data.param;

        RedaktorDataKRR.AdvStringGrid1.MergeCells(0,0,11,1);
        RedaktorDataKRR.AdvStringGrid1.Alignments[0,0] := taRightJustify;
        RedaktorDataKRR.AdvStringGrid1.MergeCells(0,1,11,1);
        RedaktorDataKRR.AdvStringGrid1.RowHeights[1] := 30;
        RedaktorDataKRR.AdvStringGrid1.Alignments[0,1] := taCenter;
        RedaktorDataKRR.AdvStringGrid1.Cells[0,2] := 'Позиционное обозначение';

        RedaktorDataKRR.AdvStringGrid1.MergeCells(0,2,5,1);
        RedaktorDataKRR.AdvStringGrid1.RowHeights[2] := 30;
        RedaktorDataKRR.AdvStringGrid1.Alignments[0,2]:=taCenter;

        RedaktorDataKRR.AdvStringGrid1.MergeCells(0,3,5,1);
        RedaktorDataKRR.AdvStringGrid1.Cells[0,3] := 'Наименование изделия';
        RedaktorDataKRR.AdvStringGrid1.RowHeights[3] := 30;
        RedaktorDataKRR.AdvStringGrid1.Alignments[0,3]:=taCenter;


        RedaktorDataKRR.AdvStringGrid1.MergeCells(0,4,5,1);
        RedaktorDataKRR.AdvStringGrid1.Cells[0,4] := 'Режим работы';
        RedaktorDataKRR.AdvStringGrid1.RowHeights[4] := 30;
        RedaktorDataKRR.AdvStringGrid1.Alignments[0,4]:=taCenter;

        RedaktorDataKRR.AdvStringGrid1.MergeCells(5,2,2,1);
        RedaktorDataKRR.AdvStringGrid1.MergeCells(7,2,2,1);
        RedaktorDataKRR.AdvStringGrid1.MergeCells(9,2,2,1);
        RedaktorDataKRR.AdvStringGrid1.MergeCells(5,3,2,1);
        RedaktorDataKRR.AdvStringGrid1.MergeCells(7,3,2,1);
        RedaktorDataKRR.AdvStringGrid1.MergeCells(9,3,2,1);

                   I :=5;
                  while I<10 do
            begin
               RedaktorDataKRR.AdvStringGrid1.ColWidths[I]:=70;
               RedaktorDataKRR.AdvStringGrid1.ColWidths[I+1]:=70;
               RedaktorDataKRR.AdvStringGrid1.Cells[I,4]:='в схеме';
               RedaktorDataKRR.AdvStringGrid1.Alignments[I,4] := taCenter;
               RedaktorDataKRR.AdvStringGrid1.Cells[I+1,4]:='по НТД';
               RedaktorDataKRR.AdvStringGrid1.Alignments[I+1,4] := taCenter;

               I:=I+2;
            end;

          // RedaktorDataKRR.AdvStringGrid1.MergeCells(0,5,3,2);




        RedaktorDataKRR.Show;
     end
     else
     begin

     end;


end;

procedure TForm1.VirtualStringTree1GetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);

 var Data: PAttrValue;
begin
    Data := Sender.GetNodeData(Node);
   case Column of
      0:
      begin
        case TextType of

          ttNormal: CellText := Data.KartNum;
          ttStatic: CellText := Data.Fix1;
        end;
        //CellText := Data.KartNum ;
      end;




      1:	begin
        case TextType of

          ttNormal: CellText := Data.KartName;
          ttStatic: CellText := Data.Fix2;
        end;

      end;

      2:		begin
        case TextType of

          ttNormal: CellText := Data.value;
          ttStatic: CellText := '';
        end;

      end;
      3:	CellText := Data.param;

    end;
end;

procedure TForm1.XML1Click(Sender: TObject);
begin
           if DataModule2.OpenDialog1.Execute then
    begin
           m := Form2.AdvStringGrid1.RowCount-2;
           Form2.AdvStringGrid1.RemoveRows(1,m);

      XMLDocument1.LoadFromFile(DataModule2.OpenDialog1.FileName);
      XMLDocument1.Active := true;


      //Form2.AdvStringGrid1.Cells[1,1]:= XMLDocument1.DocumentElement.ChildNodes['PassportData'].ChildNodes['Record'].Attributes['field_1'];
      k:= XMLDocument1.DocumentElement.ChildNodes['RecordsData'].ChildNodes.Count;
        for I := 0 to k-1 do
      begin
        Form2.AdvStringGrid1.AddRow;
            if XMLDocument1.DocumentElement.ChildNodes['RecordsData'].ChildNodes[I].Attributes['field_32']<>null then
        begin
          Form2.AdvStringGrid1.Cells[0,I+1]:=  XMLDocument1.DocumentElement.ChildNodes['RecordsData'].ChildNodes[I].Attributes['field_32'];//(I+1).ToString();
        end
        else
        begin

        end;
        Form2.AdvStringGrid1.Cells[1,I+1]:= XMLDocument1.DocumentElement.ChildNodes['RecordsData'].ChildNodes[I].Attributes['field_5'];
            if XMLDocument1.DocumentElement.ChildNodes['RecordsData'].ChildNodes[I].Attributes['field_47']<>null then
        begin
          Form2.AdvStringGrid1.Cells[3,I+1]:= XMLDocument1.DocumentElement.ChildNodes['RecordsData'].ChildNodes[I].Attributes['field_47'];
        end;
            if XMLDocument1.DocumentElement.ChildNodes['RecordsData'].ChildNodes[I].Attributes['field_8']= null then
        begin
           Form2.AdvStringGrid1.Cells[2,I+1]:= '';
        end
        else
        begin
           Form2.AdvStringGrid1.Cells[2,I+1]:= XMLDocument1.DocumentElement.ChildNodes['RecordsData'].ChildNodes[I].Attributes['field_8'];
        end;
      end;
      //AdvStringGrid1.LoadFromXLSSheet(,'Лист1');
    //  Label2.Caption:=XMLDocument1.DocumentElement.ChildNodes['PassportData'].ChildNodes['Record'].Attributes['field_2'];
    //  Label1.Caption:=XMLDocument1.DocumentElement.ChildNodes['PassportData'].ChildNodes['Record'].Attributes['field_3'];
    //  Label3.Caption:=XMLDocument1.DocumentElement.ChildNodes['PassportData'].ChildNodes['Record'].Attributes['field_55'];
    //  Label4.Caption:=XMLDocument1.DocumentElement.ChildNodes['PassportData'].ChildNodes['Record'].Attributes['field_9'];
    //    if XMLDocument1.DocumentElement.ChildNodes['PassportData'].ChildNodes['Record'].Attributes['field_10']<>null then
    //  begin
    //    Label5.Caption:=XMLDocument1.DocumentElement.ChildNodes['PassportData'].ChildNodes['Record'].Attributes['field_10'];
    //  end;
          if Form2.ShowModal = mrOk then
        begin
          SQLQuery1.SQL.Clear;
          SQLQuery1.SQL.Text :='SELECT GroupType FROM Groups;';
          SQLQuery1.Open;
          DataSetProvider1 .DataSet := SQLQuery1;
          ClientDataSet1.ProviderName := 'DataSetProvider1';
          ClientDataSet1.Active := True;
          DataSource1.DataSet := ClientDataSet1;
          DBAdvGrid1.DataSource := DataSource1;
        end;
      XMLDocument1.Active := false;
    end;
end;

end.
