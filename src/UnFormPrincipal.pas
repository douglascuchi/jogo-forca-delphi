unit UnFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.StrUtils, UnGanhouPerdeu, UnConfig,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.BaseImageCollection,
  Vcl.ImageCollection, Vcl.Buttons, System.ImageList, Vcl.ImgList, pngimage,
  Vcl.StdCtrls, Vcl.Menus, Vcl.Imaging.jpeg, Vcl.Mask;

type
  TForm2 = class(TForm)
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
    procedure FormShow(Sender: TObject);
    procedure btnAClick(Sender: TObject);
    procedure btnJogarClick(Sender: TObject);
    procedure btnChutarPalavraClick(Sender: TObject);
    procedure ckbExibirPalavraClick(Sender: TObject);
  private
    Palavra: array [1 .. 25] of string;
    Resultado: array [1 .. 25] of string;
    GuardaResultado: array [1 .. 25] of string;
    contErros: integer;
    PontosJogador1: integer;
    PontosJogador2: integer;
    JogadorAtual: integer;
    Procedure ComparaResultado(letra: string);
    Procedure novoJogo;
    Procedure Ganhou(AIdJogador: integer; SeChutou: Boolean);
    Procedure Perdeu(AIdJogador: integer; SeChutou: Boolean);
    procedure ControlaCampos;
    procedure HabilitarBotoes;
  public
    vDadosConfig: ADadosConfig;
  end;

var
  Form2: TForm2;

implementation

uses UnTelaInicio;

{$R *.dfm}

procedure TForm2.btnAClick(Sender: TObject);
begin
  (Sender as TSpeedButton).Enabled := false;
  ComparaResultado((Sender as TSpeedButton).Caption);
end;

procedure TForm2.btnChutarPalavraClick(Sender: TObject);
begin
  if (edtPalavraSecreta.Text = edtChutarPalavra.Text) then
  begin
    Ganhou(JogadorAtual, true);
    edtPalavra.Text := edtPalavraSecreta.Text;
  end
  else if not(edtPalavraSecreta.Text = edtChutarPalavra.Text) then
    Perdeu(JogadorAtual, true);
end;

procedure TForm2.btnJogarClick(Sender: TObject);
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
  edtPalavra.Visible := true;
  btnJogar.Visible := false;
  edtPalavraSecreta.Visible := false;
  ckbExibirPalavra.Visible := false;

  for i := 1 to Length(edtPalavraSecreta.Text) do
  begin
    Palavra[i] := copy(edtPalavraSecreta.Text, i, 1);
    edtPalavra.Text := edtPalavra.Text + '* ';
  end;
end;

procedure TForm2.ckbExibirPalavraClick(Sender: TObject);
begin
  if ckbExibirPalavra.Checked then
    edtPalavraSecreta.PasswordChar := #0
  else
    edtPalavraSecreta.PasswordChar := '*';
end;

procedure TForm2.novoJogo;
begin
  ControlaCampos;
  if JogadorAtual = 1 then
  begin
    lblJogador1.Font.Color := clRed;
    lblJogador2.Font.Color := clWindow;
  end
  else
  begin
    lblJogador2.Font.Color := clRed;
    lblJogador1.Font.Color := clWindow;
  end;
end;

procedure TForm2.Perdeu(AIdJogador: integer; SeChutou: Boolean);
var
  vPontos: integer;
  vDados: ADadosGanhouPerdeu;
begin
  if SeChutou then
    vPontos := 100
  else
    vPontos := 50;
  if AIdJogador = 1 then
  begin
    PontosJogador1 := PontosJogador1 - vPontos;
    edtJogador1.Text := IntToStr(PontosJogador1);
  end
  else
  begin
    PontosJogador2 := PontosJogador2 - vPontos;
    edtJogador2.Text := IntToStr(PontosJogador2);
  end;
  vDados.Jogador := vDadosConfig.NomeJogador[JogadorAtual - 1];
  if JogadorAtual = 1 then
    vDados.PontosJogador := PontosJogador1
  else
    vDados.PontosJogador := PontosJogador2;
  vDados.GanhouPerdeu := gpPerdeu;
  vDados.PalavraCorreta := edtPalavraSecreta.Text;
  if TFormGanhouPerdeu.Exibir(vDados) then
    novoJogo;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  JogadorAtual := 0;
  lblJogador1.Caption := vDadosConfig.NomeJogador[0];
  lblJogador2.Caption := vDadosConfig.NomeJogador[1];
  novoJogo;
end;

procedure TForm2.Ganhou(AIdJogador: integer; SeChutou: Boolean);
var
  vPontos: integer;
  vDados: ADadosGanhouPerdeu;
begin
  if SeChutou then
    vPontos := 150
  else
  begin
    vPontos := 100;
    vPontos := vPontos - (10 * (contErros));
  end;

  if AIdJogador = 1 then
  begin
    PontosJogador1 := PontosJogador1 + vPontos;
    edtJogador1.Text := IntToStr(PontosJogador1);
  end
  else
  begin
    PontosJogador2 := PontosJogador2 + vPontos;
    edtJogador2.Text := IntToStr(PontosJogador2);
  end;

  vDados.Jogador := vDadosConfig.NomeJogador[JogadorAtual - 1];
  if JogadorAtual = 1 then
    vDados.PontosJogador := PontosJogador1
  else
    vDados.PontosJogador := PontosJogador2;
  vDados.GanhouPerdeu := gpGanhou;

  if TFormGanhouPerdeu.Exibir(vDados) then
    novoJogo;

end;

procedure TForm2.HabilitarBotoes;
var
  i: integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TSpeedButton) then
      TSpeedButton(Components[i]).Enabled := true;
  end;
end;

Procedure TForm2.ComparaResultado(letra: String);
var
  i: integer;
  achou, terminou: Boolean;
begin
  achou := false;
  terminou := true;

  for i := 1 to Length(edtPalavraSecreta.Text) do
  begin
    If (Palavra[i] = letra) then
    begin
      Resultado[i] := letra;
      GuardaResultado[i] := letra;
      achou := true;
    end
    else if (GuardaResultado[i] = '') or (GuardaResultado[i] = '* ') then
      GuardaResultado[i] := '*'
  end;

  if achou = false then
    contErros := contErros + 1;

  edtPalavra.Text := '';

  for i := 1 to Length(edtPalavraSecreta.Text) do
  begin
    edtPalavra.Text := edtPalavra.Text + GuardaResultado[i];
    if GuardaResultado[i] = '*' then
      terminou := false;
  end;

  case contErros of
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

  if contErros = 6 then
    Perdeu(JogadorAtual, false)
  else if terminou then
    Ganhou(JogadorAtual, false);
end;

procedure TForm2.ControlaCampos;
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
  contErros := 0;
  HabilitarBotoes;

  for i := 0 to Length(GuardaResultado) do
    GuardaResultado[i] := '';

  JogadorAtual := StrToInt(IfThen((JogadorAtual = 2) or (JogadorAtual = 0),
    '1', '2'));

  imgBonecoForca.Picture.LoadFromFile
    ('C:\game-forca\jogo-forca-delphi\img\nada.png');
  edtPalavraSecreta.SetFocus;

end;

end.
