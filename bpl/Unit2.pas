unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unit1, System.Threading, Vcl.Grids,
  Vcl.StdCtrls, UDMP, Data.DB, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TForm2 = class(TForm)
    Button1: TButton;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
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
                q.Connection := DataModule3.db;
                q.SQL.Add('SELECT * FROM empleado');
                q.Open;
                while not q.Eof do
                begin
                     ListBox1.Items.Add(q.FieldByName('nombre_empleado').AsString);
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

Initialization
  RegisterClass(TForm2);
end.