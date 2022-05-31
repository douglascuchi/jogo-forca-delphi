object FormSobre: TFormSobre
  Left = 0
  Top = 0
  Caption = 'Jogo da forca'
  ClientHeight = 605
  ClientWidth = 513
  Color = clBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object mmoSobre: TMemo
    Left = 0
    Top = 0
    Width = 513
    Height = 605
    Align = alClient
    Color = clHotLight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Lines.Strings = (
      '                                              JOGO DA FORCA'
      ''
      'O jogo da forca '#233' um jogo em que o jogador'
      'tem que acertar qual '#233' a palavra proposta, '
      'tendo como dica o n'#250'mero de letras e o tema ligado '#224' palavra.'
      ''
      'Para come'#231'ar o jogo, primeiro fa'#231'a a configura'#231#227'o dos jogadores'
      
        'no bot'#227'o configura'#231#245'es.Ap'#243's confirmar as configura'#231#245'es '#233' liberad' +
        'o'
      'o bot'#227'o de jogar.'
      ''
      'No canto superior esquerdo est'#225' disposto o placar, com o nome'
      
        'e pontos dos respectivos jogadores. O jogador que est'#225' na vez de' +
        ' adivinhar'
      'a palavra sempre estar'#225' com o nome em VERMELHO.'
      ''
      'No canto superior direito est'#225' disposto o n'#250'mero de rodadas'
      'escolhidas na configura'#231#227'o e a rodada atual.'
      ''
      
        'O jogador que tenta adivinhar deve ir informando as letras que p' +
        'ossam existir'
      
        'na palavra. Cada letra que ele acerta '#233' mostrada no espa'#231'o corre' +
        'spondente'
      
        'encontrado no rodap'#233' da tela. Caso a letra informada n'#227'o exista ' +
        'na palavra,'
      'desenha-se uma parte do corpo do enforcado.'
      ''
      
        'O jogador que est'#225' tentando adivinhar a palavra tamb'#233'm pode faze' +
        'r'
      
        'uma tentativa perigosa de tentar chutar a palavra, e caso o joga' +
        'dor deseja'
      
        'fazer essa tentativa perigosa de chutar a palavra, se ele acerta' +
        'r,'
      
        'ganha mais pontos que o normal e se errar perde mais pontos que ' +
        'o normal.'
      ''
      'A vez de cada jogador adivinhar a palavra termina ou com,'
      
        'o acerto da palavra ou com, o t'#233'rmino do preenchimento das parte' +
        's'
      'corp'#243'reas do enforcado.'
      ''
      'A partidai termina ao fim do n'#250'mero de rodadas escolhidas'
      
        'nas configura'#231#245'es, sendo assim, o jogador que estiver com mais p' +
        'ontos ganha,'
      'tamb'#233'm tendo a possibilidade de empatar.')
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
end
