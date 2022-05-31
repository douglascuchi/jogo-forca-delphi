unit UnTelaInicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, UnConfig, UnFormPrincipal,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls, UnSobre;

type
  TFormInicial = class(TForm)
    ImgBase: TImage;
    lblJogoDa: TLabel;
    lblForca: TLabel;
    btnFechar: TButton;
    btnJogar: TSpeedButton;
    btnConfiguracao: TSpeedButton;
    btnSobre: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure btnConfiguracaoClick(Sender: TObject);
    procedure btnJogarClick(Sender: TObject);
    procedure btnSobreClick(Sender: TObject);
  private
    GConfig: TDadosConfig;
  public
  end;

var
  FormInicial: TFormInicial;

implementation

{$R *.dfm}

procedure TFormInicial.btnJogarClick(Sender: TObject);
var
  LForm2: TFormTelaJogo;
begin
  LForm2 := TFormTelaJogo.Create(nil);
  try
    LForm2.GDadosConfig.NomeJogador := GConfig.NomeJogador;
    LForm2.GDadosConfig.QtdeRodadas := GConfig.QtdeRodadas;
    LForm2.ShowModal;
  finally
    FreeAndNil(LForm2);
  end;
end;

procedure TFormInicial.btnSobreClick(Sender: TObject);
begin
  FormSobre.ShowModal;
end;

procedure TFormInicial.btnFecharClick(Sender: TObject);
begin
  FormInicial.Close;
end;

procedure TFormInicial.btnConfiguracaoClick(Sender: TObject);
begin
  GConfig := TFormConfig.Exibir;
  btnJogar.Visible := GConfig.Ok;
end;

end.
