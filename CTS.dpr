program CTS;

uses
  Vcl.Forms,
  CTS.Main in 'CTS.Main.pas' {FormMain},
  CTS.Test in 'CTS.Test.pas' {FormTest},
  CTS.LD in 'CTS.LD.pas' {FormLD},
  HGM.GitHubUpdater in '..\GitHubUpdater\HGM.GitHubUpdater.pas';

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
  Application.CreateForm(TFormLD, FormLD);
  Application.Run;
end.
