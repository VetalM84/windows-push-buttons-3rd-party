unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Check: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CheckClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;



{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
{ application.ProcessMessages добавлен мной для удобства
  при нажатии на другую КНОПКУ, попробуйте без него }
application.ProcessMessages;
h1:= FindWindow('tfrmmain', nil);
// нажать BitBtn "&No"       НЕ ЗАБУДЬТЕ ПОСТАВИТЬ СИМВОЛ & ПЕРЕД "&No"
//пробелы и специальные символы в надписях учитываются тоже
h2:= FindWindowEx(h1, 0, 'TBitBtn', '&No');
SendMessage(h2, BM_CLICK,0,0);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
h1:= FindWindow('tfrmmain', nil);
// поставить метку на CheckBox "Флажок"
h2:= FindWindowEx(h1, 0, 'TCheckBox', 'Флажок');
SendMessage(h2, BM_SetCheck, 1, 0);

end;

procedure TForm1.Button3Click(Sender: TObject);
begin
application.ProcessMessages;
h1:= FindWindow('tfrmmain', nil);
// нажать Button ""
h2:= FindWindowEx(h1, 0, 'TButton', '');
SendMessage(h2, bm_click, 0, 0);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
application.ProcessMessages;
h1:= FindWindow('tfrmmain', nil);
// нажать bitbtn "Cansel"
h2:= FindWindowEx(h1, 0, 'tbitbtn', 'Cancel');
SendMessage(h2, BM_CLICK,0,0);
end;

procedure TForm1.CheckClick(Sender: TObject);
begin
h1:= FindWindow('tfrmmain', nil);
// поставить метку на CheckBox "Флажок"
h2:= FindWindowEx(h1, 0, 'TCheckBox', 'Флажок');
if check.Checked= false then SendMessage(h2, BM_SetCheck, 0, 0) else
SendMessage(h2, BM_SetCheck, 1, 0);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
h1:= FindWindow('tfrmmain', nil);
h2:= FindWindowEx(h1, 0, 'TCheckBox', 'Флажок');
// синхронизация Check с TCheckBox другого приложения
if SendMessage(h2, bm_getcheck, 0, 0)<> 0 then check.Checked:= true
else check.Checked:= false;

end;

end.
