object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Form9'
  ClientHeight = 593
  ClientWidth = 512
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 160
    Top = 8
    Width = 177
    Height = 33
    Shape = stRoundRect
  end
  object Quest_Name: TLabel
    Left = 176
    Top = 16
    Width = 146
    Height = 13
    Caption = 'Quest Name Is Displayed Here'
  end
  object Shape2: TShape
    Left = 64
    Top = 56
    Width = 385
    Height = 129
  end
  object Shape3: TShape
    Left = 58
    Top = 224
    Width = 105
    Height = 49
  end
  object Shape4: TShape
    Left = 210
    Top = 224
    Width = 97
    Height = 49
  end
  object Shape5: TShape
    Left = 354
    Top = 224
    Width = 105
    Height = 49
  end
  object Q_Desription: TLabel
    AlignWithMargins = True
    Left = 72
    Top = 64
    Width = 369
    Height = 105
    AutoSize = False
    Caption = 'Quest description will be showed here'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label1: TLabel
    Left = 68
    Top = 229
    Width = 83
    Height = 13
    Caption = 'XP for completion'
  end
  object Label2: TLabel
    Left = 219
    Top = 229
    Width = 77
    Height = 13
    Caption = '$ for completion'
  end
  object Label3: TLabel
    Left = 373
    Top = 229
    Width = 78
    Height = 13
    Caption = 'Special Rewards'
  end
  object Q_Reward_Disp_2: TLabel
    Left = 242
    Top = 248
    Width = 26
    Height = 13
    Caption = 'x-x-x'
  end
  object Q_Reward_Disp_3: TLabel
    Left = 394
    Top = 248
    Width = 26
    Height = 13
    Caption = 'x-x-x'
  end
  object Q_Reward_Disp_1: TLabel
    Left = 82
    Top = 248
    Width = 26
    Height = 13
    Caption = 'x-x-x'
  end
  object Label4: TLabel
    Left = 328
    Top = 320
    Width = 31
    Height = 13
    Caption = 'Label4'
  end
  object MissionSellect: TScrollBar
    Left = 58
    Top = 288
    Width = 401
    Height = 23
    Hint = 'scroll to select quest'
    Min = 1
    PageSize = 1
    ParentShowHint = False
    Position = 1
    ShowHint = True
    TabOrder = 0
    OnScroll = MissionSellectScroll
  end
  object CheckBox1: TCheckBox
    Left = 54
    Top = 340
    Width = 405
    Height = 17
    Caption = 'Objective1:'
    Enabled = False
    TabOrder = 1
  end
  object CheckBox2: TCheckBox
    Left = 54
    Top = 365
    Width = 405
    Height = 17
    Caption = 'Objective2:'
    Enabled = False
    TabOrder = 2
  end
  object CheckBox3: TCheckBox
    Left = 54
    Top = 390
    Width = 405
    Height = 17
    Caption = 'Objective3:'
    Enabled = False
    TabOrder = 3
  end
  object CheckBox4: TCheckBox
    Left = 54
    Top = 415
    Width = 405
    Height = 17
    Caption = 'Objective4:'
    Enabled = False
    TabOrder = 4
  end
  object CheckBox5: TCheckBox
    Left = 54
    Top = 440
    Width = 405
    Height = 17
    Caption = 'Objective5:'
    Enabled = False
    TabOrder = 5
  end
  object CheckBox6: TCheckBox
    Left = 54
    Top = 465
    Width = 405
    Height = 17
    Caption = 'Objective6:'
    Enabled = False
    TabOrder = 6
  end
  object CheckBox7: TCheckBox
    Left = 54
    Top = 490
    Width = 405
    Height = 17
    Caption = 'Objective7:'
    Enabled = False
    TabOrder = 7
  end
  object CheckBox8: TCheckBox
    Left = 54
    Top = 515
    Width = 405
    Height = 17
    Caption = 'Objective8:'
    Enabled = False
    TabOrder = 8
  end
end
