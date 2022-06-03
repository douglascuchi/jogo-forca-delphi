object FormSobre: TFormSobre
  Left = 0
  Top = 0
  Caption = 'Jogo da forca'
  ClientHeight = 605
  ClientWidth = 682
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
    Width = 682
    Height = 605
    Align = alClient
    Color = clHotLight
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    Lines.Strings = (
      
        '                                                           JOGO ' +
        'DA FORCA'
      ''
      
        'O jogo da forca '#233' um jogo em que o jogador tem que acertar qual ' +
        #233' a palavra proposta,'
      'tendo como dica o n'#250'mero de letras e o tema ligado '#224' palavra.'
      ''
      
        'Para come'#231'ar o jogo, primeiro fa'#231'a a configura'#231#227'o dos jogadores ' +
        'no bot'#227'o configura'#231#245'es.'
      'Ap'#243's confirmar as configura'#231#245'es '#233' liberado o bot'#227'o de jogar.'
      ''
      
        'No canto superior esquerdo est'#225' disposto o placar, com o nome e ' +
        'pontos dos respectivos'
      
        'jogadores. O jogador que est'#225' na vez de adivinhar a palavra semp' +
        're estar'#225' com o nome em'
      'VERMELHO.'
      ''
      
        'No canto superior direito est'#225' disposto o n'#250'mero de rodadas esco' +
        'lhidas na configura'#231#227'o'
      'e a rodada atual.'
      ''
      
        'O jogador que tenta adivinhar deve ir informando as letras que p' +
        'ossam existir na palavra.'
      
        'Cada letra que ele acerta '#233' mostrada no espa'#231'o correspondente en' +
        'contrado no rodap'#233' da tela.'
      
        'Caso a letra informada n'#227'o exista na palavra, desenha-se uma par' +
        'te do corpo do enforcado.'
      ''
      
        'O jogador que est'#225' tentando adivinhar tamb'#233'm pode fazer uma tent' +
        'ativa perigosa de'
      
        'tentar chutar a palavra, e caso o jogador escolher essa alternat' +
        'iva, se ele acertar,'
      
        'ganha mais pontos que o normal e se errar perde mais pontos que ' +
        'o normal.'
      ''
      
        'A vez de cada jogador adivinhar a palavra termina com o acerto d' +
        'a palavra ou com o t'#233'rmino'
      'do preenchimento das partes corp'#243'reas do enforcado.'
      ''
      
        'Em rela'#231#227'o a contagem dos pontos, n'#227'o utilizando a fun'#231#227'o de chu' +
        'tar, o padr'#227'o de pontos'
      
        'quando acerta a palavra '#233' de +100, descontando desses pontos -10' +
        ', para cada parte do corpo perdida.'
      
        'Se o mesmo errar a palavra n'#227'o chutando, a pontua'#231#227'o base fixa '#233 +
        ' de -50 pontos.'
      ''
      
        'Quando falamos na op'#231#227'o de chutar, o mesmo estar'#225' habilitado som' +
        'ente quando faltar 4 ou mais letras'
      
        'para descobrir na palavra secreta. Na op'#231#227'o de chutar, se acaso ' +
        'ocorrer o imprevisto de n'#227'o acertar'
      
        'a palavra, a pontua'#231#227'o base fixa de perda '#233' de -100 pontos, em c' +
        'ontrapartida se houver acerto,'
      
        'a pontua'#231#227'o '#233' fixada para +150 pontos, n'#227'o levando em considera'#231 +
        #227'o as partes do corpo perdidas.'
      ''
      
        'A partida termina ao fim do n'#250'mero de rodadas escolhidas nas con' +
        'figura'#231#245'es, sendo assim, o jogador'
      
        'que estiver com mais pontos ganha, tamb'#233'm tendo a possibilidade ' +
        'de empatar.')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
end
