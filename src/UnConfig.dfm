object FormConfig: TFormConfig
  Left = 488
  Top = 165
  Caption = 'FormConfig'
  ClientHeight = 331
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBase: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 331
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object lblJogador1: TLabel
      Left = 72
      Top = 31
      Width = 198
      Height = 22
      Caption = 'Nome do jogador 1:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblJogador2: TLabel
      Left = 72
      Top = 95
      Width = 198
      Height = 22
      Caption = 'Nome do jogador 2:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblQtdeRodadas: TLabel
      Left = 72
      Top = 159
      Width = 242
      Height = 22
      Caption = 'Quantidade de rodadas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtJogador1: TEdit
      Left = 72
      Top = 59
      Width = 121
      Height = 30
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnExit = edtJogador1Exit
    end
    object edtJogador2: TEdit
      Left = 72
      Top = 123
      Width = 121
      Height = 30
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnExit = edtJogador2Exit
    end
    object edtQtdeRodadas: TEdit
      Left = 72
      Top = 187
      Width = 121
      Height = 30
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      NumbersOnly = True
      ParentFont = False
      TabOrder = 2
      OnExit = edtQtdeRodadasExit
    end
    object btnConfirmar: TButton
      Left = 57
      Top = 271
      Width = 121
      Height = 34
      Caption = 'Confirmar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TButton
      Left = 232
      Top = 271
      Width = 121
      Height = 34
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnCancelarClick
    end
  end
end
