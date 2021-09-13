unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xpman, Buttons, StdCtrls;

type
  TFrmMain = class(TForm)
    BitBtn1: TBitBtn;
    Button1: TButton;
    BitBtn2: TBitBtn;
    CheckBox1: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

procedure TFrmMain.BitBtn1Click(Sender: TObject);
begin
showmessage('Нажал Bitbutton "No"');
end;

procedure TFrmMain.Button1Click(Sender: TObject);
begin
showmessage('Нажал button');
end;

procedure TFrmMain.BitBtn2Click(Sender: TObject);
begin
showmessage('Нажал BitButton "Cansel"');
end;

end.
