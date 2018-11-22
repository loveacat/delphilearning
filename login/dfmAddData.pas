unit dfmAddData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit,
  Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, cxButtons;

type
  TdfmDataAdd = class(TForm)
    cxDBButtonEdit1: TcxDBButtonEdit;
    id: TcxLabel;
    cxDBButtonEdit2: TcxDBButtonEdit;
    bid: TcxLabel;
    cxDBButtonEdit3: TcxDBButtonEdit;
    topHeight: TcxLabel;
    cxDBButtonEdit4: TcxDBButtonEdit;
    cxLabel4: TcxLabel;
    cxDBButtonEdit5: TcxDBButtonEdit;
    cxLabel5: TcxLabel;
    cxDBButtonEdit6: TcxDBButtonEdit;
    cxLabel6: TcxLabel;
    cxDBButtonEdit7: TcxDBButtonEdit;
    cxLabel7: TcxLabel;
    cxDBButtonEdit8: TcxDBButtonEdit;
    cxLabel8: TcxLabel;
    cxDBButtonEdit9: TcxDBButtonEdit;
    cxLabel9: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ActionList1: TActionList;
    savedata: TAction;
    closeadd: TAction;
    procedure savedataExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dfmDataAdd: TdfmDataAdd;

implementation

{$R *.dfm}
uses dbMain;
procedure TdfmDataAdd.savedataExecute(Sender: TObject);
begin
  db.ADOQuery2.Post;
  Close;
end;

end.
