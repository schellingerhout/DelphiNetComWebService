{ Invokable implementation File for TTestNETCom which implements ITestNETCom }

unit TestNETComImpl;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns, TestNETComIntf;

type

  { TTestNETCom }
  TTestNETCom = class(TInvokableClass, ITestNETCom)
  public
    function HelloWorld(const YourName: string) : string; stdcall;
  end;

implementation


{ TTestNETCom }

function TTestNETCom.HelloWorld(const YourName: string): string;
begin
  Result := 'Hello '+ YourName;
end;

initialization
{ Invokable classes must be registered }
   InvRegistry.RegisterInvokableClass(TTestNETCom);
end.

