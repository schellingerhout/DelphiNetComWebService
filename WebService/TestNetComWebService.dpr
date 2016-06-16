program TestNetComWebService;
{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  MainForm in 'MainForm.pas' {Form2},
  WebModuleUnit2 in 'WebModuleUnit2.pas' {WebModule2: TWebModule},
  TestNETComImpl in 'TestNETComImpl.pas',
  TestNETComIntf in 'TestNETComIntf.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
