unit AutoWebService_Impl;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  ComObj, ActiveX, WebServiceCaller_TLB, StdVcl;

type
  TAutoWebService = class(TAutoObject, IAutoWebService)
  protected
    function HelloWorld(const YourName: WideString): WideString; safecall;
    function NoWebServiceCall: WideString; safecall;

  end;

implementation

uses ComServ,  TestNETComIntf, Soap.SOAPHTTPClient;

function TAutoWebService.HelloWorld(const YourName: WideString): WideString;
var
  LInvoker : THTTPRio;
  LWebIntf: ITestNETCom;
begin
    LInvoker := THTTPRio.Create(nil); // do not free if not owned
    LInvoker.URL := 'http://localhost:8080/soap/ITestNETCom';
    LWebIntf := LInvoker as ITestNETCom;
    {$IFDEF WIN64}
     result := LWebIntf.HelloWorld(YourName) + ' (64-BIT COM DLL)'; //AV here if called from .net 64 host
    {$ELSE}
     result := LWebIntf.HelloWorld(YourName) + ' (32-BIT COM DLL)';
    {$ENDIF}
end;


function TAutoWebService.NoWebServiceCall: WideString;
begin

   {$IFDEF WIN64}
  result := 'I''m OK! (64-Bit)';
    {$ELSE}
  result := 'I''m OK! (32-Bit)';
   {$ENDIF}
end;

initialization
  TAutoObjectFactory.Create(ComServer, TAutoWebService, Class_AutoWebService,
    ciMultiInstance, tmApartment);
end.
