unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm14 = class(TForm)
    Button1: TButton;

    procedure Button1Click(Sender: TObject);

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
   LAutoToWeb.DoNothing;
end;



end.
