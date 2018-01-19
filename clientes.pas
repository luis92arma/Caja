unit clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit5;

type
  TFclientes = class(TForm)
    Label1: TLabel;
    EditNombreCliente: TEdit;
    EditTarjeta: TEdit;
    Label2: TLabel;
    EditAdeudo: TEdit;
    Label3: TLabel;
    ButtonClienteNuevo: TButton;
    EditID: TEdit;
    Label4: TLabel;
    procedure ButtonClienteNuevoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fclientes: TFclientes;
  VarClientes: CajaClass;

implementation

{$R *.dfm}

procedure TFclientes.ButtonClienteNuevoClick(Sender: TObject);
begin
     VarClientes.AddNewCliente(EditID.Text, EditNombreCliente.Text, EditTarjeta.Text, EditAdeudo.Text );
end;

end.
