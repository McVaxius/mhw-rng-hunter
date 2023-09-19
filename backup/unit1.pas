unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ComCtrls,
  StdCtrls, LCLType, ExtCtrls, ShellApi, lclintf, Types;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ComboBox1: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure cb1change(Sender: TObject);
    procedure cb2change(Sender: TObject);
    procedure FormCreate(Sender: TObject; var CloseAction: TCloseAction);
    procedure vanillaclick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
//      REN project*.* dddjet*.*
      ShellExecute(0,nil, PChar('cmd'),PChar('/c npcupdate.bat '+ComboBox4.caption+' '+RightStr(ComboBox4.Caption,3)+' '+RightStr(ComboBox5.caption,3)),nil,1);
//      showmessage('/c npcupdate.bat '+ComboBox4.caption+' '+RightStr(ComboBox4.Caption,3)+' '+RightStr(ComboBox5.caption,3));
      Label1.Caption := ComboBox1.Caption+' Updated!';
end;

procedure TForm1.Button2Click(Sender: TObject);
var
Reply, BoxStyle: Integer;
sum: Integer;
count: Integer;
np2choice: integer;
np2choiceT: String;
begin
//this is important or nothign will actually be random
randomize;

BoxStyle := MB_ICONQUESTION + MB_YESNO;
Reply := Application.MessageBox('Are you sure you want to randomize all npcs?', 'To randomize npcs', BoxStyle);
if Reply = IDNO then exit;

//np2choice := random(1);
//np2choiceT := IntToStr(np2choice);
//showmessage(np2choiceT);
//exit;

sum := 0;
for count := 1 to 73 do
  begin
    sum := sum + count;
    //trigger randomization here
    np2choice := random(73);
    np2choiceT := IntToStr(np2choice);
    ComboBox4.ItemIndex:=count-1;
    ComboBox5.ItemIndex:=np2choice;
    ShellExecute(0,nil, PChar('cmd'),PChar('/c npcupdate.bat '+ComboBox4.caption+' '+RightStr(ComboBox4.Caption,3)+' '+RightStr(ComboBox5.caption,3)),nil,1);
    if sum = 73 then break;
  end;

Label1.Caption := 'Randomization complete! May the Handler have mercy on your soul!';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 Close;
end;

procedure TForm1.cb1change(Sender: TObject);
var
   s: String;
begin
    ComboBox3.ItemIndex:=ComboBox1.ItemIndex;
    ComboBox4.ItemIndex:=ComboBox1.ItemIndex;
    //s:='Comboindex:'+IntToStr(ComboBox1.ItemIndex);
    //ShowMessage(s);
end;

procedure TForm1.cb2change(Sender: TObject);
begin
     ComboBox5.ItemIndex:=ComboBox3.ItemIndex;
end;

