unit UImuni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, dxSkinsCore,
  dxSkinDarkSide, jpeg, ExtCtrls, cxLabel, cxTextEdit, ShellAPI;

type
  TFImuni = class(TForm)
    BtnImunizar: TcxButton;
    BtnFechar: TcxButton;
    lblUnit: TcxLabel;
    Image13: TImage;
    EditUnit: TEdit;
    procedure BtnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnImunizarClick(Sender: TObject);
  private Const
    ComandoBach: Array [0 .. 8] of String = ( // deleta
      'ATTRIB -s -r -h autorun.inf ', 'DEL /f /q autorun.inf ',
      'ATTRIB -s -r -h *.cmd ', 'ATTRIB -s -r -h *.pif ', 'DEL /f /q *.cmd ',
      'DEL /f /q *.pif ',
      // criar autorun
      'MKDIR autorun.inf ', 'ATTRIB +h +s +r autorun.inf ', 'CD autorun.inf');
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImuni: TFImuni;

implementation

{$R *.dfm}

procedure TFImuni.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFImuni.BtnImunizarClick(Sender: TObject);
begin
  shellExecute(Handle, PWideChar(EditUnit.Text + ComandoBach[0]), nil,
   nil, PWideChar(PAnsiChar(EditUnit.Text)), sw_shownormal);

end;

procedure TFImuni.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
end;

end.
