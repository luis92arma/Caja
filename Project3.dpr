program Project3;

{$R 'New1.res' 'New1.rc'}

uses
  Vcl.Forms,
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas',
  UDM in 'UDM.pas' {dm: TDataModule},
  clientes in 'clientes.pas' {Fclientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFclientes, Fclientes);
  Application.Run;
end.
