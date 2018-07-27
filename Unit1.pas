unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TMainHud = class(TForm)
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button_Quest: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label4: TLabel;
    Shape6: TShape;
    Label5: TLabel;
    Shape7: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Shape8: TShape;
    Label10: TLabel;
    Label11: TLabel;
    Shape9: TShape;
    Label12: TLabel;
    Image_Window: TImage;
    Image_Settlers: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image_Empty: TImage;
    throttle_control: TScrollBar;

    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Start(Sender: TObject);
    procedure Button_QuestClick(Sender: TObject);
    procedure throttle_controlScroll(Sender: TObject; ScrollCode: TScrollCode;
      var ScrollPos: Integer);



  private
    { Private declarations }
  public
    { Public declarations }
  end;
  type

locationx = array [1..1000,1..100] of Integer;
mapgenx=array[1..1000,1..100] of boolean;
                                                        //X,Y,
                                                        // previously alsoinhibitants,size
var
  MainHud: TMainHud;
  recentlocation,direction,actdirection:integer;
  y,yM,ppl,size:integer;
  x,xM:smallint;
  resource,location,mapgenerator:locationx;
  mapgen,mapgen2:mapgenx;
  rndm,rdm1,rdm2,rdm3,rdm4,rdm5:integer;
  ironore,waterore,copperore,uraniumore,platinumore:mapgenx;
  typlokacji,thrust,stat_overflow:integer;
  barriercrossing:boolean;

implementation

