program PrjGameForca;

uses
  Vcl.Forms,
  UnFormPrincipal in '..\src\UnFormPrincipal.pas' {Form2},
  UnTelaInicio in '..\src\UnTelaInicio.pas' {FormInicial},
  UnGanhouPerdeu in '..\src\UnGanhouPerdeu.pas' {FormGanhouPerdeu},
  UnConfig in '..\src\UnConfig.pas' {FormConfig};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormInicial, FormInicial);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFormConfig, FormConfig);
  Application.Run;
end.
