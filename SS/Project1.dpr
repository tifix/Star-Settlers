program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {MainHud},
  None in 'None.pas' {Form2},
  Settlers in 'Settlers.pas' {Form4},
  pirates in 'pirates.pas' {Form6},
  Alien_City in 'Alien_City.pas' {Form8},
  Owned_colony in 'Owned_colony.pas' {Form5},
  Trade in 'Trade.pas' {Form7},
  Fightscreen in 'Fightscreen.pas' {Form3},
  Quests in 'Quests.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainHud, MainHud);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