{$R *.dfm}
 uses  Fightscreen, Pirates, None,settlers,owned_colony, Alien_City, Quests;

  procedure Location_processing;
 begin



    if mapgen [x,y]=false then
    begin

     if y>=90 then if x<600 then
          begin
          mapgenerator [x,y]:=4;
          mapgen [x,y]:=true;
          end;
     if y<90 then
          begin

            if x<600 then
             begin
             randomize;
             rndm:=random(20)+1;
             if rndm=1 then mapgenerator[x,y]:=4;
             if rndm=2 then mapgenerator [x,y]:=random(2)+1; if rndm=3 then mapgenerator [x,y]:=random(2)+1;
             if rndm=4 then mapgenerator [x,y]:=random(2)+1; if rndm=5 then mapgenerator [x,y]:=random(2)+1;
             if rndm=5 then mapgenerator [x,y]:=random(2)+1; if rndm=6 then mapgenerator [x,y]:=random(2)+1;
             if rndm=7 then mapgenerator [x,y]:=random(2)+1; if rndm=8 then mapgenerator [x,y]:=random(2)+1;
             if rndm=9 then mapgenerator [x,y]:=random(2)+1; if rndm=10 then mapgenerator [x,y]:=random(2)+1;
             if rndm=10 then mapgenerator [x,y]:=random(2)+1; if rndm=11 then mapgenerator [x,y]:=random(2)+1;
             if rndm=12 then mapgenerator [x,y]:=random(2)+1; if rndm=13 then mapgenerator [x,y]:=random(2)+1;
             if rndm=14 then mapgenerator [x,y]:=random(2)+1; if rndm=15 then mapgenerator [x,y]:=random(2)+1;
             if rndm=16 then mapgenerator [x,y]:=random(2)+1; if rndm=17 then mapgenerator [x,y]:=random(2)+1;
             if rndm=18 then mapgenerator [x,y]:=random(2)+1; if rndm=19 then mapgenerator [x,y]:=random(2)+1;
             if rndm=20 then mapgenerator [x,y]:=random(2)+1; if rndm=21 then mapgenerator [x,y]:=random(2)+1;


             mapgen [x,y]:=true;
              end;
            if x=500 then
             begin
             mapgenerator[x,y]:=5;
             end;
             if x=0  then
             begin
             mapgenerator[x,y]:=6;
             end;
             if x=1000 then
             begin
             mapgenerator[x,y]:=6
             end;


             if mapgenerator[x,y]<3 then if mapgen2[x,y]=false then
              begin
              randomize;
              rdm1:=random(2)+1;
                if rdm1=1 then
                  begin
                   ironore[x,y]:=true;
                   randomize;                                           //iron
                   rdm2:=random(4)+1;
                   if rdm2=1 then                                       //iron+water
                    begin
                    waterore[x,y]:=true;
                    randomize;
                    rdm3:=random(10)+1;
                    if rdm3=4 then
                       begin                                           //iron+water+copper
                       copperore[x,y]:=true;
                       Uraniumore[x,y]:=false;
                       platinumore[x,y]:=false;
                       end;
                    if rdm3=not 4 then
                       begin
                       copperore[x,y]:=false;
                       Uraniumore[x,y]:=false;
                       platinumore[x,y]:=false;                         //iron+water+no copper
                       end;

                    end;

                   if rdm2=2 then                                 //iron+no water
                    begin
                    waterore[x,y]:=false;
                    randomize;
                    rdm3:=1+random(3);                               //iron+no water+copper                 -1 0 -1
                    if rdm3=2 then
                       begin
                       copperore[x,y]:=true;
                       Uraniumore[x,y]:=false;
                       platinumore[x,y]:=false;
                       end;
                    if rdm3=not 2 then
                       begin                                         //iron+no water+no copper             -1 0 0
                       copperore[x,y]:=false;
                       randomize;
                       rdm4:=1+random(2);
                       if rdm4=2 then
                        begin uraniumore[x,y]:=true;        //iron+no water+no copper+uranium            -1 0 0 -1
                        platinumore[x,y]:=false;
                          end;
                        if rdm4 = 1 then
                        begin
                        uraniumore[x,y]:=false;              //iron+no water+no copper+no uranium       -1 0 0 0
                        randomize;
                        rdm5:=random(100)+1;
                        if rdm5=1 then platinumore[x,y]:=true;
                        if rdm5= not 1 then platinumore[x,y]:=false;
                         end;
                        end;

                    end;

                   end;



                if rdm1=2 then                                        //no iron
                   begin
                    ironore[x,y]:=false;
                    randomize;
                    rdm2:=1+random(2);
                     if rdm2=1 then                                     //water
                    begin
                    waterore[x,y]:=true;
                    randomize;
                    rdm3:=random(4)+1;
                    if rdm3=2 then
                       begin
                        copperore[x,y]:=false;                      //no copper
                        randomize;
                       rdm4:=random(10);
                        if rdm4>1 then
                        begin                                      // no uranium
                        uraniumore[x,y]:=false;
                        randomize;
                        rdm5:=random(200)+1;
                        if rdm5=1 then platinumore[x,y]:=true;
                        if rdm5= not 1 then platinumore[x,y]:=false;  //platinum
                        end;
                        if rdm4=1 then                                 //uranium
                         begin
                          uraniumore[x,y]:=true;
                          platinumore[x,y]:=false;
                         end;
                       end;

                    if rdm3=not 2 then
                       begin
                         copperore[x,y]:=true;
                         uraniumore[x,y]:=true;
                          platinumore[x,y]:=false;                        //copper
                       end;

                    end;
                     if rdm2=2 then                                  //no water
                    begin
                    waterore[x,y]:=false;
                    randomize;
                    rdm3:=random(2)+1;

                    if rdm3=  1 then                                //copper
                       begin
                         copperore[x,y]:=true;
                         uraniumore[x,y]:=false;
                         platinumore[x,y]:=false;
                         randomize;

                       end;
                       if rdm3=2  then
                     begin
                        copperore[x,y]:=false;                      //no copper
                        randomize;
                       rdm4:=random(10);
                        if rdm4>=8 then
                        begin                                      // no uranium
                        uraniumore[x,y]:=false;
                        randomize;
                        rdm5:=random(100)+1;
                        if rdm5=1 then platinumore[x,y]:=true;
                        if rdm5= not 1 then platinumore[x,y]:=false;  //platinum
                        end;
                        if rdm4<8 then                                 //uranium
                         begin

                         end;
                       end;


                    end;
                  end;


                    mapgen2[x,y]:=true;
                    rdm1:=0; rdm2:=0; rdm3:=0; rdm4:=0; rdm5:=0;

              end;




           end;

    end;










 end;







procedure TMainHud.Start(Sender: TObject);
begin
        repeat


          If ym<100 then
          begin
          yM:=yM+1;
          mapgen [xm,ym]:=false;
          mapgen2 [xm,ym]:=false;
          end
   else if yM>=100 then
    begin
    ym:=0;
    xm:=xm+1;
    mapgen [xm,ym]:=false;
    mapgen2 [xm,ym]:=false;
    end;


    until xM=1000;
end;



procedure TMainHud.Button2Click(Sender: TObject);
begin
close;
end;




//THRUST CONTROL  buttons
procedure TMainHud.Button8Click(Sender: TObject);
begin
  thrust:=1;
  throttle_control.Position := 1;                                             //thrust settings
end;
procedure TMainHud.Button9Click(Sender: TObject);
begin
  thrust:=2;
  throttle_control.Position := 2;
end;
procedure TMainHud.Button10Click(Sender: TObject);
begin
  thrust:=3;
   throttle_control.Position := 3;
end;
 procedure TMainHud.throttle_controlScroll(Sender: TObject;
  ScrollCode: TScrollCode; var ScrollPos: Integer);
begin
 if throttle_control.Position = 1 then
      begin
       thrust:=1;
      end;
 if throttle_control.Position = 2 then
      begin
      thrust:=2;
      end;
 if throttle_control.Position = 3 then
      begin
      thrust:=3;
      end;
