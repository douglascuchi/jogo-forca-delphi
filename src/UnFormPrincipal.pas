unit UnFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.StrUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.BaseImageCollection,
  Vcl.ImageCollection, Vcl.Buttons, System.ImageList, Vcl.ImgList, pngimage,
  Vcl.StdCtrls, Vcl.Menus, Vcl.Imaging.jpeg, Vcl.Mask, UnTelaInicio;

type
  TForm2 = class(TForm)
    imgBonecoForca: TImage;
    ImageList1: TImageList;
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
    Label2: TLabel;
    edtPalavraSecreta: TEdit;
    btnJogar: TSpeedButton;
    LblPalavraRevelada: TLabel;
    Image1: TImage;
    Button1: TButton;
    pnlLetras: TPanel;
    edtChutarPalavra: TEdit;
    btnChutarPalavra: TSpeedButton;
    lblJogador1: TLabel;
    lblJogador2: TLabel;
    edtJogador1: TEdit;
    edtJogador2: TEdit;
    Label1: TLabel;
    procedure btnBClick(Sender: TObject);
    procedure btnCClick(Sender: TObject);
    procedure btnDClick(Sender: TObject);
    procedure btnEClick(Sender: TObject);
    procedure btnFClick(Sender: TObject);
    procedure btnGClick(Sender: TObject);
    procedure btnHClick(Sender: TObject);
    procedure btnIClick(Sender: TObject);
    procedure btnJClick(Sender: TObject);
    procedure btnKClick(Sender: TObject);
    procedure btnLClick(Sender: TObject);
    procedure btnMClick(Sender: TObject);
    procedure btnNClick(Sender: TObject);
    procedure btnOClick(Sender: TObject);
    procedure btnPClick(Sender: TObject);
    procedure btnQClick(Sender: TObject);
    procedure btnRClick(Sender: TObject);
    procedure btnSClick(Sender: TObject);
    procedure btnTClick(Sender: TObject);
    procedure btnUClick(Sender: TObject);
    procedure btnVClick(Sender: TObject);
    procedure btnWClick(Sender: TObject);
    procedure btnXClick(Sender: TObject);
    procedure btnYClick(Sender: TObject);
    procedure btnZClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAClick(Sender: TObject);
    procedure btnJogarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnChutarPalavraClick(Sender: TObject);

  private
    { Private declarations }
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
    procedure ControlaCampos;
    function VerificaSeGanhou(AIdJogador: integer): Boolean;  /// ////falta

  public
    { Public declarations }

  end;

var
  Form2: TForm2;

implementation

// uses
// Unit3;

{$R *.dfm}

procedure TForm2.btnAClick(Sender: TObject);
begin
  btnA.Enabled := false;
  ComparaResultado('A');
end;

procedure TForm2.btnBClick(Sender: TObject);
begin
  ComparaResultado('B');
  btnB.Enabled := false;
end;

procedure TForm2.btnCClick(Sender: TObject);
begin
  ComparaResultado('C');
  btnC.Enabled := false;
end;

procedure TForm2.btnChutarPalavraClick(Sender: TObject);
begin
  if (edtPalavraSecreta.Text = edtChutarPalavra.Text) then
  begin
    Ganhou(JogadorAtual, true);
    edtPalavra.Text := edtPalavraSecreta.Text;
  end;

end;

procedure TForm2.btnJogarClick(Sender: TObject);
var
  i: integer;
begin
  pnlLetras.Enabled := True;
  btnChutarPalavra.Visible := true;
  edtChutarPalavra.Visible := true;
  btnJogar.Visible := false;
  edtPalavraSecreta.Visible := false;
  for i := 1 to length(edtPalavraSecreta.Text) do
  begin
    Palavra[i] := copy(edtPalavraSecreta.Text, i, 1);
    edtPalavra.Text := edtPalavra.Text + '* ';
  end;
end;

procedure TForm2.btnDClick(Sender: TObject);
begin
  ComparaResultado('D');
  btnD.Enabled := false;
end;

procedure TForm2.btnEClick(Sender: TObject);
begin
  ComparaResultado('E');
  btnE.Enabled := false;
end;

procedure TForm2.btnFClick(Sender: TObject);
begin
  ComparaResultado('F');
  btnF.Enabled := false;
end;

procedure TForm2.btnGClick(Sender: TObject);
begin
  ComparaResultado('G');
  btnG.Enabled := false;
end;

procedure TForm2.btnHClick(Sender: TObject);
begin
  ComparaResultado('H');
  btnH.Enabled := false;
