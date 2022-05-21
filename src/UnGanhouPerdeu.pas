unit UnGanhouPerdeu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TGanhouPerdeu = (gpGanhou, gpPerdeu);

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
    lblJogadorGanhou: TLabel;
    lblJogadorPerdeu: TLabel;
    lblMsgGanhou: TLabel;
    lblGanhouPontos: TLabel;
    lblMsgGanhouPontos: TLabel;
    lblMsgPerdeu: TLabel;
    lblMsgPerdeuPontos: TLabel;
    lblPerdeuPontos: TLabel;
    lblLblMsgPalavra: TLabel;
    lblPalavraRevelada: TLabel;
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
  if VDados.GanhouPerdeu = gpGanhou then
  begin
    tsPerdeu.TabVisible := False;
    lblJogadorGanhou.Caption := VDados.Jogador;
    lblGanhouPontos.Caption := VDados.PontosJogador.ToString;
  end
  else
  begin
    tsGanhou.TabVisible := False;
    lblJogadorPerdeu.Caption := VDados.Jogador;
    lblPerdeuPontos.Caption := VDados.PontosJogador.ToString;
    lblPalavraRevelada.Caption := VDados.PalavraCorreta;
  end;

end;

end.
