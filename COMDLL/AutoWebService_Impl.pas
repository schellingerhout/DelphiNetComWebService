unit AutoWebService_Impl;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, WebServiceCaller_TLB, StdVcl;

type
  TAutoWebService = class(TAutoObject, IAutoWebService)
  protected
    

    procedure DoNothing; safecall;

  end;

implementation

uses ComServ,  TestNETComIntf, Soap.SOAPHTTPClient;


procedure TAutoWebService.DoNothing;
var
  LInvoker : THTTPRio;
  LWebIntf: ITestNETCom;
begin
    LInvoker := THTTPRio.Create(nil); // do not free if not owned
    LInvoker.URL := 'http://localhost:8080/soap/ITestNETCom';
    LWebIntf := LInvoker as ITestNETCom;
    LWebIntf.DoNothing;
end;

initialization
  TAutoObjectFactory.Create(ComServer, TAutoWebService, Class_AutoWebService,
    ciMultiInstance, tmApartment);
end.
