unit UnFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.StrUtils, UnGanhouPerdeu, UnConfig,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.BaseImageCollection,
  Vcl.ImageCollection, Vcl.Buttons, System.ImageList, Vcl.ImgList, pngimage,
  Vcl.StdCtrls, Vcl.Menus, Vcl.Imaging.jpeg, Vcl.Mask;

type
  TFormTelaJogo = class(TForm)
    imgBonecoForca: TImage;
    btnB: TSpeedButton;
    btnV: TSpeedButton;
    btnC: TSpeedButton;
    btnO: TSpeedButton;
    btnU: TSpeedButton;
    btnH: TSpeedButton;
    btnP: TSpeedButton;
    btnI: TSpeedButton;
    btnD: TSpeedButton;
    btnJ: TSpeedButton;
    btnK: TSpeedButton;
    btnT: TSpeedButton;
    btnL: TSpeedButton;
    btnM: TSpeedButton;
    btnN: TSpeedButton;
    btnE: TSpeedButton;
    btnQ: TSpeedButton;
    btnR: TSpeedButton;
    btnS: TSpeedButton;
    btnX: TSpeedButton;
    btnW: TSpeedButton;
    btnY: TSpeedButton;
    btnF: TSpeedButton;
    btnG: TSpeedButton;
    btnA: TSpeedButton;
    pnlBaseFundo: TPanel;
    edtPalavra: TEdit;
    btnZ: TSpeedButton;
    edtPalavraSecreta: TEdit;
    btnJogar: TSpeedButton;
    ImgFundo: TImage;
    pnlLetras: TPanel;
    edtChutarPalavra: TEdit;
    btnChutarPalavra: TSpeedButton;
    lblJogador1: TLabel;
    lblJogador2: TLabel;
    edtJogador1: TEdit;
    edtJogador2: TEdit;
    lblPlacar: TLabel;
    ckbExibirPalavra: TCheckBox;
    lblPontosJogador1: TLabel;
    lblPontosJogador2: TLabel;
    lblMsgRodadas: TLabel;
    lblMsgTotalRodadas: TLabel;
    lblTotalRodadas: TLabel;
    lblRodadas: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnAClick(Sender: TObject);
    procedure btnJogarClick(Sender: TObject);
    procedure btnChutarPalavraClick(Sender: TObject);
    procedure ckbExibirPalavraClick(Sender: TObject);
  private
    GPalavra: array [1 .. 25] of string;
    GGuardaResultado: array [1 .. 25] of string;
    GCountErros: integer;
    GPontosJogador1: integer;
    GPontosJogador2: integer;
    GJogadorAtual: integer;
    Procedure ComparaResultado(letra: string);
    Procedure novoJogo;
    Procedure Ganhou(AIdJogador: integer; SeChutou: Boolean);
    Procedure Perdeu(AIdJogador: integer; SeChutou: Boolean);
    procedure ControlaCampos;
    procedure HabilitarBotoes;
    procedure FinalizaJogo;
    function VerificaSeAcabou: Boolean;
  public
    GDadosConfig: TDadosConfig;
  end;

var
  FormTelaJogo: TFormTelaJogo;

implementation

uses UnTelaInicio;

{$R *.dfm}

procedure TFormTelaJogo.btnAClick(Sender: TObject);
begin
  (Sender as TSpeedButton).Enabled := false;
  ComparaResultado((Sender as TSpeedButton).Caption);
end;

procedure TFormTelaJogo.btnChutarPalavraClick(Sender: TObject);
begin
  if (edtPalavraSecreta.Text = edtChutarPalavra.Text) then
  begin
    Ganhou(GJogadorAtual, true);
    edtPalavra.Text := edtPalavraSecreta.Text;
  end
  else if not(edtPalavraSecreta.Text = edtChutarPalavra.Text) then
    Perdeu(GJogadorAtual, true);
end;

procedure TFormTelaJogo.btnJogarClick(Sender: TObject);
var
  i: integer;
