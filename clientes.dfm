object Fclientes: TFclientes
  Left = 0
  Top = 0
  Caption = 'Fclientes'
  ClientHeight = 66
  ClientWidth = 733
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
    Left = 160
    Top = 43
    Width = 37
    Height = 13
    Caption = 'Nombre'
  end
  object TLabel
    Left = 296
    Top = 43
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 296
    Top = 43
    Width = 66
    Height = 13
    Caption = 'No de Tarjeta'
  end
  object Label3: TLabel
    Left = 440
    Top = 43
    Width = 37
    Height = 13
    Caption = 'Adeudo'
  end
  object Label4: TLabel
    Left = 24
    Top = 43
    Width = 121
    Height = 13
    Caption = 'Numero de cliente'
  end
  object EditNombreCliente: TEdit
    Left = 160
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EditTarjeta: TEdit
    Left = 296
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EditAdeudo: TEdit
    Left = 440
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object ButtonClienteNuevo: TButton
    Left = 584
    Top = 16
    Width = 121
    Height = 21
    Caption = 'Cliente nuevo'
    TabOrder = 3
    OnClick = ButtonClienteNuevoClick
  end
  object EditID: TEdit
    Left = 24
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 4
  end
end
