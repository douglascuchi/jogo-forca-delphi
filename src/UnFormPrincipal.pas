unit UnFormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.BaseImageCollection,
  Vcl.ImageCollection, Vcl.Buttons, System.ImageList, Vcl.ImgList, pngimage,
  Vcl.StdCtrls, Vcl.Menus;

type
  TForm2 = class(TForm)
    Image1: TImage;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    este1: TMenuItem;
    teste1: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N12: TMenuItem;
    N22: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
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
   Image1.Picture.LoadFromFile
        ('C:\game-forca\bare\img\nada.png');

  count := 6;
  case count of
    1:
      Image1.Picture.LoadFromFile
        ('C:\game-forca\bare\img\cabeca.png');
    2:
      Image1.Picture.LoadFromFile
        ('C:\game-forca\bare\img\corpo.png');
    3:
      Image1.Picture.LoadFromFile
        ('C:\game-forca\bare\img\braco-esq.png');
    4:
      Image1.Picture.LoadFromFile
        ('C:\game-forca\bare\img\dois-bracos.png');
    5:
      Image1.Picture.LoadFromFile
        ('C:\game-forca\bare\img\perna-esq.png');
    6:
      Image1.Picture.LoadFromFile
        ('C:\game-forca\bare\img\completo.png');

  end;

end;

end.