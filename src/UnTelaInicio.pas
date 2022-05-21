unit UnTelaInicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, UnConfig, UnFormPrincipal,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TFormInicial = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    FORCA: TLabel;
    Button1: TButton;
    btnJogar: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnJogarClick(Sender: TObject);
  private
    vConfig: ADadosConfig;
  public
    { Public declarations }
  end;

var
  FormInicial: TFormInicial;

implementation

{$R *.dfm}

procedure TFormInicial.btnJogarClick(Sender: TObject);
var
  vForm2: TForm2;
begin
  vForm2 := TForm2.Create(nil);
  try
    vForm2.vDadosConfig.NomeJogador := vConfig.NomeJogador;
    vForm2.vDadosConfig.QtdeRodadas := vConfig.QtdeRodadas;
    vForm2.ShowModal;
  finally
    FreeAndNil(vForm2);
  end;
end;

procedure TFormInicial.Button1Click(Sender: TObject);
begin
  FormInicial.Close;
end;

procedure TFormInicial.SpeedButton2Click(Sender: TObject);
begin
  vConfig := TFormConfig.Exibir;
  btnJogar.Visible := vConfig.Ok;
end;

end.
