unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Datasnap.DBClient, Datasnap.Provider,
  Data.Win.ADODB;

type
  Tdm = class(TDataModule)
    db: TFDConnection;
    q_empleado: TFDQuery;
    q_empleadoid_empleadoi: TIntegerField;
    q_empleadonombre_empleado: TStringField;
    q_empleadoap_empleado: TStringField;
    q_empleadoam_empleado: TStringField;
    q_producto: TFDQuery;
    q_horario: TFDQuery;
    q_cliente: TFDQuery;
    q_empleadoid_horario: TIntegerField;
    q_horarioid_horario_caja: TIntegerField;
    q_horariohora_entrada: TTimeField;
    q_horariohora_salida: TTimeField;
    q_clienteid_cliente: TIntegerField;
    q_clientenombre_cliente: TStringField;
    q_clientetarjeta_cliente: TLargeintField;
    q_clienteadeudo_cliente: TFloatField;
    q_productoid_producto: TIntegerField;
    q_productonombre_producto: TStringField;
    q_productoprecio_producto: TFloatField;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery1tsr_seq: TIntegerField;
    ADOQuery1tsr_nombre: TStringField;
    ADOQuery1tsr_medido: TBooleanField;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet1tsr_seq: TIntegerField;
    ClientDataSet1tsr_nombre: TStringField;
    ClientDataSet1tsr_medido: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
