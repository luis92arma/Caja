unit unit5;

interface

uses UDM, System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Dialogs;


type
  CajaClass = class

  Fid_empleado: Integer;
  Fnombre_empleado: String;
  Fap_empleado: String;
  Fam_empledo: String;
  Fhora_entrada_empleado: String;
  Fhora_salida_empleado: String;

  Fid_venta: Integer;
  Ftotal_venta: real;
  Fiva_venta: real;
  Fmonto_recibido_venta: real;
  Fcambio_venta: real;

  Fid_exc: Integer;
  Ftotal_exc: real;
  Fmonto_exc: real;
  Fcambio_exc: real;

  Fid_cliente: integer;
  Fnombre_cliente: String;
  Fadeudo_cliente: real;
  //q: TFDQuery;
  Ftotal: Integer;
  
  private
  public
    constructor Create();
    function getEmpleado(id: Integer): TDataSet;
    procedure getProducto(id: Integer; lb: TListBox);
    procedure getClientes(lb: TListBox );
    procedure sumaTotal(num: Currency);
    procedure getTotal(e1: TEdit);
    procedure getCambio(e: TEdit);
    procedure getIVA(e: TEdit);
    procedure pagar(monto: Currency; e: TEdit);
    procedure getVentas();

  published
    property id_empleado: Integer read Fid_empleado;
    property nombre_empleado: String read Fnombre_empleado write Fnombre_empleado;
    property ap_empleado: String read Fap_empleado write Fap_empleado;
    property hora_entradaemp: String read Fhora_entrada_empleado;
    property hora_salidaemp: String read Fhora_salida_empleado;

    property id_venta: Integer read Fid_venta write Fid_venta;
    property total_venta: real read Ftotal_venta write Ftotal_venta;
    property iva_venta: real read Fiva_venta write Fiva_venta;
    property monto_venta: real read Fmonto_recibido_venta write Fmonto_recibido_venta;
    property cambio_venta: real read Fcambio_venta write Fcambio_venta;

    property id_exc: Integer read Fid_exc write Fid_exc;
    property total_exc: real read Ftotal_exc write Ftotal_venta;
    property monto_exc: real read Fmonto_exc write Fmonto_exc;
    property cambio_exc: real read Fmonto_exc write Fmonto_exc;

    property id_cliente: Integer read Fid_cliente write Fid_cliente;
    property nombre_clinte: String read Fnombre_cliente write Fnombre_cliente;
    property adeudo_clinet: real read Fadeudo_cliente write Fadeudo_cliente;

End;

var
  caja: CajaClass;
  q: TFDQuery;
  total: Currency;
  aux: Currency;
  monto: Currency;
  iva: Currency;
  cambio: Currency;

implementation
{ CajaClass }
 constructor CajaClass.Create;
begin

end;

procedure CajaClass.getCambio(e: TEdit);
begin
  //e.Text := CurrToStr()
end;

procedure CajaClass.getClientes(lb: TListBox);
begin
   q := TFDQuery.Create(nil);
   try
      q.Connection := dm.db;
      q.SQL.Add('SELECT * FROM cliente');
      //Fnombre_cliente := q.FieldByName('id_cliente').AsString;
      //q.Params.ParamByName('id_cliente').Value:=1;
      q.Open;
      while not q.Eof do
      begin
           //Fnombre_cliente := q.FieldByName('').AsString;
           lb.Items.Add(q.FieldByName('id_cliente').AsString+'--');
           q.Next;
      end;
   finally
     FreeAndNil(q);
   end;
end;

function CajaClass.getEmpleado(id: Integer): TDataSet;
  begin
    q := TFDQuery.Create(nil);
    q.Connection := dm.db;
    //q.SQL.Text :=
    q.SQL.Text:= 'SELECT * FROM empleado where id_empleado =: id';
    q.ExecSQL;
    q.Open;
  end;
  
procedure CajaClass.getIVA(e: TEdit);
begin

end;

procedure CajaClass.getProducto(id: Integer; lb: TListBox);
begin
   q := TFDQuery.Create(nil);
   try
      q.Connection := dm.db;
      q.SQL.Text := 'SELECT * FROM producto where id_producto = '+id.ToString;
      q.Open;
      sumaTotal(StrToCurr(q.FieldByName('precio_producto').AsString));
      lb.Items.Add(q.FieldByName('id_producto').AsString+'..'+q.FieldByName('nombre_producto').AsString+'..'+q.FieldByName('precio_producto').AsString+'$');
   finally
      FreeAndNil(q);
   end;
end;

procedure CajaClass.getTotal(e1: TEdit);
begin
 e1.Text := '$ '+CurrToStr(total)
end;

procedure CajaClass.getVentas;
begin

end;

procedure CajaClass.pagar(monto: Currency; e: TEdit);
begin
   if monto > total then
   begin
     cambio := monto - total;
     e.Text := CurrToStr(cambio);
   end
   else
   begin
      ShowMessage('falta Dinero :(');
   end;
   
end;
                                                
procedure CajaClass.sumaTotal(num: Currency);
begin
  total := aux + num;
  aux := total;
end;

end.
