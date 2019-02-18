program CTS;

uses
  Vcl.Forms,
  CTS.Main in 'CTS.Main.pas' {FormMain},
  Vcl.Themes,
  Vcl.Styles,
  CTS.Test in 'CTS.Test.pas' {FormTest};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Работа с цветом';
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormTest, FormTest);
  Application.Run;
end.
