unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Unit5, UDM, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Mask, clientes;

type
  TForm4 = class(TForm)
    ButtonGetCientes: TButton;
    ListBox1: TListBox;
    ListBoxVenta: TListBox;
    prodEdit: TEdit;
    StaticText1: TStaticText;
    ButtonAddProduct: TButton;
    totalButton: TButton;
    totalEdit: TEdit;
    pagarButton: TButton;
    EditMonto: TEdit;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    ivaEdit: TEdit;
    StaticText4: TStaticText;
    EditCambio: TEdit;
    StaticText5: TStaticText;
    otraVentaButton: TButton;
    ClienteNuevoButton: TButton;
    EmpleadosButton: TButton;
    procedure ButtonGetCientesClick(Sender: TObject);
    procedure ButtonAddProductClick(Sender: TObject);
    procedure totalButtonClick(Sender: TObject);
    procedure pagarButtonClick(Sender: TObject);
    procedure otraVentaButtonClick(Sender: TObject);
    procedure ClienteNuevoButtonClick(Sender: TObject);
    procedure EmpleadosButtonClick(Sender: TObject);
  private
    { Private declarations }
    Empleado: CajaClass;
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.ButtonAddProductClick(Sender: TObject);
begin
 Empleado.getProducto(StrToInt(prodEdit.Text), ListBoxVenta);
 prodEdit.Clear;
end;

procedure TForm4.ButtonGetCientesClick(Sender: TObject);
begin
   //Empleado.getEmpleado();
   Empleado.getClientes(ListBox1);
end;

procedure TForm4.ClienteNuevoButtonClick(Sender: TObject);
begin
  Empleado.terminarVenta();
  ListBoxVenta.Clear;
  totalEdit.Clear;
  EditCambio.Clear;
  EditMonto.Clear;
  //Visible := False;
  try
    Fclientes.ShowModal;
  finally
    //Visible := True;
  end;
end;

procedure TForm4.EmpleadosButtonClick(Sender: TObject);
var
   Pack: HMODULE;
   ClassP: TPersistentClass;
begin
     Pack := LoadPackage('Package2.bpl');
     if Pack <> 0 then
     begin
       //ShowMessage('Si hay BPL');
       ClassP := GetClass('TForm2');
       if ClassP <> nil then
       with TComponentClass(ClassP).Create(Application) as TCustomForm do
       begin
         //ShowMessage('Si hay clase');
         ShowModal;
       end;
     end;
end;

procedure TForm4.otraVentaButtonClick(Sender: TObject);
begin
   ListBoxVenta.Clear;
end;

procedure TForm4.pagarButtonClick(Sender: TObject);
begin
 Empleado.pagar(StrToCurr(EditMonto.Text), EditCambio);
end;

procedure TForm4.totalButtonClick(Sender: TObject);
begin
  Empleado.getTotal(totalEdit);
end;

end.
