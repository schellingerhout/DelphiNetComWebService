program DelphiHost;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form14},
  WebServiceCaller_TLB in '..\COMDLL\WebServiceCaller_TLB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm14, Form14);
  Application.Run;
end.
