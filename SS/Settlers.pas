unit Settlers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    Button1: TButton;
    Trade: TButton;
    Recruit: TButton;
    Fight: TButton;
    Shape1: TShape;
    procedure Button1Click(Sender: TObject);
    procedure TradeClick(Sender: TObject);
    procedure RecruitClick(Sender: TObject);
    procedure FightClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Trade;

procedure TForm4.Button1Click(Sender: TObject);
begin
close;
end;

procedure TForm4.FightClick(Sender: TObject);
begin
showmessage('Coming soon');
end;

procedure TForm4.RecruitClick(Sender: TObject);
begin
showmessage('Coming soon');
end;

procedure TForm4.TradeClick(Sender: TObject);
begin
Form7.ShowModal;
end;

end.
