program PrjGameForca;

uses
  Vcl.Forms,
  UnFormPrincipal in '..\src\UnFormPrincipal.pas' {Form2},
  UnTelaInicio in '..\src\UnTelaInicio.pas' {Form1};


{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);

  Application.Run;
end.
