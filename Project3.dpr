program Project3;

uses
  Vcl.Forms,
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas',
  UDM in 'UDM.pas' {dm: TDataModule},
  clientes in 'clientes.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