begin
  if (Length(edtPalavraSecreta.Text) < 5) then
  begin
    MessageDlg('Digite uma palavra que tenha mais de 5 letras!',
      TMsgDlgType.mtWarning, mbOKCancel, 0);
    edtPalavraSecreta.Clear;
    edtPalavraSecreta.SetFocus;
    exit
  end;

  pnlLetras.Enabled := true;
  btnChutarPalavra.Visible := true;
  edtChutarPalavra.Visible := true;
  btnChutarPalavra.Enabled := true;
  edtChutarPalavra.Enabled := true;
  edtPalavra.Visible := true;
  btnJogar.Visible := false;
  edtPalavraSecreta.Visible := false;
  ckbExibirPalavra.Visible := false;

  for i := 1 to Length(edtPalavraSecreta.Text) do
  begin
    GPalavra[i] := copy(edtPalavraSecreta.Text, i, 1);
    edtPalavra.Text := edtPalavra.Text + '*';
  end;
end;

procedure TFormTelaJogo.ckbExibirPalavraClick(Sender: TObject);
begin
  if ckbExibirPalavra.Checked then
    edtPalavraSecreta.PasswordChar := #0
  else
    edtPalavraSecreta.PasswordChar := '*';
end;

procedure TFormTelaJogo.novoJogo;
begin
  GJogadorAtual := StrToInt(IfThen((GJogadorAtual = 2) or (GJogadorAtual = 0),
    '1', '2'));
  if VerificaSeAcabou then
    exit;

  ControlaCampos;
  if GJogadorAtual = 1 then
  begin
    lblJogador1.Font.Color := clRed;
    lblJogador2.Font.Color := clWhite;
  end
  else
  begin
    lblJogador2.Font.Color := clRed;
    lblJogador1.Font.Color := clWhite;
  end;
end;

procedure TFormTelaJogo.Perdeu(AIdJogador: integer; SeChutou: Boolean);
var
  LPontos: integer;
  LDados: ADadosGanhouPerdeu;
begin
  if SeChutou then
    LPontos := 100
  else
    LPontos := 50;
  if AIdJogador = 1 then
  begin
    GPontosJogador1 := GPontosJogador1 - LPontos;
    edtJogador1.Text := IntToStr(GPontosJogador1);
  end
  else
  begin
    GPontosJogador2 := GPontosJogador2 - LPontos;
    edtJogador2.Text := IntToStr(GPontosJogador2);
  end;
  LDados.Jogador := GDadosConfig.NomeJogador[GJogadorAtual - 1];
  if GJogadorAtual = 1 then
    LDados.PontosJogador := GPontosJogador1
  else
    LDados.PontosJogador := GPontosJogador2;
  LDados.GanhouPerdeu := gpPerdeu;
  LDados.PalavraCorreta := edtPalavraSecreta.Text;
  if TFormGanhouPerdeu.Exibir(LDados) then
    novoJogo;
end;

function TFormTelaJogo.VerificaSeAcabou: Boolean;
begin
  if (GJogadorAtual = 1) then
  begin
    if StrToInt(lblRodadas.Caption) = GDadosConfig.QtdeRodadas then
    begin
      FinalizaJogo;
      exit;
    end;

    lblRodadas.Caption := IntToStr(StrToInt(lblRodadas.Caption) + 1);
  end;
end;

procedure TFormTelaJogo.FinalizaJogo;
var
  LDados: ADadosGanhouPerdeu;
begin
  LDados.GanhouPerdeu := gpVencedor;

  if StrToInt(edtJogador1.Text) > StrToInt(edtJogador2.Text) then
  begin
    LDados.Jogador := GDadosConfig.NomeJogador[0];
    LDados.PontosJogador := GPontosJogador1;
  end
  else if StrToInt(edtJogador1.Text) < StrToInt(edtJogador2.Text) then
  begin
    LDados.Jogador := GDadosConfig.NomeJogador[1];
    LDados.PontosJogador := GPontosJogador2;
  end
  else
  begin
    LDados.Jogador := '';
    LDados.PontosJogador := GPontosJogador1;
    LDados.GanhouPerdeu := gpEmpate;
  end;
  LDados.PalavraCorreta := '';

  if TFormGanhouPerdeu.Exibir(LDados) then
    Self.Close;
end;

procedure TFormTelaJogo.FormShow(Sender: TObject);
begin
  GJogadorAtual := 0;
  lblJogador1.Caption := GDadosConfig.NomeJogador[0];
  lblJogador2.Caption := GDadosConfig.NomeJogador[1];
  lblTotalRodadas.Caption := GDadosConfig.QtdeRodadas.ToString;
  lblRodadas.Caption := '0';
  novoJogo;
end;

