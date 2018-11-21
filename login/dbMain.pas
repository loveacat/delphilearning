unit dbMain;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  Tdb = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    adminTable: TDataSource;
    ADOQuery2: TADOQuery;
    dsSiteTemp: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  db: Tdb;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
