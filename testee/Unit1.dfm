object FrmMain: TFrmMain
  Left = 318
  Top = 347
  Width = 211
  Height = 113
  Caption = 'FrmMain'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 15
    Top = 10
    Width = 75
    Height = 25
    TabOrder = 0
    OnClick = BitBtn1Click
    Kind = bkNo
  end
  object Button1: TButton
    Left = 115
    Top = 10
    Width = 75
    Height = 25
    TabOrder = 1
    OnClick = Button1Click
  end
  object BitBtn2: TBitBtn
    Left = 115
    Top = 45
    Width = 75
    Height = 25
    TabOrder = 2
    OnClick = BitBtn2Click
    Kind = bkCancel
  end
  object CheckBox1: TCheckBox
    Left = 20
    Top = 50
    Width = 71
    Height = 17
    Caption = #1060#1083#1072#1078#1086#1082
    TabOrder = 3
  end
end
