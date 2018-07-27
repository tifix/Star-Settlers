unit Fightscreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Imaging.GIFImg, System.ImageList, Vcl.ImgList,
  Vcl.Imaging.jpeg;

type
  TForm3 = class(TForm)
    Button1: TButton;
    OwnShip1: TImage;
    EnemyShip1: TImage;
    Button2: TButton;
    Shape1: TShape;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Shape2: TShape;
    Shape3: TShape;
    Button6: TButton;
    Button7: TButton;
    CheckBox1: TCheckBox;
    Loop_control: TCheckBox;
    Shape4: TShape;
    Edit1: TEdit;
    Timer1: TTimer;
    Timer2: TTimer;
    Image1: TImage;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Bazinga(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);




  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
positionx = array [1..200,1..500] of longint;

var
xown1,yown1:integer;
xenemy1,yenemy1,wait:integer;
 enemygun:integer;        //1 is front -- 2 is side -- 3 is laser -- 4 is artillery
 rnd1:integer;            //for making enemy make mistakes
 asteroidcount:integer;   //for changing the map NOT IMPLEMENTED
    enemy1:boolean;
    loopend:boolean;
    puf1:boolean;
    isdead:boolean;


  Form3: TForm3;

  position:positionx;
       OS_dir:string;
       OP1_dir:string;

implementation

{$R *.dfm}

uses pirates;


                                                      //on fight initialization
procedure TForm3.Bazinga(Sender: TObject);
begin
OS_dir:='r';
isdead:=false;
xown1:=300;
yown1:=1;
xenemy1:=500;
yenemy1:=1200;
enemygun:=1;
ownship1.top:=(xown1);
ownship1.Left:=(yown1);
Edit1.Text:=(xown1.ToString +' '+ yown1.ToString+' '+ xenemy1.tostring+' '+yenemy1.tostring);
end;
                                                                 //close button
procedure TForm3.Button1Click(Sender: TObject);
begin
close;
end;

procedure AI_Chase;   //enemy moving
begin
randomize;
rnd1:=random(10);
if xenemy1<xown1 then
      begin                                               //when enemy is above
          if yenemy1<yown1 then
              begin
              xenemy1:=xenemy1+1; yenemy1:=yenemy1+1;
              end
          else if yenemy1>yown1 then
              begin
              xenemy1:=xenemy1+1; yenemy1:=yenemy1-1;
              end
          else if yenemy1=yown1 then
              begin
              xenemy1:=xenemy1+1;
              end;
      end
 else if xenemy1=xown1 then
      begin
       if yenemy1<yown1 then
              begin
              yenemy1:=yenemy1+1;
              end
          else if yenemy1>yown1 then
              begin
              yenemy1:=yenemy1-1;
              end
          else if yenemy1=yown1 then
              begin

              end;
      end
 else if xenemy1>xown1 then                                   //when enemy is below
      begin
        if yenemy1<yown1 then
              begin
              xenemy1:=xenemy1-1; yenemy1:=yenemy1+1;
              end
          else if yenemy1>yown1 then
              begin
              xenemy1:=xenemy1-1; yenemy1:=yenemy1-1;
              end
          else if yenemy1=yown1 then
              begin
              xenemy1:=xenemy1-1;
              end;

      end;

end;






procedure U_dead;            //when enemy is near
begin;

   //down
   if xenemy1>xown1 then if xenemy1-xown1<50 then if yenemy1<yown1 then if yown1-yenemy1<50 then isdead:=true;
   if xenemy1>xown1 then if xenemy1-xown1<50 then if yown1<yenemy1  then if yenemy1-yown1<50 then isdead:=true;   //right
   //up
   if xenemy1<xown1 then if xown1-xenemy1<50 then if yenemy1<yown1 then if yown1-yenemy1<50 then isdead:=true;   //left
   if xenemy1<xown1 then if xenemy1-xown1<50 then if yown1<yenemy1 then if yenemy1-yown1<50 then isdead:=true;   //right
   //same updown
   //if xenemy1=xown1 then if yenemy1<yown1 then if yown1-yenemy1<50 then isdead:=true;   //left

   if xenemy1=xown1 then if xenemy1-xown1<50 then if yenemy1<yown1 then if yown1-yenemy1<50 then isdead:=true ;  //left
   if xenemy1=xown1 then if xenemy1-xown1<50 then if yown1<yenemy1 then if yenemy1-yown1<50 then isdead:=true ;  //right
   //same leftright
   if yenemy1=yown1 then if xenemy1<xown1 then if xown1-xenemy1<50 then isdead:=true ;   //down
   if yenemy1=yown1 then if xenemy1>xown1 then if xenemy1-xown1<50 then isdead:=true ;  //up