end;













procedure TMainHud.Button_QuestClick(Sender: TObject);
begin
Form9.ShowModal;
end;





procedure TMainHud.Button4Click(Sender: TObject);
begin
 if thrust=3 then if x<1000 then x:=(x+100)
 else if thrust=3 then if x>=1000 then x:=(x-1000);
 if thrust=2 then x:=(x+10);
 if thrust=1 then x:=(x+(random(2)+1));
 if x>1000 then x:=(x-1000);
 if x=1000 then x:=0;
  label3.Caption:=x.ToString+'           '+y.ToString;

   Location_processing;
   label6.caption:=mapgenerator[x,y].ToString;
   Label4.caption:=(ironore[x,y].ToString+' '+waterore[x,y].ToString+' '+copperore[x,y].ToString+' '+uraniumore[x,y].ToString+' '+platinumore[x,y].ToString);
   Label7.Caption:=(mapgen2[x,y].ToString+' '+ mapgenerator[x,y].ToString);
       if mapgenerator [x,y]=1 then
       begin
       Image_Empty.Visible:=true;
       Image_Settlers.Visible:=false;
       Image3.Visible:=false;
       Image4.Visible:=false;
       Image5.Visible:=false;
       Form2.showmodal;
       end;
        if mapgenerator [x,y]=2 then
       begin
       Image_Empty.Visible:=false;
       Image_Settlers.Visible:=true;
       Image3.Visible:=false;
       Image4.Visible:=false;
       Image5.Visible:=false;
       Form4.ShowModal;
       end;
       if mapgenerator [x,y]= 3 then
       begin
       Image_Empty.Visible:=false;
       Image_Settlers.Visible:=false;
       Image3.Visible:=true;
       Image4.Visible:=false;
       Image5.Visible:=false;
       form5.ShowModal;
       end;
       if mapgenerator[x,y]=4 then
       begin
       Image_Empty.Visible:=false;
       Image_Settlers.Visible:=false;
       Image3.Visible:=false;
       Image4.Visible:=true;
       Image5.Visible:=false;
       Form6.ShowModal;
       end;

       if mapgenerator[x,y]=5 then
       begin
       Image_Empty.Visible:=false;
       Image_Settlers.Visible:=false;
       Image3.Visible:=false;
       Image4.Visible:=false;
       Image5.Visible:=true;
       Form8.ShowModal;
       end;


                                                                 //forward
end;

procedure TMainHud.Button6Click(Sender: TObject);
begin
barriercrossing:=false;
 if thrust=3 then if x>100 then
 begin
 x:=(x-100);
 barriercrossing:=false;
 end
 else if thrust=3 then if x<=100 then barriercrossing:=true;
 if thrust=2 then if x>10 then
 begin
 x:=(x-10);
 barriercrossing:=false;
 end
 else if thrust=2 then if x<=10 then  barriercrossing:=true;

 if thrust=1 then if x>2 then begin
 x:=(x-(random(2)+1));
 barriercrossing:=false;
 end;
  if thrust=1 then if x<=2 then barriercrossing:= true;
 if barriercrossing=true then
 begin
 stat_overflow:=x+100;
 x:=1000-stat_overflow+100;
 stat_overflow:=0;
 end;
 label3.Caption:=x.ToString+'           '+y.ToString;

   Location_processing;
   label6.caption:=mapgenerator[x,y].ToString;
   Label4.caption:=(ironore[x,y].ToString+' '+waterore[x,y].ToString+' '+copperore[x,y].ToString+' '+uraniumore[x,y].ToString+' '+platinumore[x,y].ToString);
   Label7.Caption:=(mapgen2[x,y].ToString+' '+ mapgenerator[x,y].ToString);
        if mapgenerator [x,y]=1 then
       begin
       Image_Empty.Visible:=true;
       Image_Settlers.Visible:=false;
       Image3.Visible:=false;
       Image4.Visible:=false;
       Image5.Visible:=false;
       Form2.showmodal;
       end;
        if mapgenerator [x,y]=2 then
       begin
       Image_Empty.Visible:=false;
       Image_Settlers.Visible:=true;
       Image3.Visible:=false;
       Image4.Visible:=false;
       Image5.Visible:=false;
       Form4.ShowModal;
       end;
       if mapgenerator [x,y]= 3 then
       begin
       Image_Empty.Visible:=false;
       Image_Settlers.Visible:=false;
       Image3.Visible:=true;
       Image4.Visible:=false;
       Image5.Visible:=false;
       form5.ShowModal;
       end;
       if mapgenerator[x,y]=4 then
       begin
       Image_Empty.Visible:=false;
       Image_Settlers.Visible:=false;
       Image3.Visible:=false;
       Image4.Visible:=true;
       Image5.Visible:=false;
       Form6.ShowModal;
       end;

       if mapgenerator[x,y]=5 then
       begin
       Image_Empty.Visible:=false;
       Image_Settlers.Visible:=false;
       Image3.Visible:=false;
       Image4.Visible:=false;
       Image5.Visible:=true;
       Form8.ShowModal;
       end;



                                                                      //backward
