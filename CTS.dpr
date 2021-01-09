program CTS;

uses
  Vcl.Forms,
  CTS.Main in 'CTS.Main.pas' {FormMain},
  CTS.Test in 'CTS.Test.pas' {FormTest},
  HGM.Utils.Color in '..\Components\HGM.Utils.Color.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Работа с цветом';
  {$IFDEF DEBUG}
  ReportMemoryLeaksOnShutdown := True;
  {$ENDIF}
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormTest, FormTest);
  Application.Run;
end.
