unit pirates;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Trade, fightscreen;



procedure TForm6.Button1Click(Sender: TObject);
begin
close;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
showmessage('Coming soon');
end;

end.
