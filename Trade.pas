unit Trade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TForm7 = class(TForm)
    Button1: TButton;
    SELL: TLabel;
    BIron: TButton;
    SIron: TButton;
    BWater: TButton;
    SWater: TButton;
    BCopper: TButton;
    SCopper: TButton;
    BPlatinum: TButton;
    SPlatinum: TButton;
    BUranium: TButton;
    SUranium: TButton;
    Shape1: TShape;
    Shape2: TShape;
    moneycount: TLabel;
    BUY: TLabel;
    spacecount: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Label1: TLabel;
    Label2: TLabel;
    checkin: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure BIronClick(Sender: TObject);
    procedure Startup(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure BWaterClick(Sender: TObject);
    procedure BCopperClick(Sender: TObject);
    procedure resource_gen(Sender: TObject);
    procedure BUraniumClick(Sender: TObject);
    procedure BPlatinumClick(Sender: TObject);
      private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  SPACE:integer;
  money:longint;
  City:boolean;
  Ironbuy,Ironsell,Waterbuy,watersell,copperbuy,coppersell,uraniumbuy,uraniumsell,platinumbuy, platinumsell:longint;

implementation
 Uses unit1,Alien_City;
{$R *.dfm}

    procedure TForm7.resource_gen(Sender: TObject);
    begin
    City:=false;
    if mapgenerator[x,y]=5 then                                    //city trade
    begin
    city:=true;
    BIron.Visible:=true;
    BWater.Visible:=true;
    Bcopper.Visible:=true;
    Buranium.Visible:=True;
    Bplatinum.Visible:=true;
    ironbuy:=70                    ;
    ironsell:=80;                 ;
    waterbuy:=3000               ;
    watersell:=4000;            ;
    copperbuy:=5000            ;
    coppersell:=7000          ;                              //EDIT SELL PRIZES
    uraniumbuy:=22000        ;
    uraniumsell:=25000      ;
    platinumbuy:=40000000  ;
    platinumsell:=50000000;
    end;

    if mapgenerator[x,y]=2 then                                  //casual trade
   begin
   city:=false;
   if ironore[x,y]=false then BIron.Visible:=false;
   if ironore[x,y]=true then BIron.Visible:=true;
   if waterore[x,y]=true then BWater.Visible:=true;
   if waterore[x,y]=false then BWater.Visible:=false;
   if copperore[x,y]=false then Bcopper.Visible:=false;
   if copperore[x,y]=true then Bcopper.Visible:=true;
   if uraniumore[x,y]=true then Buranium.Visible:=True;
   if uraniumore[x,y]=false then Buranium.Visible:=false;
   if platinumore[x,y]=false then Bplatinum.Visible:=false;
   if platinumore[x,y]=true then Bplatinum.Visible:=true;
   ironbuy:=60                     ;
    ironsell:=70                  ;
    waterbuy:=2500               ;
    watersell:=3000             ;
    copperbuy:=4000            ;
    coppersell:=5000          ;
    uraniumbuy:=200000       ;
    uraniumsell:=300000     ;
    platinumbuy:=30000000  ;
    platinumsell:=40000000;

   end;
  end;













procedure TForm7.BIronClick(Sender: TObject);
begin
 If money>=ironbuy then
 begin
  if space>=7 then
      begin                                                           //iron buy
      money:=money-ironbuy;
      space:=space-7;
      showmessage('bought 1 unit of iron for '+ironbuy.tostring+' credits');

      end;
   if space<=7 then showmessage('Your cargo space is full');
 end;
 if money<ironbuy then
 begin
 showmessage('You cannot afford this');

 end;

  end;



procedure TForm7.BWaterClick(Sender: TObject);                         //water  buy
begin
 If money>=2450 then
 begin
  if space>=1 then
      begin
      money:=money-2450;
      space:=space-waterbuy;
      showmessage('bought 1 unit of water for '+ waterbuy.tostring + ' credits');
      moneycount.Caption:=money.ToString;
      spacecount.Caption:=space.ToString;
      end;
   if space<1 then showmessage('Your cargo space is full');
 end;
 if money<waterbuy then
 begin
 showmessage('You cannot afford this');

 end;
end;

procedure TForm7.BCopperClick(Sender: TObject);                     //copper buy
begin

 If money>=4638 then
 begin
  if space>=79 then
      begin
      money:=(money-copperbuy);
      space:=space-9;
      showmessage('bought 9 tons of copper for '+copperbuy.ToString+' credits');
      moneycount.Caption:=money.ToString;
      spacecount.Caption:=space.ToString;
      end;
   if space<9 then showmessage('Your cargo space is full');
 end;
 if money<copperbuy then
 begin
 showmessage('You cannot afford this');

 end;
end;

procedure TForm7.BUraniumClick(Sender: TObject);
begin

 If money>=uraniumbuy then
 begin
  if space>=19 then
      begin                                                            //uranium buy
      money:=(money-uraniumbuy);
      space:=space-9;
      showmessage('bought 9 tons of uranium for '+uraniumbuy.ToString+' credits');
      moneycount.Caption:=money.ToString;
      spacecount.Caption:=space.ToString;
      end;
   if space<19 then showmessage('Your cargo space is full');
 end;
 if money<uraniumbuy then
 begin
 showmessage('You cannot afford this');

 end;
end;


procedure TForm7.BPlatinumClick(Sender: TObject);
begin
 If money>=platinumbuy then
 begin
  if space>=7 then
      begin                                                           //platinum buy
      money:=money-platinumbuy;
      space:=space-7;
      showmessage('bought 1 unit of platinum for '+platinumbuy.tostring+' credits');

      end;
   if space<=7 then showmessage('Your cargo space is full');
 end;
 if money<platinumbuy then
 begin
 showmessage('You cannot afford this');

 end;

  end;













  procedure TForm7.Startup(Sender: TObject; Shift: TShiftState; X, Y: Integer);
  begin
   if checkin.Caption='.' then
              begin
              money:=1000;
              space:=1000;
              moneycount.Caption:=money.ToString;
              spacecount.Caption:=space.ToString;
              checkin.Caption:=''
              end;
    if checkin.Caption='' then
    begin
          moneycount.Caption:=money.ToString;
          spacecount.Caption:=space.ToString;
    end;





  end;




   procedure TForm7.Button1Click(Sender: TObject);
  begin
  close;
  end;
end.
