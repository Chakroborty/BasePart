unit ManagerMYSQL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, Vcl.StdCtrls, ImBase_TLB, Vcl.Buttons, Vcl.Menus,ImportAlt,
  Data.DB, Data.Win.ADODB,ShellAPI,DM, Vcl.DBCtrls,RedDataKRR, Vcl.ComCtrls,
  Vcl.ExtCtrls, VirtualTrees, AdvPageControl, AdvFontCombo, AdvCombo, JPEG,
  Vcl.CheckLst, AdvListV, DBAdvLst, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient;
 type
PAttrValue = ^TAttrValue;
TAttrValue = record
idPtipe,idPSubtipe,ObshNTD,PicJ: Integer;
SubTipe,SubTipe1,Klass,Subpath: string;
end;
 type
PSpisValue = ^TSpisValue;
TSpisValue = record
idSpis: Integer;
SpisTipe: string;
end;

type
  TForm3 = class(TForm)
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    ImBase1: TMenuItem;
    Altium1: TMenuItem;
    MySQLds: TDataSource;
    N1: TMenuItem;
    ADOConnection2: TADOConnection;
    ALTqry: TADOQuery;
    N2: TMenuItem;
    N3: TMenuItem;
    Imbase2: TMenuItem;
    N4: TMenuItem;
    ImBase3: TMenuItem;
    btn1: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Button1: TButton;
    AdvStringGrid4: TAdvStringGrid;
    AdvPageControl1: TAdvPageControl;
    advtbsht1: TAdvTabSheet;
    advtbsht7: TAdvTabSheet;
    advtbsht2: TAdvTabSheet;
    advtbsht3: TAdvTabSheet;
    advtbsht4: TAdvTabSheet;
    advtbsht5: TAdvTabSheet;
    advtbsht6: TAdvTabSheet;
    advtbsht8: TAdvTabSheet;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    GroupBox2: TGroupBox;
    Edit4: TEdit;
    BitBtn3: TBitBtn;
    Edit5: TEdit;
    grp2: TGroupBox;
    Label7: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    grp1: TGroupBox;
    Label6: TLabel;
    dblkcbbFirmNAME: TDBLookupComboBox;
    btn3: TBitBtn;
    KategoryTree1: TVirtualStringTree;
    lbl3: TLabel;
    Button2: TButton;
    AdvStringGrid13: TAdvStringGrid;
    Label2: TLabel;
    chk1: TCheckBox;
    lbl2: TLabel;
    lbl1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    AdvStringGrid6: TAdvStringGrid;
    AdvStringGrid12: TAdvStringGrid;
    Label1: TLabel;
    AdvStringGrid9: TAdvStringGrid;
    AdvStringGrid8: TAdvStringGrid;
    AdvStringGrid10: TAdvStringGrid;
    AdvStringGrid11: TAdvStringGrid;
    Label3: TLabel;
    advstr2: TAdvStringGrid;
    Button3: TButton;
    btn2: TBitBtn;
    btn4: TBitBtn;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Edit3: TEdit;
    Edit6: TEdit;
    Label5: TLabel;
    mmo1: TMemo;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    Memo1: TMemo;
    chk2: TCheckBox;
    Label4: TLabel;
    Label8: TLabel;
    Image1: TImage;
    btn5: TBitBtn;
    Label9: TLabel;
    Image2: TImage;
    Label10: TLabel;
    BitBtn9: TBitBtn;
    datalook: TDBLookupComboBox;
    TAOlook: TDBLookupComboBox;
    Datlbl: TLabel;
    TAOlbl: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    SpisokTree2: TVirtualStringTree;
    N5: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImBase1Click(Sender: TObject);
    /// <url>element://model:project::Karts/design:node:::n0ybkw4bgl_n:vaaru2e8eq_n</url>
    procedure Altium1Click(Sender: TObject);
    procedure Imbase2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure ImBase3Click(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    /// <url>element://model:project::Karts/design:node:::vaaru2e8eq_n</url>
    procedure Button2Click(Sender: TObject);
    procedure KategoryTree1GetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    /// <url>element://model:project::Karts/design:node:::ovy90uy3d9fl65nlf_n</url>
    procedure Button1Click(Sender: TObject);
    /// <url>element://model:project::Karts/design:node:::i58c0gg1png9nehxt_n</url>
    procedure KategoryTree1NodeClick(Sender: TBaseVirtualTree;
      const HitInfo: THitInfo);
    /// <url>element://model:project::Karts/design:view:::s91cq00a50192epon_v</url>
    /// <url>element://model:project::Karts/design:node:::g90l74orsfabhb40m_n</url>
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AdvStringGrid12ClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure chklst1ClickCheck(Sender: TObject);
    /// <url>element://model:project::Karts/design:view:::oirxtt78h4p34pebq_v</url>
    /// <url>element://model:project::Karts/design:view:::rpacyber5ntsfpuel_v</url>
    /// <url>element://model:project::Karts/design:view:::ox0dnvldixp_v</url>
    /// <url>element://model:project::Karts/design:view:::0diri6azwjg_v</url>
    /// <url>element://model:project::Karts/design:view:::u7yts2axrc8a37tpf_v</url>
    /// <url>element://model:project::Karts/design:view:::63q14yq20hih74zht_v</url>
    /// <url>element://model:project::Karts/design:view:::vdh9q11m3dijptpip_v</url>
    /// <url>element://model:project::Karts/design:node:::dtl96s046mg_n</url>

    procedure BitBtn7Click(Sender: TObject);
    procedure dblkcbbFirmNAMEClick(Sender: TObject);
    procedure DBLookupComboBox7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure SpisokTree2GetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
    procedure SpisokTree2NodeClick(Sender: TBaseVirtualTree;
      const HitInfo: THitInfo);
    procedure SpisokTree2InitNode(Sender: TBaseVirtualTree; ParentNode,
      Node: PVirtualNode; var InitialStates: TVirtualNodeInitStates);
    procedure N5Click(Sender: TObject);
  private


    { Private declarations }
  public
    { Public declarations }
    /// <url>element://model:project::Karts/design:node:::sbv76h601okoy10ts_n</url>
    procedure PocData(DatashetName, SubPath, Path: string);
    procedure CadComp(PCAD, Altium: TAdvStringGrid);
    procedure PCADComp(PCAD: TAdvStringGrid);
    procedure AltiumComp(Altium: TAdvStringGrid);
  end;

var
  Form3: TForm3;
  Lst: TStringList;
  TableId, RecordKey, I, j, m, UCol, URow: Integer;
  ImBase: IImbaseApplication;
  InDatBase: IImDataBase;
  PicJPG:TMemoryStream;
  Result:Boolean;
  jp: TJPEGImage;
  value :String;
  Rvalue, Rfiled, Tresult: WideString;
  TBLrec, CATALOGrec, KeyList: WideString;
  STR,TableOUT,TableIN: string;
  SQLsel,SQLins: string;
  TreData: PAttrValue;
  TreSpisok: PSpisValue;
  SpisNode,RootNode, ChildNode,ChildNode1,ChildNode2,ChildNode3,ChildNode4: PVirtualNode;

implementation



{$R *.dfm}

//uses Unit1;
procedure GridClear(Grid:TAdvStringGrid;N:Integer);

begin
    for I := 1 to N do
  begin
    Grid.Cells[1,I]:='';
  end;
end;
procedure TForm3.AdvStringGrid12ClickCell(Sender: TObject; ARow, ACol: Integer);
begin
        BitBtn6.Enabled := True;
end;

procedure TForm3.Altium1Click(Sender: TObject);
begin
    ALTqry.SQL.Clear;
    STR := 'Resistors';
    STR := 'SELECT * FROM  ' + STR + ' WHERE ImKey =' + '"' +  AdvStringGrid4.Cells[1, 1] + '"';
    ALTqry.SQL.Add(STR);
    ALTqry.Active := true;
    ALTqry.ExecSQL;

        if ALTqry.RecordCount=0 then
    begin
      Exit;//  Осуществляет выход из функции или процедуры
    end;


    Form4.AdvStringGrid1.Cells[1,1] := ALTqry.FieldByName('ImKey').Value;

    Form4.AdvStringGrid1.Cells[1,2] := ALTqry.FieldByName('Type').Value;


    Form4.AdvStringGrid1.Cells[1,3] := ALTqry.FieldByName('ManufacturerPartNumber').Value; //Наименование
    Form4.AdvStringGrid1.Cells[1,4] := ALTqry.FieldByName('Value').Value;    //Value
    Form4.AdvStringGrid1.Cells[1,5] := ALTqry.FieldByName('Tolerance').Value;  //Tolerance
    Form4.AdvStringGrid1.Cells[1,6] := ALTqry.FieldByName('Power/Voltage').Value;   //Power/Voltage

    Form4.AdvStringGrid1.Cells[1,7] := ALTqry.FieldByName('Footprint Ref').Value;       //Footprint Ref
    Form4.AdvStringGrid1.Cells[1,8] := ALTqry.FieldByName('Footprint Path').Value;     //Footprint Path
    Form4.AdvStringGrid1.Cells[1,9] := ALTqry.FieldByName('Library Ref').Value;   //Library Ref
    Form4.AdvStringGrid1.Cells[1,10] := ALTqry.FieldByName('Library Path').Value;  //Library Path


    Form4.AdvStringGrid1.Cells[1,11] := ALTqry.FieldByName('PCADType').Value;     //Type
    Form4.AdvStringGrid1.Cells[1,12] := ALTqry.FieldByName('PCADSymbol').Value;    //PCADSymbol
    Form4.AdvStringGrid1.Cells[1,13] := ALTqry.FieldByName('PCADPattern').Value;   //PCADPattern
    Form4.AdvStringGrid1.Cells[1,14] := ALTqry.FieldByName('PCADLibrary').Value;  //PCADLibrary
    //Form4.ShowModal;
        if Form4.ShowModal = mrOk then
    begin
       Result:=True;
               for I := 1 to 2 do
       begin
          if AnsiCompareStr(AdvStringGrid4.Cells[1,I],Form4.AdvStringGrid1.Cells[1,I]) <> 0 then
                 begin
                   Result:=False;
                 end;
       end;
           for I := 3 to 5 do
       begin
          if AnsiCompareStr(advstr2.Cells[1,I+6],Form4.AdvStringGrid1.Cells[1,I]) <> 0 then
                 begin
                   Result:=False;
                 end;
       end;
               for I := 7 to 10 do
       begin
          if AnsiCompareStr(AdvStringGrid9.Cells[1,I-6],Form4.AdvStringGrid1.Cells[1,I]) <> 0 then
                 begin
                   Result:=False;
                 end;
       end;
           if AnsiCompareStr(AdvStringGrid10.Cells[1,1],Form4.AdvStringGrid1.Cells[1,11]) <> 0 then
                 begin
                   Result:=False;
                 end;
              if Result then
       begin
//          AdvStringGrid3.Cells[1,18] := Form4.AdvStringGrid1.Cells[1,12];  //PCADSymbol
//          AdvStringGrid3.Cells[1,19] := Form4.AdvStringGrid1.Cells[1,13];  //PCADPattern
//          AdvStringGrid3.Cells[1,20] := Form4.AdvStringGrid1.Cells[1,14];  //PCADLibrary
          AdvStringGrid10.Cells[1,2] := Form4.AdvStringGrid1.Cells[1,12];  //PCADSymbol
          AdvStringGrid10.Cells[1,3] := Form4.AdvStringGrid1.Cells[1,13];  //PCADPattern
          AdvStringGrid10.Cells[1,4] := Form4.AdvStringGrid1.Cells[1,14];  //PCADLibrary
       end;

    end;
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin

    //AdvStringGrid3.Cells[1,1] := AdvStringGrid1.Cells[1,1];
     InDatBase.GetKeyInfo(AdvStringGrid4.Cells[1,1],TBLrec, CATALOGrec, KeyList);
     Lst.Text := InDatBase.CommaTextToText(TBLrec);
      I := 0;
      j := 0;

  for I := 0 to Lst.Count - 1 do
  begin



    if Lst.Strings[I].Contains('ImKey') then
    begin
      //advstr2.Cells[1, 1] := Lst.Strings[I].Remove(0, 6);
      // AdvStringGrid5.Cells[1, 1] := AdvStringGrid3.Cells[1, 1];
      //AdvStringGrid3.Cells[0,1]:= 'ImKey';

    end;

       if Lst.Strings[I].Contains('Класс') then
    begin
      advstr2.Cells[1, 7] := Lst.Strings[I].Remove(0, 6);
      AdvStringGrid4.Cells[1, 2] := Lst.Strings[I].Remove(0, 6);
      //AdvStringGrid5.Cells[1, 2] := AdvStringGrid3.Cells[1, 2];
        // AdvStringGrid3.Cells[0,3]:= 'Класс';
    end;
 if Lst.Strings[I].Contains('Функциональное назначение') then
    begin
      //ColorText(RichEdit1, Lst.Strings[I].Remove(0, 13));
      advstr2.Cells[1, 8] := Lst.Strings[I].Remove(0, 26);
      //AdvStringGrid5.Cells[1, 3] := AdvStringGrid3.Cells[1, 3];
      //AdvStringGrid1.RichToCell(1, 3, RichEdit1);
    end;

      if Lst.Strings[I].Contains('Наименование') then
    begin
      //ColorText(RichEdit1, Lst.Strings[I].Remove(0, 13));
      advstr2.Cells[1, 9] := Lst.Strings[I].Remove(0, 13);
      //AdvStringGrid3.Cells[1, 4] := Lst.Strings[I].Remove(0, 13);
      //AdvStringGrid5.Cells[1, 4] := AdvStringGrid3.Cells[1, 4];
      //AdvStringGrid1.RichToCell(1, 3, RichEdit1);
    end;
    if Lst.Strings[I].Contains('Value') then
    begin
      advstr2.Cells[1, 10] := Lst.Strings[I].Remove(0, 6);
      //AdvStringGrid3.Cells[1, 5] := Lst.Strings[I].Remove(0, 6);
      //AdvStringGrid5.Cells[1, 5] := AdvStringGrid3.Cells[1, 5];
      // AdvStringGrid3.Cells[0,5]:= 'Value';
    end;
    if Lst.Strings[I].Contains('Tolerance') then
    begin
      advstr2.Cells[1, 11] := Lst.Strings[I].Remove(0, 10);
      //AdvStringGrid3.Cells[1, 6] := Lst.Strings[I].Remove(0, 10);
      //AdvStringGrid5.Cells[1, 6] := AdvStringGrid3.Cells[1, 6];
      // AdvStringGrid3.Cells[0,6]:= 'Tolerance';
    end;
    if Lst.Strings[I].Contains('Pow/Volt') then
    begin
      advstr2.Cells[1, 12] := Lst.Strings[I].Remove(0, 9);
      //AdvStringGrid3.Cells[1, 7] := Lst.Strings[I].Remove(0, 9);
      // AdvStringGrid3.Cells[0,7]:= 'Power/Voltage';
    end;
    if Lst.Strings[I].Contains('Power/Voltage') then
    begin
      advstr2.Cells[1, 12] := Lst.Strings[I].Remove(0, 14);
      //AdvStringGrid3.Cells[1, 7] := Lst.Strings[I].Remove(0, 14);
      // AdvStringGrid3.Cells[0,7]:= 'Power/Voltage';
    end;
    if Lst.Strings[I].Contains('Полное обозначение') then
    begin
       advstr2.Cells[1, 13] := Lst.Strings[I].Remove(0, 19);
      //AdvStringGrid3.Cells[1, 8] := Lst.Strings[I].Remove(0, 19);
      //AdvStringGrid5.Cells[1, 8] := AdvStringGrid3.Cells[1, 8];
      // AdvStringGrid3.Cells[0,7]:= 'Power/Voltage';
    end;
   //**************************************************************************************
     if Lst.Strings[I].Contains('Температура хранения повышенная') then
    begin
      //AdvStringGrid3.Cells[1, 9] := Lst.Strings[I].Remove(0, 32);
      AdvStringGrid6.Cells[1, 1] := Lst.Strings[I].Remove(0, 32);
    end;
   if Lst.Strings[I].Contains('Температура рабочая повышенная') then
    begin
      //AdvStringGrid3.Cells[1, 10] := Lst.Strings[I].Remove(0, 31);
      AdvStringGrid6.Cells[1, 2] := Lst.Strings[I].Remove(0, 31);
    end;
  if Lst.Strings[I].Contains('Температура рабочая пониженная') then
    begin
      //AdvStringGrid3.Cells[1, 11] := Lst.Strings[I].Remove(0, 31);
      AdvStringGrid6.Cells[1, 3] := Lst.Strings[I].Remove(0, 31);
    end;
         if Lst.Strings[I].Contains('Температура хранения пониженная') then
    begin
      //AdvStringGrid3.Cells[1, 12] := Lst.Strings[I].Remove(0, 32);
      AdvStringGrid6.Cells[1, 4] :=  Lst.Strings[I].Remove(0, 32);
    end;
   //**************************************************************************************
    if Lst.Strings[I].Contains('Footprint Ref') then
    begin
      //AdvStringGrid3.Cells[1, 13] := Lst.Strings[I].Remove(0, 14);
      AdvStringGrid9.Cells[1, 1] :=  Lst.Strings[I].Remove(0, 14);
    end;
    if Lst.Strings[I].Contains('Footprint Path') then
    begin
      //AdvStringGrid3.Cells[1, 14] := Lst.Strings[I].Remove(0, 15);
      AdvStringGrid9.Cells[1, 2] := Lst.Strings[I].Remove(0, 15);
    end;
    if Lst.Strings[I].Contains('Library Ref') then
    begin
      //AdvStringGrid3.Cells[1, 15] := Lst.Strings[I].Remove(0, 12);
      AdvStringGrid9.Cells[1, 3] := Lst.Strings[I].Remove(0, 12);
    end;
    if Lst.Strings[I].Contains('Library Path') then
    begin
      //AdvStringGrid3.Cells[1, 16] := Lst.Strings[I].Remove(0, 13);
      AdvStringGrid9.Cells[1, 4] := Lst.Strings[I].Remove(0, 13);
    end;
    if Lst.Strings[I].Contains('Type') then
    begin
      //AdvStringGrid3.Cells[1, 17] := Lst.Strings[I].Remove(0, 5);
      AdvStringGrid10.Cells[1, 1] := Lst.Strings[I].Remove(0, 5);
    end;

   if Lst.Strings[I].Contains('Номер КРР') then
    begin
      //AdvStringGrid3.Cells[1, 21] := Lst.Strings[I].Remove(0, 10);
      //AdvStringGrid7.Cells[1, 5] := AdvStringGrid3.Cells[1, 21];
      // AdvStringGrid3.Cells[0,2]:= 'BCPid';
    end;
     if Lst.Strings[I].Contains('TU/GOST') then
    begin
      //AdvStringGrid3.Cells[1, 22] := Lst.Strings[I].Remove(0, 8);
      AdvStringGrid4.Cells[1, 5] :=  Lst.Strings[I].Remove(0, 8);
      //AdvStringGrid5.Cells[1, 9] := AdvStringGrid3.Cells[1, 22];

    end;
    if Lst.Strings[I].Contains('HelpURL') then
    begin
      //AdvStringGrid3.Cells[1, 23] := Lst.Strings[I].Remove(0, 8);
      AdvStringGrid4.Cells[1, 6] := Lst.Strings[I].Remove(0, 8);
      //AdvStringGrid5.Cells[1, 10] := AdvStringGrid3.Cells[1, 23];

    end;
      if Lst.Strings[I].Contains('ТЭОURL') then
    begin
      //AdvStringGrid3.Cells[1, 24] := Lst.Strings[I].Remove(0, 7);
      AdvStringGrid4.Cells[1, 7] := Lst.Strings[I].Remove(0, 7);
      // AdvStringGrid3.Cells[0,16]:= 'HelpURL';
    end;
    if Lst.Strings[I].Contains('Rem') then
    begin
      //AdvStringGrid3.Cells[1, 25] := Lst.Strings[I].Remove(0, 4);
      // AdvStringGrid3.Cells[0,16]:= 'HelpURL';
    end;

     if Lst.Strings[I].Contains('МОП') then
    begin
      //AdvStringGrid3.Cells[1, 26] := Lst.Strings[I].Remove(0, 4);
      // AdvStringGrid3.Cells[0,16]:= 'HelpURL';
    end;
  end;

end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
     if  DataModule2.OpenDialog1.Execute then
       begin
         Edit1.Text := DataModule2.OpenDialog1.FileName;
       end;

          TAOlook.KeyValue:=0;
          value :=  Edit1.Text ;
          Edit6.Text :=value.Remove(0,LastDelimiter('\',value));//Pos('//',Edit4.Text),Length(Edit4.Text));
         value :=value.Remove(0,Pos('ТЭО',Edit1.Text)+2);//Pos('Радиоэлементы',Edit4.Text),Length(Edit4.Text));
          Edit2.Text :=value.Remove(LastDelimiter('\',value),value.Length);

end;

procedure TForm3.BitBtn3Click(Sender: TObject);


 begin
              if  DataModule2.OpenDialog1.Execute then
 begin
              { TODO -cData : Obrabotka datashet. }
         Edit4.Text := DataModule2.OpenDialog1.FileName;
         DataModule2.TexData.Path:= DataModule2.OpenDialog1.FileName;
         DataModule2.TexData.DSHFile := DataModule2.TexData.Path.Remove(0,LastDelimiter('\',DataModule2.TexData.Path));

         //**************** Начало нового блока************
			DataModule2.MySQLqry.Active:= False;
      DataModule2.MySQLqry.SQL.Clear;

      DataModule2.MySQLqry.SQL.Text := 'SELECT * FROM Datashets WHERE DatashetName = "'+DataModule2.TexData.DSHFile+'";';//добавить пров. по  PartSubTipe_idPartSubTipe
      DataModule2.MySQLqry.Open;

      if DataModule2.MySQLqry.RecordCount=0 then
      begin
                  { TODO -cData : INSERT datashet. }
         DataModule2.TexData.SubPath := DataModule2.TexData.Path.Remove(LastDelimiter('\',DataModule2.TexData.Path),DataModule2.TexData.Path.Length);
         DataModule2.TexData.SubPath := DataModule2.TexData.SubPath.Remove(0,Pos('Радиоэлементы',DataModule2.TexData.SubPath)+12);

          //**************** Начало нового блока************
          SQLsel:= 'SELECT * FROM Datashets WHERE DatashetName = "'+DataModule2.TexData.DSHFile+'";';
          SQLins:= 'INSERT INTO Datashets (DatashetName,DatashetPath,DatashetSubPath,Person_idPerson,Data_tame) Value ("'+
          DataModule2.TexData.DSHFile+'","'+DataModule2.TexData.Path+'","'+DataModule2.TexData.SubPath+'","'+
            DataModule2.PartRec.idPerson.ToString+'",NOW());';
          DataModule2.TexData.idDatasheet :=  DataModule2.InsertRec(SQLsel,SQLins,'idPCADLib',True);
          //**************** Конец нового блока************

      end
      else
      begin              { TODO -cData : Analiz datashet. }
                  DataModule2.BaseTexData.DSHFile:= DataModule2.MySQLqry.FieldByName('idDatashets').Value;
                  DataModule2.BaseTexData.DSHFile:= DataModule2.MySQLqry.FieldByName('DatashetName').Value;
                  DataModule2.BaseTexData.Path:= DataModule2.MySQLqry.FieldByName('DatashetPath').Value;
                  DataModule2.BaseTexData.SubPath:= DataModule2.MySQLqry.FieldByName('DatashetSubPath').Value;


                case
                  MessageDlg('Файл с именем '+DataModule2.TexData.DSHFile+' уже зарегистрирован в базе.' +
                  #13#10 + 'Открыть зарегистрированный файл?',  mtWarning,
                  [mbYes, mbNo], 0) of
                  mrYes:
                  begin
                     { TODO -cData : Otkrit novi datashet. }
                    ShellExecute(handle, 'open', PChar(DataModule2.TexData.Path), nil,nil, SW_SHOW);//запуск файла

                    Exit;

                  end;
                  mrNo:
                  begin
                      { TODO -cData : Otkrit zareg datashet. }

                    ShellExecute(handle, 'open', PChar('C:\test.txt'), nil,nil, SW_SHOW);//запуск файла
                    Exit;


                  end;
                  mrCancel:
                  begin
                     { TODO -cData : Pereimenovat i zareg datashet. }




                  end;
                  mrRetry:
                  begin
                     { TODO -cData : Vixod . }
                      Exit;
                  end;
                end;

      end;
             { TODO -cData : End Obrabotka datashet. }
       //**************** Конец нового блока************

         DataModule2.TexData.SubPath := DataModule2.TexData.Path.Remove(LastDelimiter('\',value),value.Length);


 end;



          datalook.KeyValue:=0;
          value :=  Edit4.Text ;
          Edit5.Text :=value.Remove(0,LastDelimiter('\',value));//Pos('//',Edit4.Text),Length(Edit4.Text));
          value :=value.Remove(0,Pos('Радиоэлементы',Edit4.Text)+12);//Pos('Радиоэлементы',Edit4.Text),Length(Edit4.Text));
          Edit3.Text :=value.Remove(LastDelimiter('\',value),value.Length);

          //*************************************************************************
//      DataModule2.MySQLqry.Active:= False;
//      DataModule2.MySQLqry.SQL.Clear;
//      DataModule2.MySQLqry.SQL.Text := 'SELECT * FROM datashets WHERE DatashetName = "'
//      +  DatashetName+'";';//добавить пров. по  PartSubTipe_idPartSubTipe
//      DataModule2.MySQLqry.Open;
//
//
//
//
//      if DataModule2.MySQLqry.RecordCount=0 then
//      begin
//
//          DataModule2.MySQLqry.Active:= False;
//          DataModule2.MySQLqry.SQL.Clear;
//          DataModule2.MySQLqry.SQL.Text := 'INSERT INTO datashets (DatashetName,DatashetPath,DatashetSubPath,Person_idPerson,Data_tame)	Value ("'+
//          DatashetName+ '","'+ Path.Replace('\','\\')+'","'+SubPath.Replace('\','\\')+'",'+ DataModule2.PartRec.idPerson.ToString+',NOW());';
//          DataModule2.MySQLqry.ExecSQL;
//
//
//
//          DataModule2.MySQLqry.Active:= False;
//          DataModule2.MySQLqry.SQL.Clear;
//          DataModule2.MySQLqry.SQL.Text := 'SELECT LAST_INSERT_ID() as ID;';
//          DataModule2.MySQLqry.Open;
//          Result :=  DataModule2.MySQLqry.FieldByName('ID').AsInteger;
//
//
//      end
//      else
//      begin
//          Result := DataModule2.MySQLqry.FieldByName('idDatashets').Value;
//
//
//      end;
//
//         if not (MessageDlg('Файл с именем уже зарегистрирован.', mtWarning, [mbOK], 0) = mbOK) then
//            begin
//               Result := DataModule2.MySQLqry.FieldByName('idDatashets').Value;
//            end;
//
//             if Pos('Радиоэлементы',DBLookupComboBox2.Text)=0 then
//
//         begin
//           MessageDlg('Файл с таким исменем уже зарегистрирован. '+#13+#10+'Открыть зарегистрированный файл?', mtConfirmation, [mbNo, mbOK], 0);
//         end
//         else
//         begin
//
//         end;


end;

procedure TForm3.BitBtn4Click(Sender: TObject);
begin
                  for I := 1 to 4 do
       begin
                  if not AdvStringGrid6.Cells[1,I].IsEmpty then
         begin
         AdvStringGrid13.Cells[1,I] :=   AdvStringGrid6.Cells[1,I];
         end;
       end;
            if AdvStringGrid13.Cells[1,1].ToInteger<AdvStringGrid13.Cells[1,2].ToInteger then
           begin
             AdvStringGrid13.Cells[1,1] :=  AdvStringGrid13.Cells[1,2];
           end;
             if AdvStringGrid13.Cells[1,4].ToInteger>AdvStringGrid13.Cells[1,3].ToInteger then
           begin
             AdvStringGrid13.Cells[1,4] :=  AdvStringGrid13.Cells[1,3];
           end;
        BitBtn6.Enabled := False;

end;

procedure TForm3.BitBtn5Click(Sender: TObject);
begin
              for I := 1 to 4 do
       begin
                  if not AdvStringGrid9.Cells[1,I].IsEmpty then
         begin
           AdvStringGrid8.Cells[1,I] :=  AdvStringGrid9.Cells[1,I];
         end;
       end;
           BitBtn6.Enabled := True;
end;

procedure TForm3.BitBtn6Click(Sender: TObject);
begin
     AdvPageControl1.ActivePageIndex := AdvPageControl1.ActivePageIndex+1;
          if AdvPageControl1.ActivePageIndex>0 then
     begin
       btn1.Enabled := True;
     end;
     if AdvPageControl1.ActivePageIndex=7 then
     begin
       BitBtn6.Enabled := False;
       BitBtn7.Enabled := True;
     end;
       BitBtn6.Enabled := False;
end;

procedure TForm3.BitBtn7Click(Sender: TObject);
begin

                         { TODO -cInsert: Вставка записи Part в Mysql }


                         //**************** Начало нового блока************
          SQLsel:= 'SELECT  * FROM Parts WHERE PartImKey = "'
          +  AdvStringGrid4.Cells[1,1]+'" AND PartFULLName="'+advstr2.Cells[1,13]+'";';//добавить пров. по  PartSubTipe_idPartSubTipe
          SQLins := 'INSERT INTO Parts (PartSubTipe_idPartSubTipe,PartImKey,PartName,PartFULLName,Person_idPerson,DateTime)	Value ('+
          DataModule2.PartRec.idPSubtipe.ToString+ ',"'+
          AdvStringGrid4.Cells[1,1]+'","'+advstr2.Cells[1,9]+'","'+advstr2.Cells[1,13]+'",'+ DataModule2.PartRec.idPerson.ToString+',NOW());';

          DataModule2.PartRec.idPart :=  DataModule2.InsertRec(SQLsel,SQLins,'idParts',False);

                            if DataModule2.PartRec.idPart<1 then
                  begin
                    MessageDlg('Запись содержит ошибки и не добавлена.', mtError, [mbOK], 0);
                    Exit;
                  end;

                            //**************** Конец нового блока************

                             { TODO -cInsert:  Вставка данных CAD в Mysql }
          CadComp(AdvStringGrid11,AdvStringGrid8);

                    if DataModule2.PartRec.idCADkomponents>0 then
          begin
            DataModule2.MySQLqry.Active := False;
            DataModule2.MySQLqry.SQL.Clear;
            DataModule2.MySQLqry.SQL.Text:='UPDATE Parts SET CADkomponents_idCADkomponents ='+DataModule2.PartRec.idCADkomponents.ToString()+' WHERE idParts='+
            DataModule2.PartRec.idPart.ToString()+';';
            DataModule2.MySQLqry.ExecSQL;
            end;
                          //**************** Конец блока************

                             { TODO -cInsert:  Вставка записи Temperature в Mysql }
          DataModule2.MySQLqry.Active := False;
          DataModule2.MySQLqry.SQL.Clear;
          DataModule2.MySQLqry.SQL.Text:='UPDATE Parts SET TplusXR ='+AdvStringGrid13.Cells[1,1]+', TplusRAB='+AdvStringGrid13.Cells[1,2]+
          ', TminXR='+AdvStringGrid13.Cells[1,3]+', TminRAB ='+AdvStringGrid13.Cells[1,4]+' WHERE idParts='+
          DataModule2.PartRec.idPart.ToString()+';';
          DataModule2.MySQLqry.ExecSQL;
              //************************************************************************************

                                        { TODO -cInsert: Назначение карты для Part в Mysql }
          DataModule2.PartRec.idCARDS := DBLookupComboBox1.KeyValue;
                                        { TODO -cInsert: Назначение ПО НТД для Part и карты в Mysql }
                       //**************** Начало нового блока************
          SQLsel:= 'SELECT * FROM PartPoNTD WHERE CARTS_idCARDS = '+ DataModule2.PartRec.idCARDS.ToString;

              Case DataModule2.PartRec.ObshNTD of
                     0 : SQLsel:= SQLsel +  ' AND Parts_idParts ='+ DataModule2.PartRec.idPart.ToString+';';
                     1 : SQLsel:= SQLsel +  ' AND PartSubType_idPartSubTipe ='+ DataModule2.PartRec.idPSubtipe.ToString+';';
              end;

          SQLins := 'INSERT INTO PartPoNTD (Parts_idParts,PartSubType_idPartSubTipe,CARTS_idCARDS,PartPoNTD,Person_idPerson,'+
          'PartPoNTDDTAME) Value ('+ DataModule2.PartRec.idPart.ToString+','+ DataModule2.PartRec.idPSubtipe.ToString+',' +
          DataModule2.PartRec.idCARDS.ToString+',"",'+DataModule2.PartRec.idPerson.ToString+',NOW());';    { TODO -cInsert: Название ПО НТД для Part и карты в Mysql }
          DataModule2.PartRec.idPartPoNTD :=  DataModule2.InsertRec(SQLsel,SQLins,'idPartPoNTD',False );
                       //**************** Конец нового блока************
                                        { TODO -cInsert: Назначение фирмы для Part в Mysql }
          DataModule2.PartRec.idFirmsRaz := dblkcbbFirmNAME.KeyValue;
          DataModule2.PartRec.idFirmsIz := DBLookupComboBox7.KeyValue;
          DataModule2.MySQLqry.Active := False;
          DataModule2.MySQLqry.SQL.Clear;
          DataModule2.MySQLqry.SQL.Text := 'UPDATE Parts SET Firms_idFirms ='+DataModule2.PartRec.idFirmsRaz.ToString+
          ', Firms_idFirmsI='+DataModule2.PartRec.idFirmsIz.ToString+' WHERE idParts='+DataModule2.PartRec.idPart.ToString()+';';
          DataModule2.MySQLqry.ExecSQL;

                //**************** Конец нового блока************

                                { TODO -cInsert: Регистрация datashet для Part в Mysql }
          PocData(Edit5.Text,Edit3.Text,Edit4.Text);
                                { TODO -cInsert: Назначение фирмы для Part в MysqlРегистрация datashet для Part в Mysql}
  DataModule2.PartRec.idFirmsRaz:=dblkcbbFirmNAME.KeyValue;
  DataModule2.PartRec.idFirmsIz:=DBLookupComboBox7.KeyValue;
  DataModule2.MySQLqry.Active := False;
  DataModule2.MySQLqry.SQL.Clear;
  DataModule2.MySQLqry.SQL.Text:='UPDATE Parts SET Firms_idFirms ='+DataModule2.PartRec.idFirmsRaz.ToString+
  ', Firms_idFirmsI='+DataModule2.PartRec.idFirmsIz.ToString+' WHERE idParts='+DataModule2.PartRec.idPart.ToString()+';';
  DataModule2.MySQLqry.ExecSQL;

                //**************** Конец нового блока************
                                { TODO -cInsert: Вхождение  Part в список }
//******************************

	    SpisNode := SpisokTree2.GetFirst;
  while Assigned(SpisNode) do
  begin
           TreSpisok := SpisokTree2.GetNodeData(SpisNode);
          if SpisNode.CheckState=csCheckedNormal then
     begin
 //**************** Начало нового блока************

            if DataModule2.PartRec.ObshNTD=1 then
      begin
        SQLsel:= 'SELECT * FROM PartSpisok WHERE PartSubType_idPartSubTipe = "'+ DataModule2.PartRec.idPSubtipe.ToString
              +' AND SpiskiRazr_idSpickiRazr='+TreSpisok.idSpis.ToString+'";';
      end
      else
      begin
        SQLsel:= 'SELECT * FROM PartSpisok WHERE Parts_idParts = "'+ DataModule2.PartRec.idPart.ToString
              +' AND SpiskiRazr_idSpickiRazr='+TreSpisok.idSpis.ToString+'";';
      end;
      SQLins := 'INSERT INTO PartSpisok  (Parts_idParts,SpiskiRazr_idSpickiRazr,SpiskiRazr_idSpickiRazr) Value ('+
        DataModule2.PartRec.idPart.ToString+','+DataModule2.PartRec.idPSubtipe.ToString+
        ','+TreSpisok.idSpis.ToString+');';
      DataModule2.PCADrec.idLib :=  DataModule2.InsertRec(SQLsel,SQLins,'idPartsSpisok',False);
 //**************** Конец нового блока************ MessageDlg('Узел  выбран ',  mtInformation, [mbOK], 0);


     end
     else
     begin
        MessageDlg('Узел  Свободен ',  mtInformation, [mbOK], 0);
     end;



      SpisNode := SpisokTree2.GetNext(SpisNode);
  end;


  Form3.Close;
end;

procedure TForm3.BitBtn8Click(Sender: TObject);
begin
              for I := 1 to 4 do
       begin
                  if not AdvStringGrid10.Cells[1,I].IsEmpty then
         begin
           AdvStringGrid11.Cells[1,I] :=  AdvStringGrid10.Cells[1,I];
         end;
       end;
              BitBtn6.Enabled := True;
end;

procedure TForm3.BitBtn9Click(Sender: TObject);
begin
        if DataModule2.OpenDialog1.execute then
    Image2.Picture.LoadFromFile(DataModule2.OpenDialog1.filename);
    PicJPG := TMemoryStream.Create;
    Image1.Picture.Graphic.SaveToStream(PicJPG);
    DataModule2.MySQLqry.Active:=False;
    DataModule2.MySQLqry.SQL.Clear;
    DataModule2.MySQLqry.Parameters.Clear;
    //DataModule2.MySQLqry.SQL.Text:='UPDATE partsubtype SET ALLPIC3DName = "Р-12",ALLPIC3D = :PIC   WHERE idPartSubTipe = '+DataModule2.PartRec.idPSubtipe.ToString+';';
    //DataModule2.MySQLqry.Parameters.ParamByName('PIC').LoadFromStream(PicJPG,ftBlob);
    DataModule2.MySQLqry.ExecSQL;
    PicJPG.Free;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
     AdvPageControl1.ActivePageIndex := AdvPageControl1.ActivePageIndex-1;

       if AdvPageControl1.ActivePageIndex=0 then
     begin
       btn1.Enabled := False;
     end;
      if AdvPageControl1.ActivePageIndex<7 then
     begin
       BitBtn6.Enabled := True;
       BitBtn7.Enabled := False;
     end;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
   N3Click(Sender);
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
    if DataModule2.OpenDialog1.execute then
    Image1.Picture.LoadFromFile(DataModule2.OpenDialog1.filename);
    PicJPG := TMemoryStream.Create;
    Image1.Picture.Graphic.SaveToStream(PicJPG);
    DataModule2.MySQLqry.Active:=False;
    DataModule2.MySQLqry.SQL.Clear;
    DataModule2.MySQLqry.Parameters.Clear;
    //DataModule2.MySQLqry.SQL.Text:='INSERT INTO pic3d (Pic3NAME,Pic3D) Value ("?1-12",:PIC);';
    //DataModule2.MySQLqry.SQL.Text:='INSERT INTO partsubtype (ALLPIC3DName,ALLPIC3D) Value ("Р-12",:PIC);';
    DataModule2.MySQLqry.SQL.Text:='UPDATE partsubtype SET ALLPIC3DName = "Р-12",ALLPIC3D = :PIC   WHERE idPartSubTipe = '+DataModule2.PartRec.idPSubtipe.ToString+';';
    DataModule2.MySQLqry.Parameters.ParamByName('PIC').LoadFromStream(PicJPG,ftBlob);
    DataModule2.MySQLqry.ExecSQL;
      //DataModule2.MySQLqry.Parameters.ParamByName('123').LoadFromStream(PicJPG,ftBlob);
    PicJPG.Free;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
    
      Form3.Close;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
      DataModule2.BaseTexData.DshStatus := False;
      DataModule2.BaseTAOData.DshStatus := False;
      DataModule2.TexData.DshStatus := False;
      DataModule2.TAOData.DshStatus := False;
      BitBtn1Click(Sender);
      Altium1Click(Sender);
       { TODO -cData : Obrabotka Datashet ImBase }
              if not AdvStringGrid4.Cells[1,6].IsEmpty then
    begin
                  if Pos('Радиоэлементы',AdvStringGrid4.Cells[1,6])<>0 then
       begin

          DataModule2.BaseTexData.Path:=  AdvStringGrid4.Cells[1,6] ;
          DataModule2.BaseTexData.SubPath := DataModule2.BaseTexData.Path.Remove(LastDelimiter('\',DataModule2.BaseTexData.Path),DataModule2.BaseTexData.Path.Length);
          DataModule2.BaseTexData.SubPath := DataModule2.BaseTexData.SubPath.Remove(0,Pos('Радиоэлементы',DataModule2.BaseTexData.SubPath)+12);
          DataModule2.BaseTexData.Folder := DataModule2.BaseTexData.Path.Remove(Pos('Радиоэлементы',DataModule2.BaseTexData.Path)+12,DataModule2.BaseTexData.Path.Length);
          DataModule2.BaseTexData.DSHFile := DataModule2.BaseTexData.Path.Remove(0,LastDelimiter('\',DataModule2.BaseTexData.Path));
          Edit5.Text := DataModule2.BaseTexData.DSHFile ;
          Edit3.Text := DataModule2.BaseTexData.SubPath;
          Edit4.Text := DataModule2.BaseTexData.Path;
          DataModule2.BaseTexData.DshStatus := True;

       end
       else
       begin
          DataModule2.BaseTexData.DshStatus := False;

       end;

    end
    else
    begin
      DataModule2.BaseTexData.DshStatus := False;
    end;

           { TODO -cData : Obrabotka TAO ImBase }
              if not AdvStringGrid4.Cells[1,7].IsEmpty then
    begin
                  if Pos('ТЭО',AdvStringGrid4.Cells[1,7])<>0 then
       begin

          DataModule2.BaseTAOData.Path:=  AdvStringGrid4.Cells[1,7] ;
          DataModule2.BaseTAOData.SubPath := DataModule2.BaseTAOData.Path.Remove(LastDelimiter('\',DataModule2.BaseTAOData.Path),DataModule2.BaseTAOData.Path.Length);
          DataModule2.BaseTAOData.SubPath := DataModule2.BaseTAOData.SubPath.Remove(0,Pos('ТЭО',DataModule2.BaseTAOData.SubPath)+2);
          DataModule2.BaseTAOData.Folder := DataModule2.BaseTAOData.Path.Remove(Pos('ТЭО',DataModule2.BaseTAOData.Path)+2,DataModule2.BaseTAOData.Path.Length);
          DataModule2.BaseTAOData.DSHFile := DataModule2.BaseTAOData.Path.Remove(0,LastDelimiter('\',DataModule2.BaseTAOData.Path));
          Edit5.Text := DataModule2.BaseTAOData.DSHFile ;
          Edit3.Text := DataModule2.BaseTAOData.SubPath;
          Edit4.Text := DataModule2.BaseTAOData.Path;
          DataModule2.BaseTAOData.DshStatus := True;

       end
       else
       begin
          DataModule2.BaseTAOData.DshStatus := False;

       end;

    end
    else
    begin
      DataModule2.BaseTAOData.DshStatus := False;
    end;



      KategoryTree1.Clear;
      RootNode := KategoryTree1.AddChild(nil);
      TreData := KategoryTree1.GetNodeData(RootNode);
      TreData.SubTipe := 'Типы';
      TreData.ObshNTD := 5;
      DataModule2.Subtqry1.Active:= False;
      DataModule2.Subtqry1.SQL.Clear;
      DataModule2.Subtqry1.SQL.Text := 'SELECT DISTINCT parttype.Name, parttype.idPartType FROM parttype INNER JOIN partsubtype ON '+
       'parttype.idPartType = partsubtype.PartType_idPartType WHERE partsubtype.Klass = "'+advstr2.Cells[1,7]+'";';
      DataModule2.Subtqry1.Active:= True;
      DataModule2.Subtqry1.Open;
                  while not DataModule2.Subtqry1.Eof do
      begin
          ChildNode := KategoryTree1.AddChild(RootNode,nil);
          TreData := KategoryTree1.GetNodeData(ChildNode);
          TreData.idPtipe := DataModule2.Subtqry1.FieldByName('idPartType').Value;
          TreData.SubTipe := DataModule2.Subtqry1.FieldByName('Name').Value;
          TreData.ObshNTD := 5;
            DataModule2.Subtqry2.Active:= False;
            DataModule2.Subtqry2.SQL.Clear;
            DataModule2.Subtqry2.SQL.Text := 'SELECT DISTINCT SubTipe FROM partsubtype WHERE PartType_idPartType = '+
            IntToStr(DataModule2.Subtqry1.FieldByName('idPartType').Value)+';';
            DataModule2.Subtqry2.Active:= True;
            DataModule2.Subtqry2.Open;
                 while not DataModule2.Subtqry2.Eof do
        begin
            ChildNode1 := KategoryTree1.AddChild(ChildNode,nil);
            TreData := KategoryTree1.GetNodeData(ChildNode1);
           // TreData.idPtipe := DataModule2.Subtqry2.FieldByName('idPartSubTipe').Value;
            TreData.SubTipe := DataModule2.Subtqry2.FieldByName('SubTipe').Value;
            TreData.ObshNTD := 5;
                  DataModule2.Subtqry3.Active:= False;
                  DataModule2.Subtqry3.SQL.Clear;
                  DataModule2.Subtqry3.SQL.Text := 'SELECT * FROM partsubtype WHERE PartType_idPartType = '+
                  IntToStr(DataModule2.Subtqry1.FieldByName('idPartType').Value)+' AND SubTipe="'
                  +DataModule2.Subtqry2.FieldByName('SubTipe').Value+'";';
                  DataModule2.Subtqry3.Active:= True;
                  DataModule2.Subtqry3.Open;
                       while not DataModule2.Subtqry3.Eof do
              begin
                  ChildNode2 := KategoryTree1.AddChild(ChildNode1,nil);
                  TreData := KategoryTree1.GetNodeData(ChildNode2);
                  TreData.idPSubtipe := DataModule2.Subtqry3.FieldByName('idPartSubTipe').Value;
                  TreData.SubTipe := DataModule2.Subtqry3.FieldByName('SubTipe1').Value;
                  TreData.ObshNTD := 5;
                        DataModule2.Subtqry4.Active:= False;
                        DataModule2.Subtqry4.SQL.Clear;
                        DataModule2.Subtqry4.SQL.Text := 'SELECT * FROM partsubtype WHERE PartType_idPartType = '+
                        IntToStr(DataModule2.Subtqry1.FieldByName('idPartType').Value)+' AND SubTipe="'
                        +DataModule2.Subtqry2.FieldByName('SubTipe').Value+'" AND SubTipe1="'
                        +DataModule2.Subtqry3.FieldByName('SubTipe1').Value+'";';
                        DataModule2.Subtqry4.Active:= True;
                        DataModule2.Subtqry4.Open;
                             while not DataModule2.Subtqry4.Eof do
                    begin
                        ChildNode3 := KategoryTree1.AddChild(ChildNode2,nil);
                        TreData := KategoryTree1.GetNodeData(ChildNode3);
                        TreData.idPSubtipe := DataModule2.Subtqry4.FieldByName('idPartSubTipe').Value;
                        TreData.SubTipe := DataModule2.Subtqry4.FieldByName('SubTipe2').Value;
                        TreData.ObshNTD := DataModule2.Subtqry3.FieldByName('ObshNTD').Value;  { TODO -cTree Viev : Извлечение ObshNTD из базы }
                                DataModule2.Subtqry5.Active:= False;
                                DataModule2.Subtqry5.SQL.Clear;
                                DataModule2.Subtqry5.SQL.Text := 'SELECT * FROM partsubtype WHERE PartType_idPartType = '+
                                IntToStr(DataModule2.Subtqry1.FieldByName('idPartType').Value)+' AND SubTipe="'
                                +DataModule2.Subtqry2.FieldByName('SubTipe').Value+
                                '" AND SubTipe1="'+DataModule2.Subtqry3.FieldByName('SubTipe1').Value+
                                '" AND SubTipe2="'+DataModule2.Subtqry4.FieldByName('SubTipe2').Value+'";';
                                DataModule2.Subtqry5.Active:= True;
                                DataModule2.Subtqry5.Open;
                                while not DataModule2.Subtqry5.Eof do
                                begin
                                        ChildNode4 := KategoryTree1.AddChild(ChildNode3,nil);
                                        TreData := KategoryTree1.GetNodeData(ChildNode4);
                                        TreData.idPSubtipe := DataModule2.Subtqry4.FieldByName('idPartSubTipe').Value;
                                        TreData.SubTipe := DataModule2.Subtqry4.FieldByName('SubTipe3').Value;
                                        TreData.Klass := DataModule2.Subtqry4.FieldByName('Klass').Value;
                                        TreData.ObshNTD := DataModule2.Subtqry4.FieldByName('ObshNTD').Value;
                                                 if not DataModule2.Subtqry4.FieldByName('Pic3D_idPic3D').IsNull then
                                        begin
                                          TreData.PicJ := DataModule2.Subtqry4.FieldByName('Pic3D_idPic3D').Value;
                                        end;
                                        DataModule2.Subtqry5.Next;
                                        end;



                        DataModule2.Subtqry4.Next;
                    end;




                  DataModule2.Subtqry3.Next;
              end;



            DataModule2.Subtqry2.Next;

        end;

           DataModule2.Subtqry1.Next;
      end;

          KategoryTree1.FullExpand();
          DataModule2.DataSource1.DataSet.First;
          SpisokTree2.Clear;
          while not DataModule2.DataSource1.DataSet.Eof do
     begin
        //chklst1.AddItem(DataModule2.DataSource1.DataSet.FieldByName('SpisokIma').Value,Sender);
        ChildNode4 := SpisokTree2.AddChild(nil);
        TreSpisok := SpisokTree2.GetNodeData(ChildNode4);
        TreSpisok.idSpis :=   DataModule2.DataSource1.DataSet.FieldByName('idSpickiRazr').Value;
        TreSpisok.SpisTipe := DataModule2.DataSource1.DataSet.FieldByName('SpisokIma').Value;
        DataModule2.DataSource1.DataSet.Next;
     end;

end;

procedure TForm3.chklst1ClickCheck(Sender: TObject);
begin
       BitBtn6.Enabled := True;
end;

procedure TForm3.dblkcbbFirmNAMEClick(Sender: TObject);
begin
       DataModule2.PartRec.idFirmsRaz:= dblkcbbFirmNAME.KeyValue;
            if chk2.Checked then
      begin
        DBLookupComboBox3.KeyValue:= DBLookupComboBox2.KeyValue;
        DBLookupComboBox7.KeyValue:= dblkcbbFirmNAME.KeyValue;
        DBLookupComboBox7Click(Sender);
      end;
end;

procedure TForm3.DBLookupComboBox1CloseUp(Sender: TObject);
begin
         DataModule2.MySQLqry.Active:=False;
        DataModule2.MySQLqry.SQL.Clear;
        //DataModule2.MySQLqry.
        DataModule2.MySQLqry.SQL.Text := 'SELECT * FROM Carts WHERE CARTNUMBER="'+DBLookupComboBox1.Text+'";';
        DataModule2.MySQLqry.Active:=True;
        DataModule2.MySQLqry.Open;
        mmo1.Text:=  DataModule2.MySQLqry.FieldByName('CARTNAME').Value;
        DataModule2.PartRec.idCARDS:= DBLookupComboBox1.KeyValue;
        BitBtn6.Enabled := True;


end;

procedure TForm3.DBLookupComboBox7Click(Sender: TObject);
begin
      DataModule2.PartRec.idFirmsIz:= DBLookupComboBox7.KeyValue;
      BitBtn6.Enabled := True;
end;

procedure CheckImbaseConnection;
var
  Status: ImBaseLoadStatus;
begin
  if (ImBase = nil) then
  begin
    ImBase := CoImbaseApplication.Create;
    while true do
    begin
      Status := ImBase.Status;
      Application.ProcessMessages;
      if Status = IST_READY then
        Break;
    end;
  end;

end;


procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
         KategoryTree1.Clear;
         SpisokTree2.Clear;
         Image1.Picture:= nil;
         GridClear(advstr2,14);
         GridClear(AdvStringGrid4,7);
         GridClear(AdvStringGrid13,4);
         GridClear(AdvStringGrid8,4);
         GridClear(AdvStringGrid11,4);
         GridClear(AdvStringGrid12,15);
         AdvPageControl1.ActivePageIndex:=0;

         DBLookupComboBox1.KeyValue:=0;
         DBLookupComboBox2.KeyValue:=0;
         dblkcbbFirmNAME.KeyValue:=0;
         DBLookupComboBox3.KeyValue:=0;
         DBLookupComboBox7.KeyValue:=0;
         datalook.KeyValue:=0;
         TAOlook.KeyValue:=0;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
    CheckImbaseConnection;
    Lst := TStringList.Create;
    InDatBase := CoImDataBase.Create;
    KategoryTree1.NodeDataSize := SizeOf(TAttrValue);
     SpisokTree2.NodeDataSize :=  SizeOf(TSpisValue);
     SpisokTree2.TreeOptions.MiscOptions := SpisokTree2.TreeOptions.MiscOptions+[toCheckSupport];
end;
procedure TForm3.ImBase1Click(Sender: TObject);
begin
  KeyList := AdvStringGrid4.Cells[1,1] ;
  InDatBase.ShowKeysInfo(KeyList);
end;

procedure TForm3.Imbase2Click(Sender: TObject);
begin
   ShellExecute(handle, 'open', PChar(AdvStringGrid4.Cells[1, 8]), nil,nil, SW_SHOW);
end;

procedure TForm3.ImBase3Click(Sender: TObject);
begin
   ShellExecute(handle, 'open', PChar(AdvStringGrid4.Cells[1, 9]), nil,nil, SW_SHOW);
end;

procedure TForm3.KategoryTree1GetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
begin
        TreData := Sender.GetNodeData(Node);
   case Column of
      0:
      begin
        case TextType of

          ttNormal: CellText := TreData.SubTipe;
          ttStatic: CellText := TreData.idPtipe.ToString;
        end;
        CellText := TreData.SubTipe ;
      end;

      1:	begin
        case TextType of

          ttNormal: CellText := TreData.Klass;
          ttStatic: CellText := TreData.idPSubtipe.ToString;
        end;

      end;
      2:		begin
        case TextType of
          ttNormal:
                begin

                              if TreData.ObshNTD<>5 then
                  begin
                    CellText := TreData.ObshNTD.ToString;
                  end
                  else
                  begin
                    CellText:= '';
                  end;
                end;
          ttStatic: CellText := '';
        end;

      end;
      3:		begin
        case TextType of

          ttNormal: CellText:= '';
          ttStatic: CellText := '';
        end;

      end;

    end;
end;
procedure TForm3.KategoryTree1NodeClick(Sender: TBaseVirtualTree;
  const HitInfo: THitInfo);
begin

        if KategoryTree1.GetNodeLevel(KategoryTree1.FocusedNode)=5 then
    begin
          ChildNode4 := KategoryTree1.FocusedNode;
          TreData := KategoryTree1.GetNodeData(KategoryTree1.FocusedNode);
          advstr2.Cells[1,5]:= TreData.SubTipe;
          advstr2.Cells[1,7]:= TreData.Klass;
          advstr2.Cells[1,14]:= TreData.ObshNTD.ToString;
          DataModule2.PartRec.idPSubtipe:= TreData.idPSubtipe;
          DataModule2.PartRec.ObshNTD:= TreData.ObshNTD;


          DataModule2.MySQLqry.Active:=False;
          DataModule2.MySQLqry.SQL.Clear;
          DataModule2.MySQLqry.SQL.Text:='SELECT ALLPIC3DName,ALLPIC3D FROM partsubtype WHERE idPartSubTipe = '+
          TreData.idPSubtipe.ToString+';'; //(IndPIC3DName,IndividualPIC3D) Value ("Р1-12",:PIC);';
          DataModule2.MySQLqry.Active:=True;
          DataModule2.MySQLqry.ExecSQL;
              if not DataModule2.MySQLqry.Eof then
         begin
          PicJPG := TMemoryStream.Create;
          TBlobField(DataModule2.MySQLqry.FieldByName('ALLPIC3D')).SaveToStream(PicJPG);
          PicJPG.Position:=0;
          jp := TJPEGImage.Create;
          jp.LoadFromStream(PicJPG);
          Image1.Picture.Graphic :=jp;
          PicJPG.Free;
          jp.Free;
          Label11.Caption:= DataModule2.MySQLqry.FieldByName('ALLPIC3DName').AsString;
          //Label8.Caption := TBlobField(DataModule2.MySQLqry.FieldByName('ALLPIC3DName')).SaveToStream(PicJPG);
         end
         else
         begin
              Image1.Picture := nil;
         end;

       ChildNode3 := ChildNode4.Parent;
       TreData := KategoryTree1.GetNodeData(ChildNode3);
       advstr2.Cells[1,4]:= TreData.SubTipe;
       ChildNode2 := ChildNode3.Parent;
       TreData := KategoryTree1.GetNodeData(ChildNode2);
       advstr2.Cells[1,3]:= TreData.SubTipe;
       ChildNode1 := ChildNode2.Parent;
       TreData := KategoryTree1.GetNodeData(ChildNode1);
       advstr2.Cells[1,2]:= TreData.SubTipe;
       ChildNode := ChildNode1.Parent;
       TreData := KategoryTree1.GetNodeData(ChildNode);
       advstr2.Cells[1,1]:= TreData.SubTipe;
       BitBtn6.Enabled:= True;
//       RootNode := ChildNode.Parent;
//       TreData := KategoryTree1.GetNodeData(RootNode);
//       advstr2.Cells[1,1]:= TreData.SubTipe;
    end;

end;

procedure TForm3.N3Click(Sender: TObject);
begin
     ShellExecute(handle, 'open', PChar(AdvStringGrid4.Cells[1, 6]),nil,nil, SW_SHOW);
end;

procedure TForm3.N4Click(Sender: TObject);
begin
     ShellExecute(handle, 'open', PChar(AdvStringGrid4.Cells[1, 7]),nil,nil,
       SW_SHOW);
end;



procedure TForm3.N5Click(Sender: TObject);
begin
        SpisNode := SpisokTree2.GetFirst;
  while Assigned(SpisNode) do
  begin



          if SpisNode.CheckState=csCheckedNormal then
     begin
        MessageDlg('Узел  выбран ',  mtInformation, [mbOK], 0);
     end
     else
     begin
        MessageDlg('Узел  свободен ',  mtInformation, [mbOK], 0);
     end;
     SpisNode := SpisokTree2.GetNext(SpisNode);
  end;

end;

procedure TForm3.PocData(DatashetName,SubPath,Path:string);
begin     { TODO : Вставка записи Data в Mysql func }

   //**************** Начало нового блока************
  SQLsel := 'SELECT * FROM datashets WHERE DatashetName = "'+  DatashetName+'";';
  SQLins := 'INSERT INTO datashets (DatashetName,DatashetPath,DatashetSubPath,Person_idPerson,Data_tame) Value ("'+
  DatashetName+ '","'+ Path.Replace('\','\\')+'","'+SubPath.Replace('\','\\')+'",'+ DataModule2.PartRec.idPerson.ToString+',NOW());';
  DataModule2.PartRec.idData :=  DataModule2.InsertRec(SQLsel,SQLins,'idDatashets',False);
   //**************** Конец нового блока************

   //**************** Начало нового блока************
  SQLsel := 'SELECT * FROM datashets WHERE DatashetName = "'+  DatashetName+'";';
  SQLins := 'INSERT INTO datashets (DatashetName,DatashetPath,DatashetSubPath,Person_idPerson,Data_tame) Value ("'+
  DatashetName+ '","'+ Path.Replace('\','\\')+'","'+SubPath.Replace('\','\\')+'",'+ DataModule2.PartRec.idPerson.ToString+',NOW());';
  DataModule2.PartRec.idData :=  DataModule2.InsertRec(SQLsel,SQLins,'idDatashets',False);
   //**************** Конец нового блока************



end;

procedure TForm3.SpisokTree2GetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
begin
        TreSpisok := Sender.GetNodeData(Node);
   case Column of
      0:
      begin

        CellText := '';
      end;

      1:
      begin

        CellText := TreSpisok.SpisTipe ;
      end;


    end;
end;

procedure TForm3.SpisokTree2InitNode(Sender: TBaseVirtualTree; ParentNode,
  Node: PVirtualNode; var InitialStates: TVirtualNodeInitStates);
begin
   Node.CheckType := ctCheckBox;
end;

procedure TForm3.SpisokTree2NodeClick(Sender: TBaseVirtualTree;
  const HitInfo: THitInfo);
begin
      BitBtn6.Enabled := True;
end;

procedure TForm3.PCADComp(PCAD: TAdvStringGrid);
 begin
                        { TODO -cInsert: Атрибуты PCAD Функция}
          //**************** Начало Атрибуты Pcad***********
          DataModule2.PCADrec.Status := False;

          if PCAD.Cells[1,1].IsEmpty or PCAD.Cells[1,2].IsEmpty or PCAD.Cells[1,3].IsEmpty or PCAD.Cells[1,4].IsEmpty then
  begin
         DataModule2.PCADrec.Status := False;
         DataModule2.PCADrec.idPCADLiBparts :=-1;
  end
  else
  begin

      //**************** Начало нового блока PCADLibName************
      SQLsel:= 'SELECT * FROM PCADLib WHERE PCADLibName = "'+  PCAD.Cells[1,4]+'";';
      SQLins:= 'INSERT INTO PCADLib (PCADLibName) Value ("'+PCAD.Cells[1,4]+'");';
      DataModule2.PCADrec.idLib :=  DataModule2.InsertRec(SQLsel,SQLins,'idPCADLib',False);

			//**************** Начало нового блока************

      //**************** Начало нового блока PCADSymbols************
      SQLsel:= 'SELECT * FROM PCADSymbols WHERE Symbol = "' +  PCAD.Cells[1,2]+'" AND PCADLib_idPCADLib='+DataModule2.PCADrec.idLib.ToString+';';
      SQLins := 'INSERT INTO PCADSymbols (Symbol,PCADLib_idPCADLib)	Value ("'+ PCAD.Cells[1,2]+ '",'+DataModule2.PCADrec.idLib.ToString+');';
      DataModule2.PCADrec.idSymb :=  DataModule2.InsertRec(SQLsel,SQLins,'idSymbols',False);
      //**************** Конец нового блока************
      //**************** Начало нового блока PCADPattern************
      SQLsel:= 'SELECT * FROM PCADPattern WHERE PatternName = "' +  PCAD.Cells[1,3]+'" AND PCADLib_idPCADLib='+DataModule2.PCADrec.idLib.ToString+';';
      SQLins := 'INSERT INTO PCADPattern (PatternName,PCADLib_idPCADLib)	Value ("'+  PCAD.Cells[1,3]+'",'+DataModule2.PCADrec.idLib.ToString+');';
      DataModule2.PCADrec.idPatern :=  DataModule2.InsertRec(SQLsel,SQLins,'idPattern',False);
      //**************** Конец нового блока************

      //**************** Начало нового блока LibPCADpart************
      SQLsel:= 'SELECT * FROM PCADLiBparts  WHERE PCADSymbols_idSymbols = ' + DataModule2.PCADrec.idSymb.ToString + ' AND PCADPattern_idPattern='+DataModule2.PCADrec.idPatern.ToString+
      ' AND PCADLib_idPCADLib='+ DataModule2.PCADrec.idLib.ToString+' AND PCADLiBpartName="'+PCAD.Cells[1,1]+'";';
      SQLins := 'INSERT INTO PCADLiBparts (PCADLiBpartName,PCADSymbols_idSymbols,PCADPattern_idPattern,PCADLib_idPCADLib)	Value ("'+PCAD.Cells[1,1]+'",'
      + DataModule2.PCADrec.idSymb.ToString +','+DataModule2.PCADrec.idPatern.ToString+','+DataModule2.PCADrec.idLib.ToString+');';
      DataModule2.PCADrec.idComp :=  DataModule2.InsertRec(SQLsel,SQLins,'idPCADLiBparts',False);
      //**************** Конец нового блока************
      DataModule2.PCADrec.Status := True;


  end;

 end;
procedure TForm3.AltiumComp(Altium: TAdvStringGrid);
 begin
        { TODO : Атрибуты Altium }
          //**************** Начало Атрибуты Altium***********
        DataModule2.Altiumrec.Status := False;

           if Altium.Cells[1,1].IsEmpty or Altium.Cells[1,2].IsEmpty or Altium.Cells[1,3].IsEmpty or Altium.Cells[1,4].IsEmpty then
  begin
         DataModule2.Altiumrec.Status := False;
         DataModule2.Altiumrec.idComp := -1;
  end
  else
  begin

          //**************** Начало нового блока LibPaths************
          SQLsel:= 'SELECT * FROM LibPaths WHERE LibPath = "' +  Altium.Cells[1,4]+'";';
          SQLins := 'INSERT INTO LibPaths (LibPath)	Value ("'+  Altium.Cells[1,4]+'");';
          DataModule2.Altiumrec.idLibPath :=  DataModule2.InsertRec(SQLsel,SQLins,'idLibPath',False);
          //**************** Конец нового блока*************************

          //**************** Начало нового блока LibRef************
          SQLsel:= 'SELECT * FROM LibRefs WHERE LibRef = "'+  Altium.Cells[1,3]+'" AND LibPaths_idLibPath='+DataModule2.Altiumrec.idLibPath.ToString+';';
          SQLins := 'INSERT INTO LibRefs (LibRef,LibPaths_idLibPath) Value ("'+Altium.Cells[1,3]+'",'+DataModule2.Altiumrec.idLibPath.ToString+');';
          DataModule2.Altiumrec.idLibRef :=  DataModule2.InsertRec(SQLsel,SQLins,'idLibRef',False);
          //**************** Конец нового блока*************************


          //**************** Начало нового блока FootprPaths************
          SQLsel:= 'SELECT * FROM FootprPaths WHERE FootprPath = "' +  Altium.Cells[1,2]+'";';
          SQLins := 'INSERT INTO FootprPaths (FootprPath)	Value ("'+ Altium.Cells[1,2]+ '");';
          DataModule2.Altiumrec.idFootPath :=  DataModule2.InsertRec(SQLsel,SQLins,'idFootprPath',False);
          //**************** Конец нового блока*********************

          //**************** Начало нового блока FootprRefs************
          SQLsel:= 'SELECT * FROM FootprRefs WHERE FootprRef = "' + Altium.Cells[1,1] + '" AND FootprPaths_idFootprPath='+
          DataModule2.Altiumrec.idFootPath.ToString+';';
          SQLins := 'INSERT INTO FootprRefs (FootprRef,FootprPaths_idFootprPath) Value ("'+ Altium.Cells[1,1]+'",'+DataModule2.Altiumrec.idFootPath.ToString+');';
          DataModule2.Altiumrec.idFootprRef :=  DataModule2.InsertRec(SQLsel,SQLins,'idFootprRef',False);
          //**************** Конец нового блока***********************

          //**************** Начало нового блока PCADLiBparts************
          SQLsel:= 'SELECT * FROM AltiumParts WHERE LibRefs_idLibRef= ' + DataModule2.Altiumrec.idLibRef.ToString + ' AND FootprRefs_idFootprRef='+
          DataModule2.Altiumrec.idLibRef.ToString+' AND AltiumPart="'+Altium.Cells[1,1]+'";';
          SQLins := 'INSERT INTO AltiumParts (LibRefs_idLibRef,FootprRefs_idFootprRef,AltiumPart)	Value ('+ DataModule2.Altiumrec.idLibRef.ToString +','
          +DataModule2.Altiumrec.idFootprRef.ToString+',"'+Altium.Cells[1,1]+'");';
          DataModule2.Altiumrec.idComp :=  DataModule2.InsertRec(SQLsel,SQLins,'idAltiumPart',False);
          //**************** Конец нового блока***************************
          DataModule2.Altiumrec.Status := True;

  end;



 end;
procedure TForm3.CadComp(PCAD, Altium: TAdvStringGrid);
begin                  { TODO -cInsert: Атрибуты PCAD }
          //**************** Начало Атрибуты Pcad***********

                 PCADComp(PCAD);
                       { TODO -cInsert: Атрибуты Altium }
          //**************** Начало Атрибуты Altium***********
                 AltiumComp(Altium);

//
//          DataModule2.Altiumrec.Status := False;
//
//           if Altium.Cells[1,1].IsEmpty or Altium.Cells[1,2].IsEmpty or Altium.Cells[1,3].IsEmpty or Altium.Cells[1,4].IsEmpty then
//  begin
//         DataModule2.Altiumrec.Status := False;
//  end
//  else
//  begin
//
//          //**************** Начало нового блока LibPaths************
//          SQLsel:= 'SELECT * FROM LibPaths WHERE LibPath = "' +  Altium.Cells[1,4]+'";';
//          SQLins := 'INSERT INTO LibPaths (LibPath)	Value ("'+  Altium.Cells[1,4]+'");';
//          DataModule2.Altiumrec.idLibPath :=  DataModule2.InsertRec(SQLsel,SQLins,'idLibPath',False);
//          //**************** Конец нового блока*************************
//
//          //**************** Начало нового блока LibRef************
//          SQLsel:= 'SELECT * FROM LibRefs WHERE LibRef = "'+  Altium.Cells[1,3]+'" AND LibPaths_idLibPath='+DataModule2.Altiumrec.idLibPath.ToString+';';
//          SQLins := 'INSERT INTO LibRefs (LibRef,LibPaths_idLibPath) Value ("'+Altium.Cells[1,3]+'",'+DataModule2.Altiumrec.idLibPath.ToString+');';
//          DataModule2.Altiumrec.idLibRef :=  DataModule2.InsertRec(SQLsel,SQLins,'idLibRef',False);
//          //**************** Конец нового блока*************************
//
//
//          //**************** Начало нового блока FootprPaths************
//          SQLsel:= 'SELECT * FROM FootprPaths WHERE FootprPath = "' +  Altium.Cells[1,2]+'";';
//          SQLins := 'INSERT INTO FootprPaths (FootprPath)	Value ("'+ Altium.Cells[1,2]+ '");';
//          DataModule2.Altiumrec.idFootPath :=  DataModule2.InsertRec(SQLsel,SQLins,'idFootprPath',False);
//          //**************** Конец нового блока*********************
//
//          //**************** Начало нового блока FootprRefs************
//          SQLsel:= 'SELECT * FROM FootprRefs WHERE FootprRef = "' + Altium.Cells[1,1] + '" AND FootprPaths_idFootprPath='+
//          DataModule2.Altiumrec.idFootPath.ToString+';';
//          SQLins := 'INSERT INTO FootprRefs (FootprRef,FootprPaths_idFootprPath) Value ("'+ Altium.Cells[1,1]+'",'+DataModule2.Altiumrec.idFootPath.ToString+');';
//          DataModule2.Altiumrec.idFootprRef :=  DataModule2.InsertRec(SQLsel,SQLins,'idFootprRef',False);
//          //**************** Конец нового блока***********************
//
//          //**************** Начало нового блока PCADLiBparts************
//          SQLsel:= 'SELECT * FROM AltiumParts WHERE LibRefs_idLibRef= ' + DataModule2.Altiumrec.idLibRef.ToString + ' AND FootprRefs_idFootprRef='+
//          DataModule2.Altiumrec.idLibRef.ToString+' AND AltiumPart="'+Altium.Cells[1,1]+'";';
//          SQLins := 'INSERT INTO AltiumParts (LibRefs_idLibRef,FootprRefs_idFootprRef,AltiumPart)	Value ('+ DataModule2.Altiumrec.idLibRef.ToString +','
//          +DataModule2.Altiumrec.idFootprRef.ToString+',"'+Altium.Cells[1,1]+'");';
//          DataModule2.Altiumrec.idComp :=  DataModule2.InsertRec(SQLsel,SQLins,'idAltiumPart',False);
//          //**************** Конец нового блока***************************
//          DataModule2.Altiumrec.Status := True;
//
//  end;

                  if (DataModule2.PCADrec.idComp<1) and (DataModule2.Altiumrec.idComp<1) then
         begin
            SQLsel := 'SELECT * FROM CADkomponents WHERE AltiumParts_idAltiumPart IS NULL  AND PCADLiBparts_idPCADLiBparts = IS NULL;';
            SQLins := 'INSERT INTO CADkomponents (AltiumParts_idAltiumPart,PCADLiBparts_idPCADLiBparts,PartNumber,Person_idPerson,CADkomponentDATE)	'+
            'Value (NULL,NULL,"AltiumNOT_PCAdNOT",'+DataModule2.PartRec.idPerson.ToString+',NOW());';
         end
         else
         begin
                    if  DataModule2.Altiumrec.idComp<1 then
           begin
            SQLsel := 'SELECT * FROM CADkomponents WHERE AltiumParts_idAltiumPart IS NULL  AND PCADLiBparts_idPCADLiBparts = '+
                  DataModule2.PCADrec.idComp.ToString+';';
            SQLins := 'INSERT INTO CADkomponents (AltiumParts_idAltiumPart,PCADLiBparts_idPCADLiBparts,PartNumber,Person_idPerson,CADkomponentDATE) '+
            'Value (NULL,'+DataModule2.PCADrec.idComp.ToString+',"AltiumNOT_'+PCAD.Cells[1,1]+'",'+DataModule2.PartRec.idPerson.ToString+',NOW());';
           end
           else
           begin
                    if DataModule2.PCADrec.idComp<1 then
                begin
                  SQLsel := 'SELECT * FROM CADkomponents WHERE AltiumParts_idAltiumPart = ' + DataModule2.Altiumrec.idComp.ToString +
                         ' AND PCADLiBparts_idPCADLiBparts IS NULL;';
                  SQLins := 'INSERT INTO CADkomponents (AltiumParts_idAltiumPart,PCADLiBparts_idPCADLiBparts,PartNumber,Person_idPerson,CADkomponentDATE) '+
                  'Value ('+ DataModule2.Altiumrec.idComp.ToString +',NULL,"'+Altium.Cells[1,1]+'_PCAdNOT",'+DataModule2.PartRec.idPerson.ToString+',NOW());';
                end
                else
                begin
                  SQLsel := 'SELECT * FROM CADkomponents WHERE AltiumParts_idAltiumPart = ' + DataModule2.Altiumrec.idComp.ToString +
                         ' AND PCADLiBparts_idPCADLiBparts = '+DataModule2.PCADrec.idComp.ToString+';';
                  SQLins := 'INSERT INTO CADkomponents (AltiumParts_idAltiumPart,PCADLiBparts_idPCADLiBparts,PartNumber,Person_idPerson,CADkomponentDATE)'+
                  ' Value ('+DataModule2.Altiumrec.idComp.ToString +','+DataModule2.Altiumrec.idFootprRef.ToString+',"'+Altium.Cells[1,1]+'_'+PCAD.Cells[1,1]+
                  '",'+DataModule2.PartRec.idPerson.ToString+',NOW());';

                end;

           end;

         end;


          DataModule2.PartRec.idCADkomponents := DataModule2.InsertRec(SQLsel,SQLins,'idCADkomponents',False);
          //**************** Конец нового блока***************************

end;

    end.
