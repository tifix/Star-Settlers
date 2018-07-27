unit Owned_colony;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm5 = class(TForm)
    Button1: TButton;
    Collect: TButton;
    Upgrade: TButton;
    Refuel: TButton;
    Resuply: TButton;
    Shape1: TShape;
    procedure Button1Click(Sender: TObject);
    procedure CollectClick(Sender: TObject);
    procedure UpgradeClick(Sender: TObject);
    procedure RefuelClick(Sender: TObject);
    procedure ResuplyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
close;
end;

procedure TForm5.CollectClick(Sender: TObject);
begin
showmessage('Coming soon');
end;

procedure TForm5.RefuelClick(Sender: TObject);
begin
showmessage('Coming soon');
end;

procedure TForm5.ResuplyClick(Sender: TObject);
begin
showmessage('Coming soon');
end;

procedure TForm5.UpgradeClick(Sender: TObject);
begin
showmessage('Coming soon');
end;

end.
