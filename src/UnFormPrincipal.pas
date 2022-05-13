unit UnFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
    Edit1: TEdit;
    btnChutarFrase: TSpeedButton;
    LblPalavraRevelada: TLabel;
    Image1: TImage;
    Button1: TButton;
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
    procedure btnChutarFraseClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
    Palavra: array [1 .. 25] of string;
    Resultado: array [1 .. 25] of string;
    GuardaResultado: array [1 .. 25] of string;
    contErros: integer;
    Procedure ComparaResultado(letra: string);
    Procedure novoJogo;

  public
    { Public declarations }

  end;

var
  Form2: TForm2;

implementation

//uses
//  Unit3;

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

procedure TForm2.btnChutarFraseClick(Sender: TObject);
var
  i: integer;
begin
  for i := 1 to length(Edit1.Text) do
  begin
    Palavra[i] := copy(Edit1.Text, i, 1);
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
  contErros := 0;
  imgBonecoForca.Picture.LoadFromFile
    ('C:\game-forca\jogo-forca-delphi\img\nada.png');
  Edit1.SetFocus;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  LblPalavraRevelada.Visible := false;
  Label2.Visible := false;
  novoJogo;
end;

Procedure TForm2.ComparaResultado(letra: String);
var
  i: integer;
  achou, terminou: boolean;
begin
  achou := false;
  terminou := true;

  for i := 1 to length(Edit1.Text) do
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

  for i := 1 to length(Edit1.Text) do
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
    Label2.Caption := Edit1.Text;
    LblPalavraRevelada.Visible := true;
    Label2.Visible := true;
  end
  else if terminou = true then
  begin
    ShowMessage('Acertou');
  end;

end;

end.
