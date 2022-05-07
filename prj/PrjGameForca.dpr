program PrjGameForca;

uses
  Vcl.Forms,
  UnFormPrincipal in '..\src\UnFormPrincipal.pas' {Form2},
  UnTelaInicio in '..\src\UnTelaInicio.pas' {Form1},
  UnTelaInicioTeste in '..\src\UnTelaInicioTeste.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
