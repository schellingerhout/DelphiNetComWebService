{ Invokable interface ITestNETCom }

unit TestNETComIntf;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns;

type

  { Invokable interfaces must derive from IInvokable }
  ITestNETCom = interface(IInvokable)
  ['{4C1CC32A-0CD3-46B1-8E97-4B62C4F7EA06}']
    procedure DoNothing; stdcall;
    { Methods of Invokable interface must not use the default }
    { calling convention; stdcall is recommended }
  end;

implementation

initialization
  { Invokable interfaces must be registered }
  InvRegistry.RegisterInterface(TypeInfo(ITestNETCom));

end.
