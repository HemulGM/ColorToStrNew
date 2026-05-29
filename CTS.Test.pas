unit CTS.Test;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, mbDeskPickerButton, Vcl.ExtCtrls, Vcl.Buttons, HGM.Button,
  Vcl.Imaging.pngimage, Vcl.ExtDlgs;

type
  TFormTest = class(TForm)
    Panel1: TPanel;
    Shape4: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ColorSelectBG: TButtonFlat;
    ColorSelectPanel: TButtonFlat;
    ColorSelectFont: TButtonFlat;
    ColorDialog: TColorDialog;
    GroupBox1: TGroupBox;
    RadioButtonPanel: TRadioButton;
    RadioButtonFont: TRadioButton;
    RadioButtonBG: TRadioButton;
    RadioButtonNone: TRadioButton;
    Image1: TImage;
    ShapeBG: TShape;
    ShapeT1: TPanel;
    ScrollBox1: TScrollBox;
    LabelT1: TLabel;
    ShapeT2: TPanel;
    LabelT2: TLabel;
    ShapeT3: TPanel;
    LabelT3: TLabel;
    Image2: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    Button1: TButton;
    procedure ColorSelectBGChange(Sender: TObject);
    procedure ColorSelectPanelChange(Sender: TObject);
    procedure ColorSelectFontChange(Sender: TObject);
    procedure ColorSelectBGClick(Sender: TObject);
    procedure ColorSelectPanelClick(Sender: TObject);
    procedure ColorSelectFontClick(Sender: TObject);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTest: TFormTest;

implementation
 uses System.Math;

{$R *.dfm}

procedure TFormTest.Button1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute(Handle) then
    Image2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TFormTest.ColorSelectBGChange(Sender: TObject);
begin
  ShapeBG.Brush.Color := ColorSelectBG.ColorNormal;
end;

procedure TFormTest.ColorSelectBGClick(Sender: TObject);
begin
  if ColorDialog.Execute(Handle) then
  begin
    ColorSelectBG.ColorNormal := ColorDialog.Color;
    ColorSelectBG.ColorPressed := ColorDialog.Color;
    ColorSelectBG.ColorOver := ColorDialog.Color;
    ColorSelectBGChange(nil);
  end;
end;

procedure TFormTest.ColorSelectFontChange(Sender: TObject);
begin
  LabelT1.Font.Color := ColorSelectFont.ColorNormal;
  LabelT2.Font.Color := ColorSelectFont.ColorNormal;
  LabelT3.Font.Color := ColorSelectFont.ColorNormal;
end;

procedure TFormTest.ColorSelectFontClick(Sender: TObject);
begin
  if ColorDialog.Execute(Handle) then
  begin
    ColorSelectFont.ColorNormal := ColorDialog.Color;
    ColorSelectFont.ColorPressed := ColorDialog.Color;
    ColorSelectFont.ColorOver := ColorDialog.Color;
    ColorSelectFontChange(nil);
  end;
end;

procedure TFormTest.ColorSelectPanelChange(Sender: TObject);
begin
  ShapeT1.Color := ColorSelectPanel.ColorNormal;
  ShapeT2.Color := ColorSelectPanel.ColorNormal;
  ShapeT3.Color := ColorSelectPanel.ColorNormal;
end;

procedure TFormTest.ColorSelectPanelClick(Sender: TObject);
begin
  if ColorDialog.Execute(Handle) then
  begin
    ColorSelectPanel.ColorNormal := ColorDialog.Color;
    ColorSelectPanel.ColorPressed := ColorDialog.Color;
    ColorSelectPanel.ColorOver := ColorDialog.Color;
    ColorSelectPanelChange(nil);
  end;
end;

procedure TFormTest.FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  LabelT1.Font.Size := Max(6, LabelT1.Font.Size - 1);
  LabelT2.Font.Size := Max(6, LabelT1.Font.Size - 1);
  LabelT3.Font.Size := Max(6, LabelT1.Font.Size - 1);
end;

procedure TFormTest.FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  LabelT1.Font.Size := Min(40, LabelT1.Font.Size + 1);
  LabelT2.Font.Size := Min(40, LabelT1.Font.Size + 1);
  LabelT3.Font.Size := Min(40, LabelT1.Font.Size + 1);
end;

end.

