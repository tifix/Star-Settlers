object Form4: TForm4
  Left = 0
  Top = 0
  ClientHeight = 201
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 80
    Top = 160
    Width = 281
    Height = 41
  end
  object Button1: TButton
    Left = 368
    Top = 0
    Width = 75
    Height = 25
    Caption = 'EXIT'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Trade: TButton
    Left = 88
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Trade'
    TabOrder = 1
    OnClick = TradeClick
  end
  object Recruit: TButton
    Left = 184
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Recruit'
    TabOrder = 2
    OnClick = RecruitClick
  end
  object Fight: TButton
    Left = 280
    Top = 168
    Width = 68
    Height = 25
    Caption = 'Fight'
    TabOrder = 3
    OnClick = FightClick
  end
end
