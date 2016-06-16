library WebServiceCaller;

uses
  ComServ,
  WebServiceCaller_TLB in 'WebServiceCaller_TLB.pas',
  AutoWebService_Impl in 'AutoWebService_Impl.pas' {AutoWebService: CoClass},
  TestNETComIntf in '..\WebService\TestNETComIntf.pas';

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer,
  DllInstall;

{$R *.TLB}

{$R *.RES}

begin
end.
