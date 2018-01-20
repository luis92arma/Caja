unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit1, System.Threading, Vcl.Grids,
  Vcl.StdCtrls, Data.DB, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TForm2 = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    Button2: TButton;
    Button3: TButton;
    FDConnection1: TFDConnection;
    id: TEdit;
    Nombre: TEdit;
    Apellido: TEdit;
    apellido2: TEdit;
    IdHorario: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    Hilo: TData;
  public
    { Public declarations }
  end;

type
    Thread = class(TThread)
            SQL: WideString;
            LisBox: TListBox;
            query: TFDQuery;
      private
      protected

      public
            Procedure Execute; override;

    end;

var
  Form2: TForm2;
  q: TFDQuery;
implementation

{$R *.dfm}

// Carga las clases
procedure TForm2.Button1Click(Sender: TObject);
begin
     TTask.Run(
        procedure
        begin
             q := TFDQuery.Create(nil);
             try
                q.Connection := FDConnection1;
                q.SQL.Add('SELECT * FROM empleado');
                q.Open;
                while not q.Eof do
                begin
                     ListBox1.Items.Add(q.FieldByName('nombre_empleado').AsString);
                     q.Next;
                end;
             finally
               FreeAndNil(q);
             end;
        end
     );
end;

{ Thread }

procedure Thread.Execute;
begin
  inherited;

end;

procedure TForm2.Button2Click(Sender: TObject);
var
   Task: ITask;
begin
     Task := TTask.Create(
     Procedure
     begin
          ShowMessage('primero');
     end);
     Task.Start;
     Task := TTask.Create(
     Procedure
     begin
          ShowMessage('segundo');
     end);
     Task.Start;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
     ShowMessage('primero');
     ShowMessage('segundo');
end;


procedure TForm2.Button4Click(Sender: TObject);
var
   taske: ITask;
   qE: TFDQuery;
begin
    TTask.Run(
    procedure
    begin
          qE:= TFDQuery.Create(nil);
         try
            qE.Connection := FDConnection1;
            qE.SQL.Text := 'INSERT INTO empleado(id_empleadoi, nombre_empleado, ap_empleado, am_empleado, id_horario)'+
                   ' VALUES(:id,:nombre,:ap,:am,:hora)';
            qE.Params.ParamByName('id').Value := id.Text;
            qE.Params.ParamByName('nombre').Value := Nombre.Text;
            qE.Params.ParamByName('ap').Value := Apellido.Text;
            qE.Params.ParamByName('am').Value := apellido2.Text;
            qE.Params.ParamByName('hora').Value := IdHorario.Text;
            qE.ExecSQL;
         finally
           FreeAndNil(qE);
         end;
    end);
end;

Initialization
  RegisterClass(TForm2);
end.
