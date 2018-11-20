object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 300
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Tag = 3
    Left = -8
    Top = 0
    Width = 400
    Height = 200
    ColCount = 3
    FixedCols = 0
    TabOrder = 0
    ColWidths = (
      64
      64
      64)
  end
  object Button1: TButton
    Left = 440
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=sa;Persist Security Info=True;User ' +
      'ID=sa;Initial Catalog=school;Data Source=YOUHAO-PC;Use Procedure' +
      ' for Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ' +
      'ID=YOUHAO-PC;Use Encryption for Data=False;Tag with column colla' +
      'tion when possible=False'
    Provider = 'SQLOLEDB.1'
    Left = 424
    Top = 48
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from course')
    Left = 432
    Top = 120
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = ADOQuery1
    ScopeMappings = <>
    Left = 312
    Top = 152
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    UseAppManager = True
    Left = 20
    Top = 5
    object LinkGridToDataSource1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      AutoBufferCount = False
      Columns = <
        item
          MemberName = 'name'
        end
        item
          MemberName = 'age'
        end
        item
          MemberName = 'score'
        end>
    end
  end
end
