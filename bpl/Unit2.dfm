object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form from BPL'
  ClientHeight = 509
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 200
    Width = 101
    Height = 13
    Caption = 'Numero de Empleado'
  end
  object Label2: TLabel
    Left = 8
    Top = 225
    Width = 37
    Height = 13
    Caption = 'Nombre'
  end
  object Label3: TLabel
    Left = 8
    Top = 254
    Width = 78
    Height = 13
    Caption = 'Apellido paterno'
  end
  object Label4: TLabel
    Left = 8
    Top = 281
    Width = 80
    Height = 13
    Caption = 'Apellido Materno'
  end
  object Label5: TLabel
    Left = 8
    Top = 305
    Width = 35
    Height = 13
    Caption = 'Horario'
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 153
    Height = 49
    Caption = 'Mostrar empleados'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 8
    Top = 63
    Width = 153
    Height = 97
    ItemHeight = 13
    TabOrder = 1
    OnClick = ListBox1Click
  end
  object Button2: TButton
    Left = 167
    Top = 8
    Width = 153
    Height = 49
    Caption = 'Con Hilos'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 167
    Top = 63
    Width = 153
    Height = 49
    Caption = 'Sin hilos'
    TabOrder = 3
    OnClick = Button3Click
  end
  object id: TEdit
    Left = 131
    Top = 197
    Width = 153
    Height = 21
    TabOrder = 4
  end
  object Nombre: TEdit
    Left = 131
    Top = 224
    Width = 153
    Height = 21
    TabOrder = 5
  end
  object Apellido: TEdit
    Left = 131
    Top = 251
    Width = 153
    Height = 21
    TabOrder = 6
  end
  object apellido2: TEdit
    Left = 131
    Top = 278
    Width = 153
    Height = 21
    TabOrder = 7
  end
  object Button4: TButton
    Left = 8
    Top = 396
    Width = 276
    Height = 52
    Caption = 'Guardar'
    TabOrder = 8
    OnClick = Button4Click
  end
  object RadioGroup1: TRadioGroup
    Left = 131
    Top = 305
    Width = 153
    Height = 85
    Caption = 'Horario'
    TabOrder = 9
  end
  object RadioButton1: TRadioButton
    Left = 149
    Top = 325
    Width = 113
    Height = 17
    Caption = 'Matutino'
    TabOrder = 10
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 149
    Top = 348
    Width = 113
    Height = 17
    Caption = 'Vespertino'
    TabOrder = 11
    OnClick = RadioButton2Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\LAHI\capacitacion\Caja\db\caja.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 232
    Top = 464
  end
end
