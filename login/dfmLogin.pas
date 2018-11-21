unit dfmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxGDIPlusClasses, cxImage, Vcl.StdCtrls, Vcl.Mask,
  Data.DB, Data.Win.ADODB, cxClasses, dxSkinsForm;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
    dxSkinController1: TdxSkinController;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  i:Integer = 0 ;

implementation

{$R *.dfm}

uses dfmMain,dbMain;



procedure TForm1.Button2Click(Sender: TObject);
var
  user: String;
  pwd: String;

begin
  user := Edit1.Text;
  pwd := Edit2.Text;
  with db.ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Text:='select * from admin where username=:Sign';
      Parameters.ParamByName('Sign').Value:=Trim(Edit1.Text) ;
      Open;
    end;
    if db.ADOQuery1.IsEmpty then
      begin
        Winapi.Windows.MessageBox(0,'不存在的用户名','登录失败',MB_OK  );
        inc(i);
        if i = 3 then begin
          ShowMessage('错误3次强制退出');
          ModalResult := mrNO;
        end;
      end
    else if db.ADOQuery1.Fieldbyname('pwd').AsString <> Edit2.Text then
    begin
      //MainForm := TMainForm.Create(Application);
      Winapi.Windows.MessageBox(0,'用户名或者密码错误','登录失败',MB_OK  );
      inc(i);
      if i = 3 then begin
          ShowMessage('错误3次强制退出');
          ModalResult := mrNO;
      end;


    end
    else
      //Winapi.Windows.MessageBox(0,'用户名或者密码错误','登录失败',MB_OK  );
      begin
      Form1.Hide;
      ModalResult := mrOK;
      end;
    end;

end.
