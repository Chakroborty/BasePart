unit RedDataKRR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  AdvObj, BaseGrid, AdvGrid, AdvGridWorkbook,DM, Vcl.DBCtrls;

type
  TRedaktorDataKRR = class(TForm)
    BitBtn1: TBitBtn;
    AdvStringGrid1: TAdvStringGrid;
    BitBtn2: TBitBtn;
    Param: TEdit;
    Label1: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    AdvStringGrid2: TAdvStringGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure DBLookupComboBox2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RedaktorDataKRR: TRedaktorDataKRR;
   I:Integer;
implementation

{$R *.dfm}

procedure TRedaktorDataKRR.BitBtn1Click(Sender: TObject);
begin

     CloseModal;
      ModalResult := mrOK;
end;

procedure TRedaktorDataKRR.BitBtn2Click(Sender: TObject);
begin
       AdvStringGrid1.SaveToXLS(DataModule2.OpenDialog1.FileName+'1.xls',True);
end;

procedure TRedaktorDataKRR.DBLookupComboBox2CloseUp(Sender: TObject);
begin
     AdvStringGrid1.Clear;
          for I := 0 to 3 do
     begin
       AdvStringGrid1.ColWidths[I]:=120;
     end;
       AdvStringGrid1.ColWidths[4]:=25;
     AdvStringGrid1.MergeCells(0,0,11,1);
     AdvStringGrid1.Alignments[0,0] := taRightJustify;

     AdvStringGrid1.MergeCells(0,1,11,1);
     AdvStringGrid1.RowHeights[1] := 30;
     AdvStringGrid1.Alignments[0,1] := taCenter;
     AdvStringGrid1.Cells[0,2] := 'Позиционное обозначение';

     AdvStringGrid1.MergeCells(0,2,5,1);
     AdvStringGrid1.RowHeights[2] := 30;
     AdvStringGrid1.Alignments[0,2]:=taCenter;

     AdvStringGrid1.MergeCells(0,3,5,1);
     AdvStringGrid1.Cells[0,3] := 'Наименование изделия';
     AdvStringGrid1.RowHeights[3] := 30;
     AdvStringGrid1.Alignments[0,3]:=taCenter;


     AdvStringGrid1.MergeCells(0,4,5,1);
     AdvStringGrid1.Cells[0,4] := 'Режим работы';
     AdvStringGrid1.RowHeights[4] := 30;
     AdvStringGrid1.Alignments[0,4]:=taCenter;

     AdvStringGrid1.MergeCells(5,2,2,1);
     AdvStringGrid1.MergeCells(7,2,2,1);
     AdvStringGrid1.MergeCells(9,2,2,1);
     AdvStringGrid1.MergeCells(5,3,2,1);
     AdvStringGrid1.MergeCells(7,3,2,1);
     AdvStringGrid1.MergeCells(9,3,2,1);

             I :=5;
            while I<10 do
      begin
         AdvStringGrid1.ColWidths[I]:=80;
         AdvStringGrid1.ColWidths[I+1]:=80;
         AdvStringGrid1.Cells[I,4]:='в схеме';
         AdvStringGrid1.Alignments[I,4] := taCenter;
         AdvStringGrid1.Cells[I+1,4]:='по НТД';
         AdvStringGrid1.Alignments[I+1,4] := taCenter;

         I:=I+2;
      end;



        DataModule2.MySQLqry.Active:=False;
        DataModule2.MySQLqry.SQL.Clear;
        //DataModule2.MySQLqry.
        DataModule2.MySQLqry.SQL.Text := 'SELECT * FROM Carts WHERE CARTNUMBER="'+DBLookupComboBox2.Text+'";';
        DataModule2.MySQLqry.Active:=True;
        DataModule2.MySQLqry.Open;
        //AdvStringGrid1.MergeCells(0,0,21,1);
        AdvStringGrid1.Cells[0,0]:= 'Форма ' + DataModule2.MySQLqry.FieldByName('CARTNUMBER').Value;

        //AdvStringGrid1.MergeCells(0,1,21,2);
        AdvStringGrid1.Cells[0,1]:=  DataModule2.MySQLqry.FieldByName('CARTNAME').Value;




             I := 0;
            while (I<31) and (not DataModule2.MySQLqry.Fields.Fields[I+3].IsNull) do
      begin
         AdvStringGrid1.Cells[4,I+5]:= (I+1).ToString;
         AdvStringGrid1.MergeCells(0,I+5,4,1);
         AdvStringGrid1.Alignments[4,I+5] := taCenter;
         AdvStringGrid1.Cells[3,I+5]:= DataModule2.MySQLqry.Fields.Fields[I+3].Value;
          I:=I+1;
      end;

       //  AdvStringGrid1.MergeCells(0,I+6,12,AdvStringGrid1.RowCount-I-6);

end;

procedure TRedaktorDataKRR.DBLookupComboBox2KeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
           DBLookupComboBox2CloseUp(Sender);
end;

end.
