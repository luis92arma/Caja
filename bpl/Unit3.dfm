object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 293
  ClientWidth = 148
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
    Left = 8
    Top = 8
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 8
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 8
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 8
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 3
    Text = 'Edit4'
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 116
    Width = 121
    Height = 105
    Caption = 'RadioGroup1'
    TabOrder = 4
  end
  object RadioButton1: TRadioButton
    Left = 16
    Top = 140
    Width = 113
    Height = 17
    Caption = 'Matutino'
    TabOrder = 5
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 16
    Top = 163
    Width = 113
    Height = 17
    Caption = 'Vepertino'
    TabOrder = 6
    OnClick = RadioButton2Click
  end
  object Button1: TButton
    Left = 8
    Top = 227
    Width = 121
    Height = 57
    Caption = 'Actualizar'
    TabOrder = 7
    OnClick = Button1Click
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
