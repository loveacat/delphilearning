object dfmDataAdd: TdfmDataAdd
  Left = 0
  Top = 0
  Caption = 'dfmDataAdd'
  ClientHeight = 377
  ClientWidth = 520
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxDBButtonEdit1: TcxDBButtonEdit
    Left = 160
    Top = 32
    DataBinding.DataField = 'id'
    DataBinding.DataSource = db.dsSiteTemp
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    TabOrder = 0
    Width = 121
  end
  object id: TcxLabel
    Left = 72
    Top = 33
    Caption = 'id'#21495
  end
  object cxDBButtonEdit2: TcxDBButtonEdit
    Left = 160
    Top = 66
    DataBinding.DataField = 'bid'
    DataBinding.DataSource = db.dsSiteTemp
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    TabOrder = 2
    Width = 121
  end
  object bid: TcxLabel
    Left = 72
    Top = 64
    Caption = #20179#21495
  end
  object cxDBButtonEdit3: TcxDBButtonEdit
    Left = 160
    Top = 95
    DataBinding.DataField = 'bottom'
    DataBinding.DataSource = db.dsSiteTemp
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    TabOrder = 4
    Width = 121
  end
  object topHeight: TcxLabel
    Left = 72
    Top = 96
    Caption = #24213#37096#39640#31243
  end
  object cxDBButtonEdit4: TcxDBButtonEdit
    Left = 160
    Top = 128
    DataBinding.DataField = 'Top'
    DataBinding.DataSource = db.dsSiteTemp
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    TabOrder = 6
    Width = 121
  end
  object cxLabel4: TcxLabel
    Left = 72
    Top = 129
    Caption = #39030#37096#39640#31243
  end
  object cxDBButtonEdit5: TcxDBButtonEdit
    Left = 160
    Top = 158
    DataBinding.DataField = 'startime'
    DataBinding.DataSource = db.dsSiteTemp
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    TabOrder = 8
    Width = 121
  end
  object cxLabel5: TcxLabel
    Left = 72
    Top = 162
    Caption = #24320#22987#26102#38388
  end
  object cxDBButtonEdit6: TcxDBButtonEdit
    Left = 160
    Top = 193
    DataBinding.DataField = 'closetime'
    DataBinding.DataSource = db.dsSiteTemp
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    TabOrder = 10
    Width = 121
  end
  object cxLabel6: TcxLabel
    Left = 72
    Top = 195
    Caption = #25910#20179#26102#38388
  end
  object cxDBButtonEdit7: TcxDBButtonEdit
    Left = 160
    Top = 221
    DataBinding.DataField = 'bulk'
    DataBinding.DataSource = db.dsSiteTemp
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    TabOrder = 12
    Width = 121
  end
  object cxLabel7: TcxLabel
    Left = 72
    Top = 225
    Caption = #27975#31569#21382#26102
  end
  object cxDBButtonEdit8: TcxDBButtonEdit
    Left = 160
    Top = 250
    DataBinding.DataField = 'power'
    DataBinding.DataSource = db.dsSiteTemp
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    TabOrder = 14
    Width = 121
  end
  object cxLabel8: TcxLabel
    Left = 72
    Top = 253
    Caption = #27975#31569#24378#24230
  end
  object cxDBButtonEdit9: TcxDBButtonEdit
    Left = 160
    Top = 285
    DataBinding.DataField = 'ptime'
    DataBinding.DataSource = db.dsSiteTemp
    Properties.Buttons = <
      item
        Default = True
        Kind = bkEllipsis
      end>
    TabOrder = 16
    Width = 121
  end
  object cxLabel9: TcxLabel
    Left = 72
    Top = 286
    Caption = #38388#27463#26399
  end
  object cxButton1: TcxButton
    Left = 304
    Top = 328
    Width = 75
    Height = 25
    Action = savedata
    TabOrder = 18
  end
  object cxButton2: TcxButton
    Left = 408
    Top = 328
    Width = 75
    Height = 25
    Action = closeadd
    TabOrder = 19
  end
  object ActionList1: TActionList
    Left = 392
    Top = 168
    object savedata: TAction
      Caption = #20445#23384
      OnExecute = savedataExecute
    end
    object closeadd: TAction
      Caption = #20851#38381
    end
  end
end
