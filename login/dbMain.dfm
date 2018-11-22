object db: Tdb
  OldCreateOrder = False
  Height = 524
  Width = 781
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=sa;Persist Security Info=True;User ' +
      'ID=sa;Initial Catalog=school;Data Source=YOUHAO-PC'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 88
    Top = 72
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 208
    Top = 72
  end
  object adminTable: TDataSource
    DataSet = ADOQuery1
    Left = 296
    Top = 72
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from progress')
    Left = 208
    Top = 152
  end
  object dsSiteTemp: TDataSource
    DataSet = ADOQuery2
    Left = 304
    Top = 152
  end
end
