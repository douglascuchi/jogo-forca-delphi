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
    Image1: TImage;
    lblPalavraCorreta: TLabel;
    Image2: TImage;
    Image3: TImage;
    lblQtdeGanhouPontos: TLabel;
    lblPerdeuPontos: TLabel;
    lblJogoEmpatou: TLabel;
    Image4: TImage;
    lblSeFodeu: TLabel;
    procedure btnContinuarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    VDados: ADadosGanhouPerdeu;
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
  vForm: TFormGanhouPerdeu;
begin
  vForm := TFormGanhouPerdeu.Create(nil);
  try
    vForm.VDados := ADados;
    if vForm.ShowModal = mrOk then
      Result := True;
  finally
    FreeAndNil(vForm);
  end;
end;

procedure TFormGanhouPerdeu.FormShow(Sender: TObject);
begin
  tsPerdeu.TabVisible := VDados.GanhouPerdeu = gpPerdeu;
  tsFinal.TabVisible := VDados.GanhouPerdeu = gpVencedor;
  tsGanhou.TabVisible := VDados.GanhouPerdeu = gpGanhou;
  tsEmpate.TabVisible := VDados.GanhouPerdeu = gpEmpate;

  if VDados.GanhouPerdeu = gpGanhou then
  begin
    lblJogadorGanhou.Caption := VDados.Jogador;
    lblQtdeGanhouPontos.Caption := VDados.PontosJogador.ToString;
  end
  else if VDados.GanhouPerdeu = gpPerdeu then
  begin
    lblJogadorPerdeu.Caption := VDados.Jogador;
    lblPerdeuPontos.Caption := VDados.PontosJogador.ToString;
    lblPalavraCorreta.Caption := VDados.PalavraCorreta;
  end
  else if VDados.GanhouPerdeu = gpVencedor then
  begin
    lblJogadorFinal.Caption := VDados.Jogador;
    lblPontuacaoFinal.Caption := VDados.PontosJogador.ToString;
  end;

end;

end.
