unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm14 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

uses
  WebServiceCaller_TLB;

{$R *.dfm}

procedure TForm14.Button1Click(Sender: TObject);
var
  LAutoToWeb: IAutoWebService;
begin
   LAutoToWeb := CoAutoWebService.Create;
   {$IFDEF WIN64}
      ShowMessage(LAutoToWeb.HelloWorld('64-BIT Delphi Exe' ));
   {$ELSE}
     ShowMessage(LAutoToWeb.HelloWorld('32-BIT Delphi Exe' ));
   {$ENDIF}
end;

procedure TForm14.Button2Click(Sender: TObject);
var
  LAutoToWeb: IAutoWebService;
begin
   LAutoToWeb := CoAutoWebService.Create;
   ShowMessage(LAutoToWeb.NoWebServiceCall);
end;

end.
