unit Alien_City;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TForm8 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    Shape1: TShape;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure start(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Trade;

procedure TForm8.Button1Click(Sender: TObject);
begin
Form7.ShowModal;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
showmessage('coming soon');
end;

procedure TForm8.Button4Click(Sender: TObject);
begin
showmessage('coming soon');
end;

procedure TForm8.start(Sender: TObject);
begin
 showmessage('hi');
end;

end.
