unit UnGanhouPerdeu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TGanhouPerdeu = (gpGanhou, gpPerdeu, gpVencedor, gpEmpate);

  ADadosGanhouPerdeu = record
    Jogador: string;
    PontosJogador: Integer;
    GanhouPerdeu: TGanhouPerdeu;
    PalavraCorreta: string;
  end;

  TFormGanhouPerdeu = class(TForm)
    pcPrincipal: TPageControl;
    tsGanhou: TTabSheet;
    tsPerdeu: TTabSheet;
    pnlConfirmar: TPanel;
    btnContinuar: TButton;
    lblMsgPerdeu: TLabel;
    lblLblMsgPalavra: TLabel;
    lblMsgPerdeuPlayer: TLabel;
    lblJogadorPerdeu: TLabel;
    lblMsgPerdeuPontos: TLabel;
    pnlBasePerdeu: TPanel;
    tsFinal: TTabSheet;
    pnlGanhouBase: TPanel;
    lblMsgGanhouPontos: TLabel;
    lblMsgGanhou: TLabel;
    lblJogadorGanhou: TLabel;
    lblMsgGanhouParabens: TLabel;
    lblMsgGanhouPlayer: TLabel;
    pnlBaseFinal: TPanel;
    lblJogadorFinal: TLabel;
    lblMsgPontosFinal: TLabel;
    lblMsgJogadorFinal: TLabel;
    tsEmpate: TTabSheet;
    lblPontuacaoFinal: TLabel;
    lblVitoria: TLabel;
    ImgBasePerdeu: TImage;
    lblPalavraCorreta: TLabel;
    ImgBaseGanhou: TImage;
    Image3: TImage;
    lblQtdeGanhouPontos: TLabel;
    lblPerdeuPontos: TLabel;
    lblJogoEmpatou: TLabel;
    ImgBaseEmpate: TImage;
    lblSeFodeu: TLabel;
    procedure btnContinuarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    GDados: ADadosGanhouPerdeu;
  public
    class function Exibir(ADados: ADadosGanhouPerdeu): Boolean;
  end;

var
  FormGanhouPerdeu: TFormGanhouPerdeu;

implementation

{$R *.dfm}
{ TForm3 }

procedure TFormGanhouPerdeu.btnContinuarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

class function TFormGanhouPerdeu.Exibir(ADados: ADadosGanhouPerdeu): Boolean;
var
  LForm: TFormGanhouPerdeu;
begin
  LForm := TFormGanhouPerdeu.Create(nil);
  try
    LForm.GDados := ADados;
    if LForm.ShowModal = mrOk then
      Result := True;
  finally
    FreeAndNil(LForm);
  end;
end;

procedure TFormGanhouPerdeu.FormShow(Sender: TObject);
begin
  tsPerdeu.TabVisible := GDados.GanhouPerdeu = gpPerdeu;
  tsFinal.TabVisible := GDados.GanhouPerdeu = gpVencedor;
  tsGanhou.TabVisible := GDados.GanhouPerdeu = gpGanhou;
  tsEmpate.TabVisible := GDados.GanhouPerdeu = gpEmpate;

  if GDados.GanhouPerdeu = gpGanhou then
  begin
    lblJogadorGanhou.Caption := GDados.Jogador;
    lblQtdeGanhouPontos.Caption := GDados.PontosJogador.ToString;
  end
  else if GDados.GanhouPerdeu = gpPerdeu then
  begin
    lblJogadorPerdeu.Caption := GDados.Jogador;
    lblPerdeuPontos.Caption := GDados.PontosJogador.ToString;
    lblPalavraCorreta.Caption := GDados.PalavraCorreta;
  end
  else if GDados.GanhouPerdeu = gpVencedor then
  begin
    lblJogadorFinal.Caption := GDados.Jogador;
    lblPontuacaoFinal.Caption := GDados.PontosJogador.ToString;
  end;

end;

end.
