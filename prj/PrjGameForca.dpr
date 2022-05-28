program PrjGameForca;

uses
  Vcl.Forms,
  UnFormPrincipal in '..\src\UnFormPrincipal.pas' {FormTelaJogo},
  UnTelaInicio in '..\src\UnTelaInicio.pas' {FormInicial},
  UnGanhouPerdeu in '..\src\UnGanhouPerdeu.pas' {FormGanhouPerdeu},
  UnConfig in '..\src\UnConfig.pas' {FormConfig},
  UnSobre in '..\src\UnSobre.pas' {FormSobre};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormInicial, FormInicial);
  Application.CreateForm(TFormTelaJogo, FormTelaJogo);
  Application.CreateForm(TFormConfig, FormConfig);
  Application.CreateForm(TFormSobre, FormSobre);
  Application.Run;
end.
