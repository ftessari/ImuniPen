program ImuniPen;

uses
  Forms,
  UImuni in 'UImuni.pas' {FImuni};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFImuni, FImuni);
  Application.Run;
end.