end;
                                                         //OS_changes direction
procedure TForm3.Button2Click(Sender: TObject);
begin
randomize                  ;
OS_dir:='u';
ownship1.top:=(xown1);

   Ownship1.Picture.LoadFromFile('Ship_u.png');
  Edit1.Text:=(xown1.ToString +' '+ yown1.ToString+' '+ xenemy1.tostring+' '+yenemy1.tostring);
end;
procedure TForm3.Button3Click(Sender: TObject);
begin
randomize;
OS_dir:='l';
ownship1.left:=(yown1);
   Ownship1.Picture.LoadFromFile('Ship_l.png');

  Edit1.Text:=(xown1.ToString +' '+ yown1.ToString+' '+ xenemy1.tostring+' '+yenemy1.tostring);
end;
procedure TForm3.Button4Click(Sender: TObject);
begin
randomize;
OS_dir:='r';
ownship1.left:=(yown1);
  Ownship1.Picture.LoadFromFile('Ship_r.png');


  Edit1.Text:=(xown1.ToString +' '+ yown1.ToString+' '+ xenemy1.tostring+' '+yenemy1.tostring);
end;
procedure TForm3.Button5Click(Sender: TObject);
begin
randomize                  ;
OS_dir:='d';
ownship1.top:=(xown1);

   Ownship1.Picture.LoadFromFile('Ship_d.png');

  Edit1.Text:=(xown1.ToString +' '+ yown1.ToString+' '+ xenemy1.tostring+' '+yenemy1.tostring);
end;













                                                                         //fire
procedure TForm3.Button8Click(Sender: TObject);
begin
       if OS_dir='u' then begin Image1.Picture.LoadFromFile('shot_u.jpg'); OP1_dir:='u'; end    //projectile direction
  else if OS_dir='d' then begin Image1.Picture.LoadFromFile('shot_d.jpg'); OP1_dir:='d'; end
  else if OS_dir='l' then begin Image1.Picture.LoadFromFile('shot_l.jpg'); OP1_dir:='l'; end
  else if OS_dir='r' then begin Image1.Picture.LoadFromFile('shot_r.jpg'); OP1_dir:='r'; end
  else close;

timer2.Enabled:=true;
Image1.Visible:=true;
Image1.Top:=(Ownship1.Top+50);
Image1.Left:=ownship1.left;
end;

                                                     //timer turning on and off
procedure TForm3.FormActivate(Sender: TObject);
begin
timer1.Enabled:=true;
end;
procedure TForm3.FormDeactivate(Sender: TObject);
begin
timer1.Enabled:=false;
timer2.Enabled:=false;
end;





                                                       //every 1/10 of a second
procedure TForm3.Timer1Timer(Sender: TObject);
begin
AI_Chase;

 enemyship1.top:=xenemy1;
 enemyship1.left:=yenemy1;
 Edit1.Text:=(xown1.ToString +' '+ yown1.ToString+' '+ xenemy1.tostring+' '+yenemy1.tostring);

 if OS_dir='u' then xown1:=(xown1-4)
 else if OS_dir='d' then xown1:=(xown1+4)
 else if OS_dir='l' then yown1:=(yown1-4)
 else if OS_dir='r' then yown1:=(yown1+4);

 ownship1.left:=(yown1);
 ownship1.top:=(xown1);


// U_dead;

    if   isdead = true then
 begin
   close;
   end;

end;

procedure TForm3.Timer2Timer(Sender: TObject);
begin

     if OP1_dir='d' then   Image1.Top:=(Image1.Top+5)
else if OP1_dir='u' then   Image1.Top:=(Image1.Top-5)
else if OP1_dir='r' then   Image1.left:=(Image1.left+5)
else if OP1_dir='l' then   Image1.left:=(Image1.left-5);

end;

end.
