object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form from BPL'
  ClientHeight = 372
  ClientWidth = 625
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
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
  end
end