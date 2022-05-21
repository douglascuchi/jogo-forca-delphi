unit UnConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  ADadosConfig = record
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
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtJogador1Exit(Sender: TObject);
    procedure edtJogador2Exit(Sender: TObject);
    procedure edtQtdeRodadasExit(Sender: TObject);
  private
    VDados: ADadosConfig;
  public
    class function Exibir: ADadosConfig;
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
  ModalResult := mrOk;
end;

procedure TFormConfig.edtJogador1Exit(Sender: TObject);
begin
  VDados.NomeJogador[0] := edtJogador1.Text;
end;

procedure TFormConfig.edtJogador2Exit(Sender: TObject);
begin
  VDados.NomeJogador[1] := edtJogador2.Text;
end;

procedure TFormConfig.edtQtdeRodadasExit(Sender: TObject);
begin
  VDados.QtdeRodadas := StrToInt(edtQtdeRodadas.Text);
end;

class function TFormConfig.Exibir: ADadosConfig;
var
  vForm: TFormConfig;
begin
  vForm := TFormConfig.Create(nil);
  try
    if vForm.ShowModal = mrOk then
    begin
      vForm.VDados.Ok := True;
      Result := vForm.VDados;
    end
    else if vForm.ShowModal = mrNo then
    begin
      vForm.VDados.Ok := False;
      Result := vForm.VDados;
    end;
  finally
    FreeAndNil(vForm);
  end;
end;

end.
