object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 201
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnMouseMove = Startup
  OnShow = resource_gen
  PixelsPerInch = 96
  TextHeight = 13
  object Shape4: TShape
    Left = 272
    Top = 88
    Width = 137
    Height = 25
  end
  object Shape3: TShape
    Left = 272
    Top = 64
    Width = 137
    Height = 25
  end
  object Shape2: TShape
    Left = 111
    Top = 8
    Width = 97
    Height = 185
  end
  object Shape1: TShape
    Left = 8
    Top = 8
    Width = 97
    Height = 185
  end
  object SELL: TLabel
    Left = 140
    Top = 8
    Width = 34
    Height = 19
    Caption = 'SELL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object moneycount: TLabel
    Left = 368
    Top = 69
    Width = 24
    Height = 13
    Caption = '1000'
  end
  object BUY: TLabel
    Left = 40
    Top = 8
    Width = 30
    Height = 19
    Caption = 'BUY'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object spacecount: TLabel
    Left = 368
    Top = 95
    Width = 24
    Height = 13
    Caption = '1000'
  end
  object Label1: TLabel
    Left = 282
    Top = 69
    Width = 32
    Height = 13
    Caption = 'Money'
  end
  object Label2: TLabel
    Left = 282
    Top = 95
    Width = 61
    Height = 13
    Caption = 'Cargo Space'
  end
  object checkin: TLabel
    Left = 296
    Top = 14
    Width = 4
    Height = 13
    Caption = '.'
  end
  object Button1: TButton
    Left = 368
    Top = 2
    Width = 75
    Height = 25
    Caption = 'EXIT'
    TabOrder = 0
    OnClick = Button1Click
  end
  object BIron: TButton
    Left = 19
    Top = 33
    Width = 75
    Height = 25
    Caption = 'Iron'
    TabOrder = 1
    OnClick = BIronClick
    OnMouseMove = Startup
  end
  object SIron: TButton
    Left = 124
    Top = 33
    Width = 75
    Height = 25
    Caption = 'Iron'
    TabOrder = 2
    OnMouseMove = Startup
  end
  object BWater: TButton
    Left = 19
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Water'
    TabOrder = 3
    OnClick = BWaterClick
    OnMouseMove = Startup
  end
  object SWater: TButton
    Left = 124
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Water'
    TabOrder = 4
    OnMouseMove = Startup
  end
  object BCopper: TButton
    Left = 19
    Top = 95
    Width = 75
    Height = 25
    Caption = 'Copper'
    TabOrder = 5
    OnClick = BCopperClick
    OnMouseMove = Startup
  end
  object SCopper: TButton
    Left = 124
    Top = 95
    Width = 75
    Height = 25
    Caption = 'Copper'
    TabOrder = 6
    OnMouseMove = Startup
  end
  object BPlatinum: TButton
    Left = 19
    Top = 157
    Width = 75
    Height = 25
    Caption = 'Platinum'
    TabOrder = 7
    OnClick = BPlatinumClick
    OnMouseMove = Startup
  end
  object SPlatinum: TButton
    Left = 124
    Top = 157
    Width = 75
    Height = 25
    Caption = 'Platinum'
    TabOrder = 8
    OnMouseMove = Startup
  end
  object BUranium: TButton
    Left = 19
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Uranium'
    TabOrder = 9
    OnClick = BUraniumClick
    OnMouseMove = Startup
  end
  object SUranium: TButton
    Left = 124
    Top = 126
    Width = 75
    Height = 25
    Caption = 'Uranium'
    TabOrder = 10
    OnMouseMove = Startup
  end
end
