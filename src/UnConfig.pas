unit UnConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TDadosConfig = record
    Ok: Boolean;
    NomeJogador: array [0 .. 1] of string;
    QtdeRodadas: Integer;
  end;

  TFormConfig = class(TForm)
    pnlBase: TPanel;
    lblJogador1: TLabel;
    lblJogador2: TLabel;
    edtJogador1: TEdit;
    edtJogador2: TEdit;
    lblQtdeRodadas: TLabel;
    edtQtdeRodadas: TEdit;
    btnConfirmar: TButton;
    btnCancelar: TButton;
    ImgBase: TImage;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    GDados: TDadosConfig;
  public
    class function Exibir: TDadosConfig;
  end;

var
  FormConfig: TFormConfig;

implementation

{$R *.dfm}

procedure TFormConfig.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrNo;
end;

procedure TFormConfig.btnConfirmarClick(Sender: TObject);
begin
  if (edtQtdeRodadas.Text = '') or (edtJogador1.Text = '') or
    (edtJogador2.Text = '') then
  begin
    MessageDlg('Todos os campos são obrigatórios!', TMsgDlgType.mtWarning,
      mbOKCancel, 0);
    Abort
  end;

  GDados.NomeJogador[0] := edtJogador1.Text;
  GDados.NomeJogador[1] := edtJogador2.Text;
  GDados.QtdeRodadas := StrToInt(edtQtdeRodadas.Text);
  ModalResult := mrOk;
end;

class function TFormConfig.Exibir: TDadosConfig;
var
  LForm: TFormConfig;
begin
  LForm := TFormConfig.Create(nil);
  try
    if LForm.ShowModal = mrOk then
    begin
      LForm.GDados.Ok := True;
      Result := LForm.GDados;
    end
    else
    begin
      LForm.GDados.Ok := False;
      Result := LForm.GDados;
    end;
  finally
    FreeAndNil(LForm);
  end;
end;

end.
