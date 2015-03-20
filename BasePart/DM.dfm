object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 602
  Width = 1030
  object OpenDialog1: TOpenDialog
    Left = 86
    Top = 8
  end
  object DataSource3: TDataSource
    DataSet = Subtqry2
    Enabled = False
    Left = 688
    Top = 8
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Strani_idStrani'
    MasterFields = 'idStrani'
    MasterSource = dsStrana1
    TableName = 'firms'
    Left = 544
    Top = 184
  end
  object DataSource2: TDataSource
    DataSet = Subtqry1
    Left = 560
    Top = 8
  end
  object dsStrana1: TDataSource
    AutoEdit = False
    DataSet = ADOTable1
    Left = 640
    Top = 128
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'strani'
    Left = 544
    Top = 128
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=1234;Persist Security Info=True;User' +
      ' ID=root;Extended Properties="DSN=Baza2900;SERVER=10.29.31.7;UID' +
      '=root;PWD=1234;DATABASE=eriparameters;PORT=3306"'
    LoginPrompt = False
    Left = 200
    Top = 8
  end
  object MySQLqry: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 288
    Top = 8
  end
  object KRRSource: TDataSource
    DataSet = KRRtable
    Left = 272
    Top = 88
  end
  object KRRtable: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'carts'
    Left = 200
    Top = 88
  end
  object KRRSource2: TDataSource
    DataSet = KRRtable
    Left = 336
    Top = 88
  end
  object Subtqry1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 496
    Top = 8
  end
  object DataSource4: TDataSource
    DataSet = SpiskiTable
    Left = 688
    Top = 56
  end
  object SpiskiTable: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'spiskirazr'
    Left = 624
    Top = 56
  end
  object Subtqry2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource2
    Parameters = <
      item
        Name = 'SubTipe'
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = 'idPartType'
        DataType = ftWideString
        Size = 1
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT DISTINCT SubTipe1 FROM partsubtype WHERE'
      ' SubTipe = :SubTipe and PartType_idPartType = :idPartType;')
    Left = 624
    Top = 8
  end
  object Subtqry3: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DataSource2
    Parameters = <
      item
        Name = 'SubTipe'
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = 'idPartType'
        DataType = ftWideString
        Size = 1
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT DISTINCT SubTipe1 FROM partsubtype WHERE'
      ' SubTipe = :SubTipe and PartType_idPartType = :idPartType;')
    Left = 760
    Top = 8
  end
  object Subtqry4: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 816
    Top = 8
  end
  object Subtqry5: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 880
    Top = 8
  end
  object Firmds1: TDataSource
    AutoEdit = False
    DataSet = ADOTable3
    Left = 640
    Top = 184
  end
  object Firmds2: TDataSource
    AutoEdit = False
    DataSet = Firmtbl1
    Left = 832
    Top = 184
  end
  object dsStrana2: TDataSource
    AutoEdit = False
    DataSet = Strantbl1
    Left = 824
    Top = 128
  end
  object Strantbl1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'strani'
    Left = 768
    Top = 128
  end
  object Firmtbl1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Strani_idStrani'
    MasterFields = 'idStrani'
    MasterSource = dsStrana2
    TableName = 'firms'
    Left = 768
    Top = 184
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    LockType = ltReadOnly
    TableName = 'spiskirazr'
    Left = 544
    Top = 256
  end
  object DataSource1: TDataSource
    DataSet = ADOTable2
    Left = 640
    Top = 256
  end
  object Datatbl: TADOTable
    Active = True
    AutoCalcFields = False
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'datashets'
    Left = 544
    Top = 320
  end
  object Taotbl: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'tao'
    Left = 544
    Top = 384
  end
  object SHetds: TDataSource
    DataSet = Datatbl
    Left = 640
    Top = 320
  end
  object TAOds: TDataSource
    DataSet = Taotbl
    Left = 640
    Top = 384
  end
end
