{ Invokable implementation File for TTestNETCom which implements ITestNETCom }

unit TestNETComImpl;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns, TestNETComIntf;

type

  { TTestNETCom }
  TTestNETCom = class(TInvokableClass, ITestNETCom)
  public
    procedure DoNothing; stdcall;
  end;

implementation


{ TTestNETCom }

procedure TTestNETCom.DoNothing;
begin

end;

initialization
{ Invokable classes must be registered }
   InvRegistry.RegisterInvokableClass(TTestNETCom);
end.

