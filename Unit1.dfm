object Form1: TForm1
  Left = 331
  Top = 216
  Width = 203
  Height = 143
  ActiveControl = Button4
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 15
    Top = 5
    Width = 75
    Height = 25
    Caption = '"&No"'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 60
    Top = 75
    Width = 75
    Height = 25
    Caption = '"'#1060#1083#1072#1078#1086#1082'"'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 105
    Top = 5
    Width = 75
    Height = 25
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 105
    Top = 40
    Width = 75
    Height = 25
    Caption = '"Cancel"'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Check: TCheckBox
    Left = 20
    Top = 45
    Width = 76
    Height = 17
    Caption = #1060#1083#1072#1078#1086#1082
    TabOrder = 4
    OnClick = CheckClick
  end
end
