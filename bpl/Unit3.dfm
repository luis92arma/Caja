object Form3: TForm3
  Left = 0
  Top = 0
  Align = alLeft
  Caption = 'Form3'
  ClientHeight = 248
  ClientWidth = 143
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 0
    Top = 0
    Width = 143
    Height = 21
    Align = alTop
    Enabled = False
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 121
  end
  object Edit2: TEdit
    Left = 0
    Top = 21
    Width = 143
    Height = 21
    Align = alTop
    TabOrder = 1
    Text = 'Edit2'
    ExplicitLeft = 8
    ExplicitTop = 35
    ExplicitWidth = 121
  end
  object Edit3: TEdit
    Left = 0
    Top = 42
    Width = 143
    Height = 21
    Align = alTop
    TabOrder = 2
    Text = 'Edit3'
    ExplicitLeft = 8
    ExplicitTop = 62
    ExplicitWidth = 121
  end
  object Edit4: TEdit
    Left = 0
    Top = 63
    Width = 143
    Height = 21
    Align = alTop
    TabOrder = 3
    Text = 'Edit4'
    ExplicitLeft = 14
    ExplicitTop = 89
    ExplicitWidth = 121
  end
  object RadioGroup1: TRadioGroup
    Left = 0
    Top = 84
    Width = 143
    Height = 105
    Align = alTop
    Caption = 'RadioGroup1'
    TabOrder = 4
    ExplicitLeft = 8
    ExplicitTop = 116
    ExplicitWidth = 121
  end
  object RadioButton1: TRadioButton
    Left = 8
    Top = 109
    Width = 143
    Height = 17
    Align = alCustom
    Caption = 'Matutino'
    TabOrder = 5
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 8
    Top = 132
    Width = 113
    Height = 17
    Caption = 'Vepertino'
    TabOrder = 6
    OnClick = RadioButton2Click
  end
  object Button1: TButton
    Left = 0
    Top = 189
    Width = 143
    Height = 57
    Align = alTop
    Caption = 'Actualizar'
    TabOrder = 7
    OnClick = Button1Click
    ExplicitLeft = 8
    ExplicitTop = 227
    ExplicitWidth = 121
  end
  object ConnectionSQLite: TFDConnection
    ConnectionName = 'ConnecSQLite'
    Params.Strings = (
      'Database=C:\LAHI\capacitacion\Caja\db\caja.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 168
    Top = 216
  end
end
