unit UnFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.BaseImageCollection,
  Vcl.ImageCollection, Vcl.Buttons, System.ImageList, Vcl.ImgList, pngimage,
  Vcl.StdCtrls, Vcl.Menus, Vcl.Imaging.jpeg;

type
  TForm2 = class(TForm)
    imgBonecoForca: TImage;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    este1: TMenuItem;
    teste1: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N12: TMenuItem;
    N22: TMenuItem;
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
    Edit1: TEdit;
    btnChutarFrase: TButton;
    imgFundo: TImage;
    pnlBaseFundo: TPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormShow(Sender: TObject);
var
  count: Integer;
begin
   imgBonecoForca.Picture.LoadFromFile
        ('C:\game-forca\jogo-forca-delphi\img\nada.png');

  count := 6;
  case count of
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

end;

end.