end;

procedure TForm2.btnKClick(Sender: TObject);
begin
  ComparaResultado('K');
  btnK.Enabled := false;
end;

procedure TForm2.btnYClick(Sender: TObject);
begin
  ComparaResultado('Y');
  btnY.Enabled := false;
end;

procedure TForm2.btnWClick(Sender: TObject);
begin
  ComparaResultado('W');
  btnW.Enabled := false;
end;

procedure TForm2.btnIClick(Sender: TObject);
begin
  ComparaResultado('I');
  btnI.Enabled := false;
end;

procedure TForm2.btnJClick(Sender: TObject);
begin
  ComparaResultado('J');
  btnJ.Enabled := false;
end;

procedure TForm2.btnLClick(Sender: TObject);
begin
  ComparaResultado('L');
  btnL.Enabled := false;
end;

procedure TForm2.btnMClick(Sender: TObject);
begin
  ComparaResultado('M');
  btnM.Enabled := false;
end;

procedure TForm2.btnNClick(Sender: TObject);
begin
  ComparaResultado('N');
  btnN.Enabled := false;
end;

procedure TForm2.btnOClick(Sender: TObject);
begin
  ComparaResultado('O');
  btnO.Enabled := false;
end;

procedure TForm2.btnPClick(Sender: TObject);
begin
  ComparaResultado('P');
  btnP.Enabled := false;
end;

procedure TForm2.btnQClick(Sender: TObject);
begin
  ComparaResultado('Q');
  btnQ.Enabled := false;
end;

procedure TForm2.btnRClick(Sender: TObject);
begin
  ComparaResultado('R');
  btnR.Enabled := false;
end;

procedure TForm2.btnSClick(Sender: TObject);
begin
  ComparaResultado('S');
  btnS.Enabled := false;
end;

procedure TForm2.btnTClick(Sender: TObject);
begin
  ComparaResultado('T');
  btnT.Enabled := false;
end;

procedure TForm2.btnUClick(Sender: TObject);
begin
  ComparaResultado('U');
  btnU.Enabled := false;
end;

procedure TForm2.btnVClick(Sender: TObject);
begin
  ComparaResultado('V');
  btnV.Enabled := false;
end;

procedure TForm2.btnXClick(Sender: TObject);
begin
  ComparaResultado('X');
  btnX.Enabled := false;
end;

procedure TForm2.btnZClick(Sender: TObject);
begin
  ComparaResultado('Z');
  btnZ.Enabled := false;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form1.Show;
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

function TForm2.VerificaSeGanhou(AIdJogador: integer): Boolean;
begin
  /// ///////falta
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  LblPalavraRevelada.Visible := false;
  JogadorAtual := 0;
  Label2.Visible := false;
  novoJogo;
end;

procedure TForm2.Ganhou(AIdJogador: integer; SeChutou: Boolean);
var
  vPontos: integer;
begin
  if SeChutou then
  begin
    vPontos := 150;
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
    VerificaSeGanhou(AIdJogador);
    Exit;
  end
  else
  begin
    vPontos := 100;
    vPontos := vPontos - (10 * (contErros));

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
    VerificaSeGanhou(AIdJogador);
  end;
end;

Procedure TForm2.ComparaResultado(letra: String);
var
  i: integer;
  achou, terminou: Boolean;
begin
  achou := false;
  terminou := true;

  for i := 1 to length(edtPalavraSecreta.Text) do
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

  for i := 1 to length(edtPalavraSecreta.Text) do
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
  begin
    ShowMessage('Errou');
    Label2.Caption := edtPalavraSecreta.Text;
    LblPalavraRevelada.Visible := true;
    Label2.Visible := true;
  end
  else if terminou then
  begin
    ShowMessage('Acertou');
    Ganhou(JogadorAtual, false);
  end;
  // JogadorAtual := StrToInt(IfThen(JogadorAtual = 1, '2', '1'));
end;

procedure TForm2.ControlaCampos;
begin
  edtChutarPalavra.Visible := False;
  btnChutarPalavra.Visible := False;
  edtPalavra.Text := '';
  edtPalavra.Visible := true;
  btnJogar.Visible := true;
  pnlLetras.Enabled := False;
  contErros := 0;
  JogadorAtual := StrToInt(IfThen((JogadorAtual = 2) or (JogadorAtual = 0),
    '1', '2'));
  imgBonecoForca.Picture.LoadFromFile
    ('C:\game-forca\jogo-forca-delphi\img\nada.png');
  edtPalavraSecreta.SetFocus;

end;

end.
