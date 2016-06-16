unit WebServiceCaller_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 6/16/2016 3:16:38 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Projects\Webservice\COMDLL\WebServiceCaller (1)
// LIBID: {A024806C-5700-435E-ADB5-245ADFDCC4BF}
// LCID: 0
// Helpfile:
// HelpString:
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  WebServiceCallerMajorVersion = 1;
  WebServiceCallerMinorVersion = 0;

  LIBID_WebServiceCaller: TGUID = '{A024806C-5700-435E-ADB5-245ADFDCC4BF}';

  IID_IAutoWebService: TGUID = '{4AE4CCCF-9664-4BEB-8D8E-A9AEB575065E}';
  CLASS_AutoWebService: TGUID = '{4EC786E3-A8A8-46AF-9750-28C47F3FD7B4}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IAutoWebService = interface;
  IAutoWebServiceDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  AutoWebService = IAutoWebService;


// *********************************************************************//
// Interface: IAutoWebService
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4AE4CCCF-9664-4BEB-8D8E-A9AEB575065E}
// *********************************************************************//
  IAutoWebService = interface(IDispatch)
    ['{4AE4CCCF-9664-4BEB-8D8E-A9AEB575065E}']
    function HelloWorld(const YourName: WideString): WideString; safecall;
    function NoWebServiceCall: WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IAutoWebServiceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4AE4CCCF-9664-4BEB-8D8E-A9AEB575065E}
// *********************************************************************//
  IAutoWebServiceDisp = dispinterface
    ['{4AE4CCCF-9664-4BEB-8D8E-A9AEB575065E}']
    function HelloWorld(const YourName: WideString): WideString; dispid 201;
    function NoWebServiceCall: WideString; dispid 202;
  end;

// *********************************************************************//
// The Class CoAutoWebService provides a Create and CreateRemote method to
// create instances of the default interface IAutoWebService exposed by
// the CoClass AutoWebService. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoAutoWebService = class
    class function Create: IAutoWebService;
    class function CreateRemote(const MachineName: string): IAutoWebService;
  end;

implementation

uses System.Win.ComObj;

class function CoAutoWebService.Create: IAutoWebService;
begin
  Result := CreateComObject(CLASS_AutoWebService) as IAutoWebService;
end;

class function CoAutoWebService.CreateRemote(const MachineName: string): IAutoWebService;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AutoWebService) as IAutoWebService;
end;

end.

