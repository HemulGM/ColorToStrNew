unit CTS.Test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, mbDeskPickerButton,
  Vcl.ExtCtrls, Vcl.Buttons, sSpeedButton, sColorSelect;

type
  TFormTest = class(TForm)
    Panel1: TPanel;
    Shape4: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ColorSelectBG: TsColorSelect;
    ColorSelectPanel: TsColorSelect;
    ColorSelectFont: TsColorSelect;
    PanelT1: TPanel;
    PanelT2: TPanel;
    PanelT3: TPanel;
    LabelT1: TLabel;
    LabelT2: TLabel;
    LabelT3: TLabel;
    RadioButtonBG: TRadioButton;
    RadioButtonPanel: TRadioButton;
    RadioButtonFont: TRadioButton;
    procedure ColorSelectBGChange(Sender: TObject);
    procedure ColorSelectPanelChange(Sender: TObject);
    procedure ColorSelectFontChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTest: TFormTest;

implementation

{$R *.dfm}

procedure TFormTest.ColorSelectBGChange(Sender: TObject);
begin
 Color:=ColorSelectBG.ColorValue;
end;

procedure TFormTest.ColorSelectFontChange(Sender: TObject);
begin
 LabelT1.Font.Color:=ColorSelectFont.ColorValue;
 LabelT2.Font.Color:=ColorSelectFont.ColorValue;
 LabelT3.Font.Color:=ColorSelectFont.ColorValue;
end;

procedure TFormTest.ColorSelectPanelChange(Sender: TObject);
begin
 PanelT1.Color:=ColorSelectPanel.ColorValue;
 PanelT2.Color:=ColorSelectPanel.ColorValue;
 PanelT3.Color:=ColorSelectPanel.ColorValue;
end;

end.
