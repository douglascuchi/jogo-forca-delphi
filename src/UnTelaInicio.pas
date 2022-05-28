unit UnTelaInicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, UnConfig, UnFormPrincipal,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls, UnSobre;

type
  TFormInicial = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    FORCA: TLabel;
    btnFechar: TButton;
    btnJogar: TSpeedButton;
    btnConfiguracao: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure btnConfiguracaoClick(Sender: TObject);
    procedure btnJogarClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    vConfig: ADadosConfig;
  public
  end;

var
  FormInicial: TFormInicial;

implementation

{$R *.dfm}

procedure TFormInicial.btnJogarClick(Sender: TObject);
var
  vForm2: TFormTelaJogo;
begin
  vForm2 := TFormTelaJogo.Create(nil);
  try
    vForm2.vDadosConfig.NomeJogador := vConfig.NomeJogador;
    vForm2.vDadosConfig.QtdeRodadas := vConfig.QtdeRodadas;
    vForm2.ShowModal;
  finally
    FreeAndNil(vForm2);
  end;
end;

procedure TFormInicial.SpeedButton3Click(Sender: TObject);
begin
  FormSobre.ShowModal;
end;

procedure TFormInicial.btnFecharClick(Sender: TObject);
begin
  FormInicial.Close;
end;

procedure TFormInicial.btnConfiguracaoClick(Sender: TObject);
begin
  vConfig := TFormConfig.Exibir;
  btnJogar.Visible := vConfig.Ok;
end;

end.
