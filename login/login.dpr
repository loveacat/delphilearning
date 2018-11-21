program login;

uses
  Controls,
  Vcl.Forms,
  dfmLogin in 'dfmLogin.pas' {Form1},
  dfmMain in 'dfmMain.pas' {MainForm},
  dbMain in 'dbMain.pas' {db: TDataModule},
  dfmDataView in 'dfmDataView.pas' {dataViewForm};

{$R *.res}
var
  checkLogin :Boolean = False;
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  MainForm.Hide;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tdb, db);
  if Form1.ShowModal <> mrOK then
     Application.Terminate;
  Application.Run;

end.