procedure TFormTelaJogo.Ganhou(AIdJogador: integer; SeChutou: Boolean);
var
  LPontos: integer;
  LDados: ADadosGanhouPerdeu;
begin
  if SeChutou then
    LPontos := 150
  else
  begin
    LPontos := 100;
    LPontos := LPontos - (10 * (GCountErros));
  end;

  if AIdJogador = 1 then
  begin
    GPontosJogador1 := GPontosJogador1 + LPontos;
    edtJogador1.Text := IntToStr(GPontosJogador1);
  end
  else
  begin
    GPontosJogador2 := GPontosJogador2 + LPontos;
    edtJogador2.Text := IntToStr(GPontosJogador2);
  end;

  LDados.Jogador := GDadosConfig.NomeJogador[GJogadorAtual - 1];
  if GJogadorAtual = 1 then
    LDados.PontosJogador := GPontosJogador1
  else
    LDados.PontosJogador := GPontosJogador2;
  LDados.GanhouPerdeu := gpGanhou;

  if TFormGanhouPerdeu.Exibir(LDados) then
    novoJogo;
end;

procedure TFormTelaJogo.HabilitarBotoes;
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TSpeedButton) then
      TSpeedButton(Components[i]).Enabled := true;
  end;
end;

Procedure TFormTelaJogo.ComparaResultado(letra: String);
var
  LCount: integer;
  LAchou: Boolean;
  LCountLetrasFaltando: integer;
begin
  LAchou := false;
  LCountLetrasFaltando := 0;

  for LCount := 1 to Length(edtPalavraSecreta.Text) do
  begin
    If (GPalavra[LCount] = letra) then
    begin
      GGuardaResultado[LCount] := letra;
      LAchou := true;
    end
    else if (GGuardaResultado[LCount] = '') then
      GGuardaResultado[LCount] := '*'
  end;

  if LAchou = false then
    GCountErros := GCountErros + 1;

  edtPalavra.Text := '';

  for LCount := 1 to Length(edtPalavraSecreta.Text) do
  begin
    edtPalavra.Text := edtPalavra.Text + GGuardaResultado[LCount];
    if GGuardaResultado[LCount] = '*' then
      LCountLetrasFaltando := LCountLetrasFaltando + 1;
  end;

  case GCountErros of
    1:
      imgBonecoForca.Picture.LoadFromFile
        ('C:\game-forca\jogo-forca-delphi\img\cabeca.png');
    2:
      imgBonecoForca.Picture.LoadFromFile
        ('C:\game-forca\jogo-forca-delphi\img\corpo.png');
    3:
      imgBonecoForca.Picture.LoadFromFile
        ('C:\game-forca\jogo-forca-delphi\img\braco-esq.png');
    4:
      imgBonecoForca.Picture.LoadFromFile
        ('C:\game-forca\jogo-forca-delphi\img\dois-bracos.png');
    5:
      imgBonecoForca.Picture.LoadFromFile
        ('C:\game-forca\jogo-forca-delphi\img\perna-esq.png');
    6:
      imgBonecoForca.Picture.LoadFromFile
        ('C:\game-forca\jogo-forca-delphi\img\completo.png');
  end;

  edtChutarPalavra.Visible := LCountLetrasFaltando >= 4;
  btnChutarPalavra.Visible := LCountLetrasFaltando >= 4;

  if GCountErros = 6 then
    Perdeu(GJogadorAtual, false)
  else if LCountLetrasFaltando = 0 then
    Ganhou(GJogadorAtual, false);
end;

procedure TFormTelaJogo.ControlaCampos;
var
  i: integer;
begin
  edtPalavra.Visible := false;
  edtChutarPalavra.Visible := false;
  btnChutarPalavra.Visible := false;
  edtPalavra.Text := '';
  edtPalavraSecreta.Visible := true;
  btnJogar.Visible := true;
  ckbExibirPalavra.Visible := true;
  pnlLetras.Enabled := false;
  edtPalavraSecreta.Clear;
  edtChutarPalavra.Clear;
  edtPalavra.Clear;
  GCountErros := 0;
  HabilitarBotoes;

  for i := 0 to Length(GGuardaResultado) do
    GGuardaResultado[i] := '';

  imgBonecoForca.Picture.LoadFromFile
    ('C:\game-forca\jogo-forca-delphi\img\nada.png');
  edtPalavraSecreta.SetFocus;

end;

end.
