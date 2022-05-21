object FormGanhouPerdeu: TFormGanhouPerdeu
  Left = 585
  Top = 219
  BorderIcons = []
  Caption = 'FormGanhouPerdeu'
  ClientHeight = 268
  ClientWidth = 298
  Color = clBtnFace
  Constraints.MaxHeight = 307
  Constraints.MaxWidth = 314
  Constraints.MinHeight = 307
  Constraints.MinWidth = 314
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 298
    Height = 227
    ActivePage = tsGanhou
    Align = alClient
    TabOrder = 0
    object tsGanhou: TTabSheet
      Caption = 'Ganhou'
      object lblJogadorGanhou: TLabel
        Left = 104
        Top = 29
        Width = 51
        Height = 13
        Caption = '*Jogador*'
      end
      object lblMsgGanhou: TLabel
        Left = 88
        Top = 48
        Width = 82
        Height = 13
        Caption = 'VOC'#202' ACERTOU!'
      end
      object lblGanhouPontos: TLabel
        Left = 135
        Top = 93
        Width = 63
        Height = 13
        Caption = '*Pontua'#231#227'o*'
      end
      object lblMsgGanhouPontos: TLabel
        Left = 47
        Top = 93
        Width = 82
        Height = 13
        Caption = 'Pontua'#231#227'o atual:'
      end
    end
    object tsPerdeu: TTabSheet
      Caption = 'Perdeu'
      ImageIndex = 1
      object lblJogadorPerdeu: TLabel
        Left = 103
        Top = 37
        Width = 51
        Height = 13
        Caption = '*Jogador*'
      end
      object lblMsgPerdeu: TLabel
        Left = 93
        Top = 56
        Width = 69
        Height = 13
        Caption = 'VOC'#202' ERROU!'
      end
      object lblMsgPerdeuPontos: TLabel
        Left = 50
        Top = 96
        Width = 82
        Height = 13
        Caption = 'Pontua'#231#227'o atual:'
      end
      object lblPerdeuPontos: TLabel
        Left = 134
        Top = 96
        Width = 45
        Height = 13
        Caption = '*Pontos*'
      end
      object lblLblMsgPalavra: TLabel
        Left = 50
        Top = 138
        Width = 78
        Height = 13
        Caption = 'Palavra correta:'
      end
      object lblPalavraRevelada: TLabel
        Left = 130
        Top = 138
        Width = 93
        Height = 13
        Caption = '*PalavraRevelada*'
      end
    end
  end
  object pnlConfirmar: TPanel
    Left = 0
    Top = 227
    Width = 298
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnContinuar: TButton
      Left = 1
      Top = 1
      Width = 296
      Height = 39
      Align = alClient
      Caption = 'Continuar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clPurple
      Font.Height = -27
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnContinuarClick
    end
  end
end
