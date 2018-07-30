unit Quests;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm9 = class(TForm)
    MissionSellect: TScrollBar;
    Quest_Name: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Q_Desription: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Q_Reward_Disp_2: TLabel;
    Q_Reward_Disp_3: TLabel;
    Q_Reward_Disp_1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MissionSellectScroll(Sender: TObject; ScrollCode: TScrollCode;
      var ScrollPos: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
   type

Quest_StructX = array [1..1000] of String;
var
  Form9: TForm9;
  X,Icomma,Idot,NQ,NumberOfQuests:integer;
  I1,I2,I3,I4,I5,I6,I7,I8,Dist:integer;
  Q_Struct:Quest_StructX;
  Q_Desc:Quest_StructX;
  Q_Name:Quest_StructX;
  Q_Obj:Quest_StructX;
  Acode,Bcode,Ccode,Dcode,Utility:string;
implementation
{$R *.dfm}

  uses Unit1 ;


procedure TForm9.FormCreate(Sender: TObject);
begin
 NumberOfQuests:=2;
 //intro tutorial
  Q_Struct[1]:='100,1000.crew1';
  Q_Desc[1]:='Welcome To Star Settlers.This mission will guide you through the basics of the game';
  Q_Name[1]:='Tutorial';
  Q_Obj[1]:='1st Visit 500,020 2nd Buy 10 Iron';

    //trade tutorial
    Q_Struct[2]:='50,500.';
    Q_Desc[2]:='One of our crew members complains that we dont do anything except fly around. He says we should try to earn some cash. Earn some cash by selling iron.';
    Q_Name[2]:='Trade';
    Q_Obj[2]:='1st Buy 020 Iron 2nd Visit 040,050 3rd Sell 20 iron ';

end;

procedure TForm9.FormShow(Sender: TObject);
begin
MissionSellect.Max:=NumberOfQuests;
MissionSellect.PageSize:=(1);
end;




procedure TForm9.MissionSellectScroll(Sender: TObject; ScrollCode: TScrollCode;
  var ScrollPos: Integer);
begin
  X:=ScrollPos;
  Icomma:= pos (',',Q_Struct[X]);
  Idot:= pos ('.',Q_Struct[X]);


 Q_Reward_Disp_1.Caption:=Copy (Q_Struct[X],1,Icomma-1 );
 Q_Reward_Disp_2.Caption:=Copy (Q_Struct[X],Icomma+1,Idot-Icomma-1 );
 Q_Reward_Disp_3.Caption:=Copy (Q_Struct[X],Idot+1,30 );
 Q_Desription.Caption:=Q_Desc[X];
 Quest_Name.Caption:=Q_Name[X];


  I1:= pos ('1st',Q_Obj[X]);                  //decoding the quest string into objectives
    I2:= pos ('2nd',Q_Obj[X]);
      I3:= pos ('3rd',Q_Obj[X]);
        I4:= pos ('4th',Q_Obj[X]);

 utility:= copy (Q_Obj[X],I1+4,2);
 Label4.Caption:=utility;
  if utility = 'Vi' then       //When the first objective is to visit a specific place
      begin
      Dist:=(I2-I1);
        utility:=copy (Acode,I1+6,Dist);                                          //start from V with length 2
        CheckBox1.Caption:=(' Objective1:Visit the coordinates '+ utility );
        utility:='' ;
      end
  else if utility = 'Bu' then    //When the objective is to buy specific item
      begin
        utility:=copy (Acode,I1+5,(I2-I1));
        CheckBox1.Caption:=(' Objective1:Buy '+ utility );
        utility:='';
      end
  else if utility = 'Se' then    //When the objective is to buy specific item
      begin
        utility:=copy (Acode,I1+6,(I2-I1));
        CheckBox1.Caption:=(' Objective1:Buy '+ utility );
        utility:='';
      end ;

 utility:= copy (Q_Obj[X],I2+4,2);
 Label4.Caption:=utility;




end;



end.                                                                 //QuestReading
