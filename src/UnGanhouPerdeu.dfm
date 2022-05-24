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
    ExplicitTop = -5
    object tsGanhou: TTabSheet
      Caption = 'Ganhou'
      object pnlGanhouBase: TPanel
        Left = 0
        Top = 0
        Width = 290
        Height = 199
        Align = alClient
        BevelOuter = bvNone
        Color = 11927402
        ParentBackground = False
        TabOrder = 0
        ExplicitTop = -2
        object lblMsgGanhouPontos: TLabel
          Left = 28
          Top = 163
          Width = 139
          Height = 19
          Caption = 'Pontua'#231#227'o atual:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblMsgGanhou: TLabel
          Left = 35
          Top = 33
          Width = 222
          Height = 33
          Alignment = taCenter
          Caption = 'VOC'#202' ACERTOU!'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lblJogadorGanhou: TLabel
          Left = 105
          Top = 134
          Width = 101
          Height = 23
          Caption = '*Jogador*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clTeal
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblMsgGanhouParabens: TLabel
          Left = 91
          Top = 72
          Width = 112
          Height = 25
          Alignment = taCenter
          Caption = 'Parab'#233'ns!!'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lblMsgGanhouPlayer: TLabel
          Left = 28
          Top = 138
          Width = 71
          Height = 19
          Caption = 'Jogador:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtQtdeGanhouPontos: TEdit
          Left = 173
          Top = 161
          Width = 46
          Height = 21
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object tsPerdeu: TTabSheet
      Caption = 'Perdeu'
      ImageIndex = 1
      object pnlBasePerdeu: TPanel
        Left = 0
        Top = 0
        Width = 290
        Height = 199
        Align = alClient
        BevelOuter = bvNone
        Color = 3947775
        ParentBackground = False
        TabOrder = 0
        ExplicitTop = -2
        object lblMsgPerdeu: TLabel
          Left = 50
          Top = 32
          Width = 189
          Height = 33
          Caption = 'VOC'#202' ERROU!'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblLblMsgPalavra: TLabel
          Left = 22
          Top = 83
          Width = 107
          Height = 16
          Caption = 'Palavra correta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblMsgPerdeuPontos: TLabel
          Left = 22
          Top = 167
          Width = 139
          Height = 19
          Caption = 'Pontua'#231#227'o atual:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblMsgPerdeuPlayer: TLabel
          Left = 22
          Top = 142
          Width = 71
          Height = 19
          Caption = 'Jogador:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblJogadorPerdeu: TLabel
          Left = 99
          Top = 138
          Width = 101
          Height = 23
          Caption = '*Jogador*'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtPerdeuPontos: TEdit
          Left = 167
          Top = 165
          Width = 46
          Height = 21
          ReadOnly = True
          TabOrder = 0
        end
        object edtPalavraCorreta: TEdit
          Left = 135
          Top = 78
          Width = 121
          Height = 21
          TabOrder = 1
          Text = 'edtPalavraCorreta'
        end
      end
    end
  end
  object pnlConfirmar: TPanel
    Left = 0
    Top = 227
    Width = 298
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object btnContinuar: TButton
      Left = 0
      Top = 0
      Width = 298
      Height = 41
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
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 296
      ExplicitHeight = 39
    end
  end
end