end;

procedure TMainHud.Button5Click(Sender: TObject);
begin
 if thrust=3 then y:=(0);
 if thrust=2 then if y>10 then y:=(y-10)
 else if thrust=2 then if y<=10 then y:=0;
 if thrust=1 then if y>3 then y:=(y-(random(2)+1));
  label3.Caption:=x.ToString+'           '+y.ToString;

   Location_processing;
   label6.caption:=mapgenerator[x,y].ToString;
    Label4.caption:=(ironore[x,y].ToString+' '+waterore[x,y].ToString+' '+copperore[x,y].ToString+' '+uraniumore[x,y].ToString+' '+platinumore[x,y].ToString);
   Label7.Caption:=(mapgen2[x,y].ToString+' '+ mapgenerator[x,y].ToString);
         if mapgenerator [x,y]=1 then
       begin
       Image_Empty.Visible:=true;
       Image_Settlers.Visible:=false;
       Image3.Visible:=false;
       Image4.Visible:=false;
       Image5.Visible:=false;
       Form2.showmodal;
       end;
        if mapgenerator [x,y]=2 then
       begin
       Image_Empty.Visible:=false;
       Image_Settlers.Visible:=true;
       Image3.Visible:=false;
       Image4.Visible:=false;
       Image5.Visible:=false;
       Form4.ShowModal;
       end;
       if mapgenerator [x,y]= 3 then
       begin
       Image_Empty.Visible:=false;
       Image_Settlers.Visible:=false;
       Image3.Visible:=true;
       Image4.Visible:=false;
       Image5.Visible:=false;
       form5.ShowModal;
       end;
       if mapgenerator[x,y]=4 then
       begin
       Image_Empty.Visible:=false;
       Image_Settlers.Visible:=false;
       Image3.Visible:=false;
       Image4.Visible:=true;
       Image5.Visible:=false;
       Form6.ShowModal;
       end;

       if mapgenerator[x,y]=5 then
       begin
       Image_Empty.Visible:=false;
       Image_Settlers.Visible:=false;
       Image3.Visible:=false;
       Image4.Visible:=false;
       Image5.Visible:=true;
       Form8.ShowModal;
       end;


                                                                          //right
end;

procedure TMainHud.Button7Click(Sender: TObject);
begin
 if thrust=3 then y:=(100)
 else if thrust=2 then if y<100 then y:=(y+10)
 else if thrust=1 then if y<100 then y:=(y+(random(2)+1));
   label3.Caption:=x.ToString+'           '+y.ToString;

   Location_processing;
   label6.caption:=mapgenerator[x,y].ToString;
     Label4.caption:=(ironore[x,y].ToString+' '+waterore[x,y].ToString+' '+copperore[x,y].ToString+' '+uraniumore[x,y].ToString+' '+platinumore[x,y].ToString);
   Label7.Caption:=(mapgen2[x,y].ToString+' '+ mapgenerator[x,y].ToString);
   if mapgenerator [x,y]=1 then
       begin
       Image_Empty.Visible:=true;
       Image_Settlers.Visible:=false;
       Image3.Visible:=false;
       Image4.Visible:=false;
       Image5.Visible:=false;
       Form2.showmodal;
       end;
        if mapgenerator [x,y]=2 then
       begin
       Image_Empty.Visible:=false;
       Image_Settlers.Visible:=true;
       Image3.Visible:=false;
       Image4.Visible:=false;
       Image5.Visible:=false;
       Form4.ShowModal;
       end;
       if mapgenerator [x,y]= 3 then
       begin
       Image_Empty.Visible:=false;
       Image_Settlers.Visible:=false;
       Image3.Visible:=true;
       Image4.Visible:=false;
       Image5.Visible:=false;
       form5.ShowModal;
       end;
       if mapgenerator[x,y]=4 then
       begin
       Image_Empty.Visible:=false;
       Image_Settlers.Visible:=false;
       Image3.Visible:=false;
       Image4.Visible:=true;
       Image5.Visible:=false;
       Form6.ShowModal;
       end;

       if mapgenerator[x,y]=5 then
       begin
       Image_Empty.Visible:=false;
       Image_Settlers.Visible:=false;
       Image3.Visible:=false;
       Image4.Visible:=false;
       Image5.Visible:=true;
       Form8.ShowModal;
       end;

                                                                        //left
end;


end.