procedure TForm1.FormCreate(Sender: TObject; var CloseAction: TCloseAction);
begin
      ComboBox1.caption:='Original NPC';
      ComboBox3.caption:='Change to this NPC';
      ComboBox4.caption:='dont touch';
      ComboBox5.caption:='dont touch';

      ComboBox1.Items.Clear;             //Delete all existing choices
      ComboBox1.Items.Add('npc001-Commander');        //Add an choice
      ComboBox1.Items.Add('npc002-The Handler');        //Add an choice
      ComboBox1.Items.Add('npc003-Field Team Leader');        //Add an choice
      ComboBox1.Items.Add('npc004-Provisions Manager');        //Add an choice
      ComboBox1.Items.Add('npc005-Analytics Director');        //Add an choice
      ComboBox1.Items.Add('npc006-Tech Chief');        //Add an choice
      ComboBox1.Items.Add('npc007-Provisions Stockpile');        //Add an choice
      ComboBox1.Items.Add('npc009-Chief Ecologist');        //Add an choice
      ComboBox1.Items.Add('npc010-Chief Botanist');        //Add an choice
      ComboBox1.Items.Add('npc011-Elder Melder');        //Add an choice
      ComboBox1.Items.Add('npc012-Second Fleet Master');        //Add an choice
      ComboBox1.Items.Add('npc014-Armory');        //Add an choice
      ComboBox1.Items.Add('npc015-Meowscular Chef');        //Add an choice
      ComboBox1.Items.Add('npc016-Housekeeper');        //Add an choice
      ComboBox1.Items.Add('npc017-The Huntsman');        //Add an choice
      ComboBox1.Items.Add('npc018-The Tracker');        //Add an choice
      ComboBox1.Items.Add('npc019-Admiral');        //Add an choice
      ComboBox1.Items.Add('npc020-The Seeker');        //Add an choice
      ComboBox1.Items.Add('npc021-Third Fleet Master');        //Add an choice
      ComboBox1.Items.Add('npc022-Third Fleet Provisions');        //Add an choice
      ComboBox1.Items.Add('npc023-Lynian Expert');        //Add an choice
      ComboBox1.Items.Add('npc024-First Wyverian');        //Add an choice
      ComboBox1.Items.Add('npc025-Excitable A-Lister');        //Add an choice
      ComboBox1.Items.Add('npc026-Serious Handler');        //Add an choice
      ComboBox1.Items.Add('npc027-Missing Scholar');        //Add an choice
      ComboBox1.Items.Add('npc028-Jovial Scholar');        //Add an choice
      ComboBox1.Items.Add('npc029-Upbeat Scholar');        //Add an choice
      ComboBox1.Items.Add('npc030-Lively Scholar');        //Add an choice
      ComboBox1.Items.Add('npc032-Captain');        //Add an choice
      ComboBox1.Items.Add('npc033-Housekeeper');        //Add an choice
      ComboBox1.Items.Add('npc034-Housekeeper');        //Add an choice
      ComboBox1.Items.Add('npc035-Housekeeper');        //Add an choice
      ComboBox1.Items.Add('npc036-First Wyverian');        //Add an choice
      ComboBox1.Items.Add('npc037-Piscine Researcher');        //Add an choice
      ComboBox1.Items.Add('npc038-Endemic Life Researcher');        //Add an choice
      ComboBox1.Items.Add('npc039-Lynian Researcher');        //Add an choice
      ComboBox1.Items.Add('npc040-First Wyverian');        //Add an choice
      ComboBox1.Items.Add('npc102-Feisty Fiver');        //Add an choice
      ComboBox1.Items.Add('npc103-Gentle Fourth');        //Add an choice
      ComboBox1.Items.Add('npc104-Eager Fourth');        //Add an choice
      ComboBox1.Items.Add('npc105-Cool Fiver');        //Add an choice
      ComboBox1.Items.Add('npc106-Fun Fourth');        //Add an choice
      ComboBox1.Items.Add('npc107-Forceful Fiver');        //Add an choice
      ComboBox1.Items.Add('npc108-Timid Fiver');        //Add an choice
      ComboBox1.Items.Add('npc109-Sisterly Fourth');        //Add an choice
      ComboBox1.Items.Add('npc111-Research Hunter');        //Add an choice
      ComboBox1.Items.Add('npc112-Smart Biologist');        //Add an choice
      ComboBox1.Items.Add('npc113-Impatient Biologist');        //Add an choice
      ComboBox1.Items.Add('npc114-Laid-back Botanist');        //Add an choice
      ComboBox1.Items.Add('npc116-Fiver Bro');        //Add an choice
      ComboBox1.Items.Add('npc117-Soup Felyne');        //Add an choice
      ComboBox1.Items.Add('npc118-Oven Felyne');        //Add an choice
      ComboBox1.Items.Add('npc121-Softspoken Fourth');        //Add an choice
      ComboBox1.Items.Add('npc123-Hotblooded Fourth');        //Add an choice
      ComboBox1.Items.Add('npc124-Easygoing Fiver');        //Add an choice
      ComboBox1.Items.Add('npc125-Airship Engineer');        //Add an choice
      ComboBox1.Items.Add('npc130-Cheerful Scholar');        //Add an choice
      ComboBox1.Items.Add('npc131-Shy Scholar');        //Add an choice
      ComboBox1.Items.Add('npc134-Squad Manager');        //Add an choice
      ComboBox1.Items.Add('npc140-Unavailable');        //Add an choice
      ComboBox1.Items.Add('npc251-Apple Enthusiast');        //Add an choice
      ComboBox1.Items.Add('npc252-Engaged Fiver');        //Add an choice
      ComboBox1.Items.Add('npc253-Fish Aficionado');        //Add an choice
      ComboBox1.Items.Add('npc254-Hide Expert');        //Add an choice
      ComboBox1.Items.Add('npc255-Occupied Fiver');        //Add an choice
      ComboBox1.Items.Add('npc256-Busy Fiver');        //Add an choice
      ComboBox1.Items.Add('npc257-Commission Member');        //Add an choice
      ComboBox1.Items.Add('npc258-Commission Member');        //Add an choice
      ComboBox1.Items.Add('npc301-Hub Lass');        //Add an choice
      ComboBox1.Items.Add('npc302-Arena Lass');        //Add an choice
      ComboBox1.Items.Add('npc303-Hub Provisions');        //Add an choice
      ComboBox1.Items.Add('npc304-Squad Manager (Event Manager)');        //Add an choice
      ComboBox1.Items.Add('npc305-Hopeful Felyne');        //Add an choice

      ComboBox3.Items.Clear;             //Delete all existing choices
      ComboBox3.Items.Add('npc001-Commander');        //Add an choice
      ComboBox3.Items.Add('npc002-The Handler');        //Add an choice
      ComboBox3.Items.Add('npc003-Field Team Leader');        //Add an choice
      ComboBox3.Items.Add('npc004-Provisions Manager');        //Add an choice
      ComboBox3.Items.Add('npc005-Analytics Director');        //Add an choice
      ComboBox3.Items.Add('npc006-Tech Chief');        //Add an choice
      ComboBox3.Items.Add('npc007-Provisions Stockpile');        //Add an choice
      ComboBox3.Items.Add('npc009-Chief Ecologist');        //Add an choice
      ComboBox3.Items.Add('npc010-Chief Botanist');        //Add an choice
      ComboBox3.Items.Add('npc011-Elder Melder');        //Add an choice
      ComboBox3.Items.Add('npc012-Second Fleet Master');        //Add an choice
      ComboBox3.Items.Add('npc014-Armory');        //Add an choice
      ComboBox3.Items.Add('npc015-Meowscular Chef');        //Add an choice
      ComboBox3.Items.Add('npc016-Housekeeper');        //Add an choice
      ComboBox3.Items.Add('npc017-The Huntsman');        //Add an choice
      ComboBox3.Items.Add('npc018-The Tracker');        //Add an choice
      ComboBox3.Items.Add('npc019-Admiral');        //Add an choice
      ComboBox3.Items.Add('npc020-The Seeker');        //Add an choice
      ComboBox3.Items.Add('npc021-Third Fleet Master');        //Add an choice
      ComboBox3.Items.Add('npc022-Third Fleet Provisions');        //Add an choice
      ComboBox3.Items.Add('npc023-Lynian Expert');        //Add an choice
      ComboBox3.Items.Add('npc024-First Wyverian');        //Add an choice
      ComboBox3.Items.Add('npc025-Excitable A-Lister');        //Add an choice
      ComboBox3.Items.Add('npc026-Serious Handler');        //Add an choice
      ComboBox3.Items.Add('npc027-Missing Scholar');        //Add an choice
      ComboBox3.Items.Add('npc028-Jovial Scholar');        //Add an choice
      ComboBox3.Items.Add('npc029-Upbeat Scholar');        //Add an choice
      ComboBox3.Items.Add('npc030-Lively Scholar');        //Add an choice
      ComboBox3.Items.Add('npc032-Captain');        //Add an choice
      ComboBox3.Items.Add('npc033-Housekeeper');        //Add an choice
      ComboBox3.Items.Add('npc034-Housekeeper');        //Add an choice
      ComboBox3.Items.Add('npc035-Housekeeper');        //Add an choice
      ComboBox3.Items.Add('npc036-First Wyverian');        //Add an choice
      ComboBox3.Items.Add('npc037-Piscine Researcher');        //Add an choice
      ComboBox3.Items.Add('npc038-Endemic Life Researcher');        //Add an choice
      ComboBox3.Items.Add('npc039-Lynian Researcher');        //Add an choice
      ComboBox3.Items.Add('npc040-First Wyverian');        //Add an choice
      ComboBox3.Items.Add('npc102-Feisty Fiver');        //Add an choice
      ComboBox3.Items.Add('npc103-Gentle Fourth');        //Add an choice
      ComboBox3.Items.Add('npc104-Eager Fourth');        //Add an choice
      ComboBox3.Items.Add('npc105-Cool Fiver');        //Add an choice
      ComboBox3.Items.Add('npc106-Fun Fourth');        //Add an choice
      ComboBox3.Items.Add('npc107-Forceful Fiver');        //Add an choice
      ComboBox3.Items.Add('npc108-Timid Fiver');        //Add an choice
      ComboBox3.Items.Add('npc109-Sisterly Fourth');        //Add an choice
      ComboBox3.Items.Add('npc111-Research Hunter');        //Add an choice
      ComboBox3.Items.Add('npc112-Smart Biologist');        //Add an choice
      ComboBox3.Items.Add('npc113-Impatient Biologist');        //Add an choice
      ComboBox3.Items.Add('npc114-Laid-back Botanist');        //Add an choice
      ComboBox3.Items.Add('npc116-Fiver Bro');        //Add an choice
      ComboBox3.Items.Add('npc117-Soup Felyne');        //Add an choice
      ComboBox3.Items.Add('npc118-Oven Felyne');        //Add an choice
      ComboBox3.Items.Add('npc121-Softspoken Fourth');        //Add an choice
      ComboBox3.Items.Add('npc123-Hotblooded Fourth');        //Add an choice
      ComboBox3.Items.Add('npc124-Easygoing Fiver');        //Add an choice
      ComboBox3.Items.Add('npc125-Airship Engineer');        //Add an choice
      ComboBox3.Items.Add('npc130-Cheerful Scholar');        //Add an choice
      ComboBox3.Items.Add('npc131-Shy Scholar');        //Add an choice
      ComboBox3.Items.Add('npc134-Squad Manager');        //Add an choice
      ComboBox3.Items.Add('npc140-Unavailable');        //Add an choice
      ComboBox3.Items.Add('npc251-Apple Enthusiast');        //Add an choice
      ComboBox3.Items.Add('npc252-Engaged Fiver');        //Add an choice
      ComboBox3.Items.Add('npc253-Fish Aficionado');        //Add an choice
      ComboBox3.Items.Add('npc254-Hide Expert');        //Add an choice
      ComboBox3.Items.Add('npc255-Occupied Fiver');        //Add an choice
      ComboBox3.Items.Add('npc256-Busy Fiver');        //Add an choice
      ComboBox3.Items.Add('npc257-Commission Member');        //Add an choice
      ComboBox3.Items.Add('npc258-Commission Member');        //Add an choice
      ComboBox3.Items.Add('npc301-Hub Lass');        //Add an choice
      ComboBox3.Items.Add('npc302-Arena Lass');        //Add an choice
      ComboBox3.Items.Add('npc303-Hub Provisions');        //Add an choice
      ComboBox3.Items.Add('npc304-Squad Manager (Event Manager)');        //Add an choice
      ComboBox3.Items.Add('npc305-Hopeful Felyne');        //Add an choice


      ComboBox4.Items.Clear;             //Delete all existing choices
      ComboBox4.Items.Add('npc001');        //Add an choice
      ComboBox4.Items.Add('npc002');        //Add an choice
      ComboBox4.Items.Add('npc003');        //Add an choice
      ComboBox4.Items.Add('npc004');        //Add an choice
      ComboBox4.Items.Add('npc005');        //Add an choice
      ComboBox4.Items.Add('npc006');        //Add an choice
      ComboBox4.Items.Add('npc007');        //Add an choice
      ComboBox4.Items.Add('npc009');        //Add an choice
      ComboBox4.Items.Add('npc010');        //Add an choice
      ComboBox4.Items.Add('npc011');        //Add an choice
      ComboBox4.Items.Add('npc012');        //Add an choice
      ComboBox4.Items.Add('npc014');        //Add an choice
      ComboBox4.Items.Add('npc015');        //Add an choice
      ComboBox4.Items.Add('npc016');        //Add an choice
      ComboBox4.Items.Add('npc017');        //Add an choice
      ComboBox4.Items.Add('npc018');        //Add an choice
      ComboBox4.Items.Add('npc019');        //Add an choice
      ComboBox4.Items.Add('npc020');        //Add an choice
      ComboBox4.Items.Add('npc021');        //Add an choice
      ComboBox4.Items.Add('npc022');        //Add an choice
      ComboBox4.Items.Add('npc023');        //Add an choice
      ComboBox4.Items.Add('npc024');        //Add an choice
      ComboBox4.Items.Add('npc025');        //Add an choice
      ComboBox4.Items.Add('npc026');        //Add an choice
      ComboBox4.Items.Add('npc027');        //Add an choice
      ComboBox4.Items.Add('npc028');        //Add an choice
      ComboBox4.Items.Add('npc029');        //Add an choice
      ComboBox4.Items.Add('npc030');        //Add an choice
      ComboBox4.Items.Add('npc032');        //Add an choice
      ComboBox4.Items.Add('npc033');        //Add an choice
      ComboBox4.Items.Add('npc034');        //Add an choice
      ComboBox4.Items.Add('npc035');        //Add an choice
      ComboBox4.Items.Add('npc036');        //Add an choice
      ComboBox4.Items.Add('npc037');        //Add an choice
      ComboBox4.Items.Add('npc038');        //Add an choice
      ComboBox4.Items.Add('npc039');        //Add an choice
      ComboBox4.Items.Add('npc040');        //Add an choice
      ComboBox4.Items.Add('npc102');        //Add an choice
      ComboBox4.Items.Add('npc103');        //Add an choice
      ComboBox4.Items.Add('npc104');        //Add an choice
      ComboBox4.Items.Add('npc105');        //Add an choice
      ComboBox4.Items.Add('npc106');        //Add an choice
      ComboBox4.Items.Add('npc107');        //Add an choice
      ComboBox4.Items.Add('npc108');        //Add an choice
      ComboBox4.Items.Add('npc109');        //Add an choice
      ComboBox4.Items.Add('npc111');        //Add an choice
      ComboBox4.Items.Add('npc112');        //Add an choice
      ComboBox4.Items.Add('npc113');        //Add an choice
      ComboBox4.Items.Add('npc114');        //Add an choice
      ComboBox4.Items.Add('npc116');        //Add an choice
      ComboBox4.Items.Add('npc117');        //Add an choice
      ComboBox4.Items.Add('npc118');        //Add an choice
      ComboBox4.Items.Add('npc121');        //Add an choice
      ComboBox4.Items.Add('npc123');        //Add an choice
      ComboBox4.Items.Add('npc124');        //Add an choice
      ComboBox4.Items.Add('npc125');        //Add an choice
      ComboBox4.Items.Add('npc130');        //Add an choice
      ComboBox4.Items.Add('npc131');        //Add an choice
      ComboBox4.Items.Add('npc134');        //Add an choice
      ComboBox4.Items.Add('npc140');        //Add an choice
      ComboBox4.Items.Add('npc251');        //Add an choice
      ComboBox4.Items.Add('npc252');        //Add an choice
      ComboBox4.Items.Add('npc253');        //Add an choice
      ComboBox4.Items.Add('npc254');        //Add an choice
      ComboBox4.Items.Add('npc255');        //Add an choice
      ComboBox4.Items.Add('npc256');        //Add an choice
      ComboBox4.Items.Add('npc257');        //Add an choice
      ComboBox4.Items.Add('npc258');        //Add an choice
      ComboBox4.Items.Add('npc301');        //Add an choice
      ComboBox4.Items.Add('npc302');        //Add an choice
      ComboBox4.Items.Add('npc303');        //Add an choice
      ComboBox4.Items.Add('npc304');        //Add an choice
      ComboBox4.Items.Add('npc305');        //Add an choice

      ComboBox5.Items.Clear;             //Delete all existing choices
      ComboBox5.Items.Add('npc001');        //Add an choice
      ComboBox5.Items.Add('npc002');        //Add an choice
      ComboBox5.Items.Add('npc003');        //Add an choice
      ComboBox5.Items.Add('npc004');        //Add an choice
      ComboBox5.Items.Add('npc005');        //Add an choice
      ComboBox5.Items.Add('npc006');        //Add an choice
      ComboBox5.Items.Add('npc007');        //Add an choice
      ComboBox5.Items.Add('npc009');        //Add an choice
      ComboBox5.Items.Add('npc010');        //Add an choice
      ComboBox5.Items.Add('npc011');        //Add an choice
      ComboBox5.Items.Add('npc012');        //Add an choice
      ComboBox5.Items.Add('npc014');        //Add an choice
      ComboBox5.Items.Add('npc015');        //Add an choice
      ComboBox5.Items.Add('npc016');        //Add an choice
      ComboBox5.Items.Add('npc017');        //Add an choice
      ComboBox5.Items.Add('npc018');        //Add an choice
      ComboBox5.Items.Add('npc019');        //Add an choice
      ComboBox5.Items.Add('npc020');        //Add an choice
      ComboBox5.Items.Add('npc021');        //Add an choice
      ComboBox5.Items.Add('npc022');        //Add an choice
      ComboBox5.Items.Add('npc023');        //Add an choice
      ComboBox5.Items.Add('npc024');        //Add an choice
      ComboBox5.Items.Add('npc025');        //Add an choice
      ComboBox5.Items.Add('npc026');        //Add an choice
      ComboBox5.Items.Add('npc027');        //Add an choice
      ComboBox5.Items.Add('npc028');        //Add an choice
      ComboBox5.Items.Add('npc029');        //Add an choice
      ComboBox5.Items.Add('npc030');        //Add an choice
      ComboBox5.Items.Add('npc032');        //Add an choice
      ComboBox5.Items.Add('npc033');        //Add an choice
      ComboBox5.Items.Add('npc034');        //Add an choice
      ComboBox5.Items.Add('npc035');        //Add an choice
      ComboBox5.Items.Add('npc036');        //Add an choice
      ComboBox5.Items.Add('npc037');        //Add an choice
      ComboBox5.Items.Add('npc038');        //Add an choice
      ComboBox5.Items.Add('npc039');        //Add an choice
      ComboBox5.Items.Add('npc040');        //Add an choice
      ComboBox5.Items.Add('npc102');        //Add an choice
      ComboBox5.Items.Add('npc103');        //Add an choice
      ComboBox5.Items.Add('npc104');        //Add an choice
      ComboBox5.Items.Add('npc105');        //Add an choice
      ComboBox5.Items.Add('npc106');        //Add an choice
      ComboBox5.Items.Add('npc107');        //Add an choice
      ComboBox5.Items.Add('npc108');        //Add an choice
      ComboBox5.Items.Add('npc109');        //Add an choice
      ComboBox5.Items.Add('npc111');        //Add an choice
      ComboBox5.Items.Add('npc112');        //Add an choice
      ComboBox5.Items.Add('npc113');        //Add an choice
      ComboBox5.Items.Add('npc114');        //Add an choice
      ComboBox5.Items.Add('npc116');        //Add an choice
      ComboBox5.Items.Add('npc117');        //Add an choice
      ComboBox5.Items.Add('npc118');        //Add an choice
      ComboBox5.Items.Add('npc121');        //Add an choice
      ComboBox5.Items.Add('npc123');        //Add an choice
      ComboBox5.Items.Add('npc124');        //Add an choice
      ComboBox5.Items.Add('npc125');        //Add an choice
      ComboBox5.Items.Add('npc130');        //Add an choice
      ComboBox5.Items.Add('npc131');        //Add an choice
      ComboBox5.Items.Add('npc134');        //Add an choice
      ComboBox5.Items.Add('npc140');        //Add an choice
      ComboBox5.Items.Add('npc251');        //Add an choice
      ComboBox5.Items.Add('npc252');        //Add an choice
      ComboBox5.Items.Add('npc253');        //Add an choice
      ComboBox5.Items.Add('npc254');        //Add an choice
      ComboBox5.Items.Add('npc255');        //Add an choice
      ComboBox5.Items.Add('npc256');        //Add an choice
      ComboBox5.Items.Add('npc257');        //Add an choice
      ComboBox5.Items.Add('npc258');        //Add an choice
      ComboBox5.Items.Add('npc301');        //Add an choice
      ComboBox5.Items.Add('npc302');        //Add an choice
      ComboBox5.Items.Add('npc303');        //Add an choice
      ComboBox5.Items.Add('npc304');        //Add an choice
      ComboBox5.Items.Add('npc305');        //Add an choice

end;

procedure TForm1.vanillaclick(Sender: TObject);
var
      Reply, BoxStyle: Integer;
begin
      BoxStyle := MB_ICONQUESTION + MB_YESNO;
      Reply := Application.MessageBox('Are you sure you want to reset all npcs to vanilla?', 'To reset npcs to vanilla', BoxStyle);
      if Reply = IDNO then exit;
      ShellExecute(0,nil, PChar('cmd'),PChar('/c vanilla.bat'),nil,1);
end;

end.

