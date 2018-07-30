object Form5: TForm5
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
    Left = 32
    Top = 160
    Width = 377
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
  object Collect: TButton
    Left = 40
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Collect'
    TabOrder = 1
    OnClick = CollectClick
  end
  object Upgrade: TButton
    Left = 136
    Top = 168
    Width = 68
    Height = 25
    Caption = 'Upgrade'
    TabOrder = 2
    OnClick = UpgradeClick
  end
  object Refuel: TButton
    Left = 224
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Refuel'
    TabOrder = 3
    OnClick = RefuelClick
  end
  object Resuply: TButton
    Left = 320
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Resuply'
    TabOrder = 4
    OnClick = ResuplyClick
  end
end
