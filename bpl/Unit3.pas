unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.Threading,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Button1: TButton;
    ConnectionSQLite: TFDConnection;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowData(id: Integer);
    procedure llenar(id:Integer);
  end;

var
  Form3: TForm3;
  EHorario : Integer;
  IdEmpleado: Integer;

implementation

{$R *.dfm}



procedure TForm3.Button1Click(Sender: TObject);
var
   qU: TFDQuery;
begin
     TTask.Run(
     procedure
     begin
        qU := TFDQuery.Create(nil);
        try
           qU.Connection := ConnectionSQLite;
           qU.SQL.Text := 'update empleado '+
                          'set nombre_empleado = :ne , ap_empleado = :ape , am_empleado = :ame , id_horario = :idh '+
                          'where id_empleadoi = '+IdEmpleado.ToString;
           //ShowMessage(qU.SQL.Text);
           qU.Params.ParamByName('ne').value := Edit2.Text;
           qU.Params.ParamByName('ape').value := Edit3.Text;
           qU.Params.ParamByName('ame').Value := Edit4.Text;
           qU.Params.ParamByName('idh').Value := EHorario.ToString;
           qU.ExecSQL;
           if qU.Eof then
           begin
                ShowMessage('Datos Actualizados');
           end;
        finally
               FreeAndNil(qU);
        end;
     end);
end;

procedure TForm3.FormActivate(Sender: TObject);
var
   task: ITask;
begin

end;

procedure TForm3.FormCreate(Sender: TObject);
begin
     llenar(IdEmpleado);
end;

procedure TForm3.llenar(id: Integer);
var
   qSD: TFDQuery;
   radio: TRadioButton;
   idHorario: Integer;
begin
     TTask.Run(
     procedure
     begin
       qSD := TFDQuery.Create(nil);
       try
          qSD.Connection := ConnectionSQLite;
          qSD.SQL.Add('select * from empleado where id_empleadoi = '+id.ToString);
          qSD.Open;
          Edit1.Text := qSD.FieldByName('id_empleadoi').AsString;
          Edit2.Text := qSD.FieldByName('nombre_empleado').AsString;
          Edit3.Text := qSD.FieldByName('ap_empleado').AsString;
          Edit4.Text := qSD.FieldByName('am_empleado').AsString;
          idHorario := qSD.FieldByName('id_horario').AsInteger;
          if idHorario = 1 then
             RadioButton1.Checked := true
          else
            RadioButton2.Checked := true;
       finally
        FreeAndNil(qSD);
       end;
     end);
end;
procedure TForm3.RadioButton1Click(Sender: TObject);
var
   taskB: ITask;
begin
     taskB := TTask.Create(
     procedure
     begin
          if RadioButton1.Checked then
          begin
               //ShowMessage('Matutino');
               EHorario := 1;
          end;
     end);
     taskB.Start;
end;

procedure TForm3.RadioButton2Click(Sender: TObject);
var
   taskB: ITask;
begin
   taskB := TTask.Create(
     procedure
     begin
          if RadioButton2.Checked then
          begin
               //ShowMessage('Vespertino');
               EHorario := 2;
          end;
     end);
     taskB.Start;
end;

procedure TForm3.ShowData(id: Integer);
begin
     TTask.Run(
     procedure
     begin
         IdEmpleado := id;
     end);
end;

end.
