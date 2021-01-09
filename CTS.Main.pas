unit CTS.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, System.Types, Vcl.Imaging.pngimage,
  System.ImageList, Vcl.ImgList, System.UITypes, HGM.Controls.Labels, HGM.Controls.SpinEdit, HGM.Button,
  HGM.Controls.PanelCollapsed, HGM.Controls.PanelExt, HexaColorPicker, HSColorPicker, HSLRingPicker, HSLColorPicker,
  SLHColorPicker, HSVColorPicker, mbDeskPickerButton, mbOfficeColorDialog, mbColorPickerControl, Vcl.Themes, Vcl.Styles;

type
  TFormMain = class(TForm)
    TimerPXUC: TTimer;
    PanelCollapsedMagnify: TPanelCollapsed;
    DrawPanelMagnify: TDrawPanel;
    PanelCollapsedCurrentColor: TPanelCollapsed;
    ShapeCur: TShape;
    PanelCollapsedLDG: TPanelCollapsed;
    ShapeDL: TShape;
    Label1: TLabel;
    TrackBarL: TTrackBar;
    Label2: TLabel;
    PanelCollapsedPallete: TPanelCollapsed;
    PageControlPalette: TPageControl;
    TabSheetP2: TTabSheet;
    ImageR: TImage;
    PanelCollapsedRGB: TPanelCollapsed;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpinEditG: TlkSpinEdit;
    SpinEditB: TlkSpinEdit;
    SpinEditR: TlkSpinEdit;
    SpinEditRGB: TlkSpinEdit;
    PanelCollapsedValues: TPanelCollapsed;
    Label6: TLabel;
    EditResHEX: TEdit;
    EditResTColor: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    EditResHTML: TEdit;
    PanelCollapsedMix: TPanelCollapsed;
    ListBoxMix: TListBox;
    ShapeMix: TShape;
    PanelCollapsedCMYK: TPanelCollapsed;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    SpinEditM: TlkSpinEdit;
    SpinEditY: TlkSpinEdit;
    SpinEditC: TlkSpinEdit;
    SpinEditK: TlkSpinEdit;
    Label12: TLabel;
    Label13: TLabel;
    PanelCollapsedHSVB: TPanelCollapsed;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    SpinEditS: TlkSpinEdit;
    SpinEditV: TlkSpinEdit;
    SpinEditH: TlkSpinEdit;
    PanelCollapsedTools: TPanelCollapsed;
    TabSheetHexa: TTabSheet;
    HexaColorPicker1: THexaColorPicker;
    TabSheetHS: TTabSheet;
    HSColorPicker1: THSColorPicker;
    TabSheetHSL: TTabSheet;
    HSLRingPicker1: THSLRingPicker;
    TabSheetSLH: TTabSheet;
    SLHColorPicker1: TSLHColorPicker;
    TabSheetHSV: TTabSheet;
    HSVColorPicker1: THSVColorPicker;
    ColorDialog1: TColorDialog;
    PanelCollapsedMem: TPanelCollapsed;
    Shape1: TLabelEx;
    Shape2: TLabelEx;
    Shape4: TLabelEx;
    Shape3: TLabelEx;
    Shape7: TLabelEx;
    Shape8: TLabelEx;
    Shape5: TLabelEx;
    Shape6: TLabelEx;
    Shape13: TLabelEx;
    Shape14: TLabelEx;
    Shape16: TLabelEx;
    Shape15: TLabelEx;
    Shape9: TLabelEx;
    Shape10: TLabelEx;
    Shape11: TLabelEx;
    Shape12: TLabelEx;
    TabSheetStd: TTabSheet;
    DrawPanelSpectr: TDrawPanel;
    Panel1: TPanel;
    Label17: TLabel;
    CheckBoxWeb: TCheckBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    TrackBarHSVV: TTrackBar;
    ImageRWeb: TImage;
    ButtonFlatStdDlg: TButtonFlat;
    ButtonFlatTest: TButtonFlat;
    ButtonFlatOnTop: TButtonFlat;
    ButtonFlatHelp: TButtonFlat;
    ImageListTools: TImageList;
    ButtonFlatDoGrey: TButtonFlat;
    ButtonFlatHEX: TButtonFlat;
    ImageList16: TImageList;
    ButtonFlatTColor: TButtonFlat;
    ButtonFlatWeb: TButtonFlat;
    ButtonFlatMixAdd: TButtonFlat;
    ButtonFlatMixDel: TButtonFlat;
    Panel2: TPanel;
    ButtonFlatStd: TButtonFlat;
    ButtonFlatP2: TButtonFlat;
    ButtonFlatHexa: TButtonFlat;
    ButtonFlatHS: TButtonFlat;
    ButtonFlatHSL: TButtonFlat;
    ButtonFlatSLH: TButtonFlat;
    ButtonFlatHSV: TButtonFlat;
    ButtonFlatMagnDown: TButtonFlat;
    ButtonFlatMagnUp: TButtonFlat;
    PanelDoGray: TPanel;
    ButtonFlatTheme: TButtonFlat;
    procedure TimerPXUCTimer(Sender: TObject);
    procedure TrackBarLChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DrawPanelMagnifyPaint(Sender: TObject);
    procedure SpinEditRChange(Sender: TObject);
    procedure SpinEditRKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpinEditRGBChange(Sender: TObject);
    procedure ShapeDLMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ListBoxMixDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure SpeedButtonMixAddClick(Sender: TObject);
    procedure SpeedButtonMixDeleteClick(Sender: TObject);
    procedure SpeedButtonMixDoClick(Sender: TObject);
    procedure SpinEditKChange(Sender: TObject);
    procedure ShapeMixMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DrawPanelMagnifyMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure SpinEditVChange(Sender: TObject);
    procedure HexaColorPicker1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure HSColorPicker1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure HSLRingPicker1Change(Sender: TObject);
    procedure SLHColorPicker1Change(Sender: TObject);
    procedure HSVColorPicker1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ImageRMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ButtonFlatStdDlgClick(Sender: TObject);
    procedure ButtonFlatTestClick(Sender: TObject);
    procedure ButtonFlatOnTopClick(Sender: TObject);
    procedure ButtonFlatHelpClick(Sender: TObject);
    procedure Shape1MouseEnter(Sender: TObject);
    procedure Shape1MouseLeave(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DrawPanelSpectrPaint(Sender: TObject);
    procedure DrawPanelSpectrMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DrawPanelSpectrMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBoxHSVWebClick(Sender: TObject);
    procedure TrackBarHSVVChange(Sender: TObject);
    procedure HSVColorPicker1Change(Sender: TObject);
    procedure ImageRMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure ImageRMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ButtonFlatDoGreyClick(Sender: TObject);
    procedure ButtonFlatHEXClick(Sender: TObject);
    procedure ButtonFlatWebClick(Sender: TObject);
    procedure EditResHEXKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonFlatTColorClick(Sender: TObject);
    procedure EditResTColorKeyPress(Sender: TObject; var Key: Char);
    procedure EditResHTMLKeyPress(Sender: TObject; var Key: Char);
    procedure ButtonFlatStdClick(Sender: TObject);
    procedure ButtonFlatP2Click(Sender: TObject);
    procedure ButtonFlatHexaClick(Sender: TObject);
    procedure ButtonFlatHSClick(Sender: TObject);
    procedure ButtonFlatHSLClick(Sender: TObject);
    procedure ButtonFlatSLHClick(Sender: TObject);
    procedure ButtonFlatHSVClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ListBoxMixDblClick(Sender: TObject);
    procedure ButtonFlatMagnUpClick(Sender: TObject);
    procedure ButtonFlatMagnDownClick(Sender: TObject);
    procedure EditResTColorChange(Sender: TObject);
    procedure EditResHTMLChange(Sender: TObject);
    procedure EditResHEXChange(Sender: TObject);
    procedure ButtonFlatThemeClick(Sender: TObject);
  private
    FDataColor: TColor;
    FSpectBMP: TBitmap;
    FMagnify: TBitmap;
    FMgEmpty: Boolean;
    FActiveShape: TShape;
    FKeepColor: Boolean;
    FIsDark: Boolean;
    procedure SetShapeColor(Shape: TShape; aColor: TColor);
    procedure SetActiveShape(const Value: TShape);
    procedure DrawSpect;
    procedure SetColor(IsDark: Boolean);
  public
    procedure SetDataColor(dColor: TColor);
    procedure AddColorToMix(aColor: TColor);
    procedure Navigate(Tab: TTabSheet);
    function GetPixelUnderCursor: TColor;
    property ActiveShape: TShape read FActiveShape write SetActiveShape;
  end;

var
  FormMain: TFormMain;

implementation

uses
  Math, System.IniFiles, CTS.Test, HGM.Common.Utils, HGM.Utils.Color;

{$R *.dfm}

function CtrlDown: Boolean;
begin
  Result := GetKeyState(VK_CONTROL) < 0;
end;

function ShiftDown: Boolean;
begin
  Result := GetKeyState(VK_SHIFT) < 0;
end;

procedure TFormMain.AddColorToMix(aColor: TColor);
begin
  ListBoxMix.Items.Add(ColorToString(aColor));
  SpeedButtonMixDoClick(nil);
end;

procedure TFormMain.ButtonFlatDoGreyClick(Sender: TObject);
begin
  SetShapeColor(ShapeDL, GrayColor(FDataColor));
end;

procedure TFormMain.ButtonFlatMagnDownClick(Sender: TObject);
begin
  if FMagnify.Width >= DrawPanelMagnify.Width then
    Exit;
  FMagnify.SetSize(FMagnify.Width + 2, FMagnify.Width + 2);
  DrawPanelMagnify.Repaint;
end;

procedure TFormMain.ButtonFlatMagnUpClick(Sender: TObject);
begin
  if FMagnify.Width <= 3 then
    Exit;
  FMagnify.SetSize(FMagnify.Width - 2, FMagnify.Width - 2);
  DrawPanelMagnify.Repaint;
end;

procedure TFormMain.ButtonFlatSLHClick(Sender: TObject);
begin
  Navigate(TabSheetSLH);
end;

procedure TFormMain.ButtonFlatStdClick(Sender: TObject);
begin
  Navigate(TabSheetStd);
end;

procedure TFormMain.ButtonFlatHexaClick(Sender: TObject);
begin
  Navigate(TabSheetHexa);
end;

procedure TFormMain.ButtonFlatHEXClick(Sender: TObject);
begin
  try
    SetDataColor(HexToTColor(EditResHEX.Text));
  except
    //ShowMessage('Ops');
  end;
end;

procedure TFormMain.ButtonFlatHSClick(Sender: TObject);
begin
  Navigate(TabSheetHS);
end;

procedure TFormMain.ButtonFlatHSLClick(Sender: TObject);
begin
  Navigate(TabSheetHSL);
end;

procedure TFormMain.ButtonFlatHSVClick(Sender: TObject);
begin
  Navigate(TabSheetHSV);
end;

procedure TFormMain.ButtonFlatP2Click(Sender: TObject);
begin
  Navigate(TabSheetP2);
end;

procedure TFormMain.ButtonFlatTColorClick(Sender: TObject);
begin
  try
    SetDataColor(StringToColor(EditResTColor.Text));
  except
    //ShowMessage('Ops');
  end;
end;

procedure TFormMain.ButtonFlatWebClick(Sender: TObject);
begin
  try
    SetDataColor(HtmlToColor(EditResHTML.Text));
  except
    //ShowMessage('Ops');
  end;
end;

procedure TFormMain.CheckBoxHSVWebClick(Sender: TObject);
begin
  HSVColorPicker1.WebSafe := CheckBoxWeb.Checked;
  HSColorPicker1.WebSafe := CheckBoxWeb.Checked;
  DrawSpect;
  DrawPanelSpectr.Repaint;
  ImageR.Visible := not CheckBoxWeb.Checked;
  ImageRWeb.Visible := CheckBoxWeb.Checked;
end;

procedure TFormMain.DrawPanelMagnifyMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ssDouble in Shift then
    SetDataColor(GetPixelUnderCursor);
end;

procedure TFormMain.DrawPanelMagnifyPaint(Sender: TObject);
var
  PixW: Single;
  R: TRect;
  S: string;
begin
  DrawPanelMagnify.Canvas.StretchDraw(DrawPanelMagnify.ClientRect, FMagnify);
  if FMgEmpty then
  begin
    R := DrawPanelMagnify.ClientRect;
    S := 'Ctrl+Shift';
    DrawPanelMagnify.Canvas.TextRect(R, S, [tfCenter, tfVerticalCenter, tfSingleLine]);
  end;
  DrawPanelMagnify.Brush.Style := bsClear;
  PixW := DrawPanelMagnify.ClientRect.Width / FMagnify.Width;
  R.Width := Ceil(PixW);
  R.Height := Ceil(PixW);
  R.Location := Point(Round((PixW * FMagnify.Width / 2) - (PixW / 2)), Round((PixW * FMagnify.Width / 2) - (PixW / 2)));
  DrawPanelMagnify.Canvas.FrameRect(R);
end;

procedure TFormMain.DrawPanelSpectrMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  RC: TRect;
  TL, BR: TPoint;
begin
  TL := DrawPanelSpectr.ClientToScreen(Point(0, 0));
  BR := DrawPanelSpectr.ClientToScreen(Point(DrawPanelSpectr.Width, DrawPanelSpectr.Height));
  RC := TRect.Create(TL, BR);
  ClipCursor(@RC);
  FKeepColor := True;
end;

procedure TFormMain.DrawPanelSpectrMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ClipCursor(nil);
  FKeepColor := False;
end;

procedure TFormMain.DrawPanelSpectrPaint(Sender: TObject);
begin
  DrawPanelSpectr.Canvas.StretchDraw(DrawPanelSpectr.ClientRect, FSpectBMP);
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Ini: TIniFile;
  i: Integer;
  Buf: TComponent;
begin
  Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\config.ini');
  try
    Ini.WriteBool('General', 'DarkTheme', FIsDark);
    for i := 1 to 16 do
    begin
      Buf := FindComponent('Shape' + IntToStr(i));
      if Assigned(Buf) then
        Ini.WriteInteger('CustomPallete', 'Shape' + IntToStr(i), (Buf as TShape).Brush.Color);
    end;
  finally
    Ini.Free;
  end;
end;

procedure TFormMain.DrawSpect;
var
  H, S, V: Word;
  R, G, B: Byte;
begin
  with FSpectBMP.Canvas do
  begin
    V := 100;
    for H := 0 to 359 do
    begin
      for S := 1 to 100 do
      begin
        HSVToRGB(H, S, V, R, G, B);
        if CheckBoxWeb.Checked then
          Pixels[H, S] := RGB(Byte(Trunc(R / 50) * 50), Trunc(G / 50) * 50, Trunc(B / 50) * 50)
        else
          Pixels[H, S] := RGB(R, G, B);
      end;
    end;

    S := 100;
    for H := 0 to 359 do
    begin
      for V := 200 downto 100 do
      begin
        HSVToRGB(H, S, V - 100, R, G, B);
        if CheckBoxWeb.Checked then
          Pixels[H, Abs(100 - (V - 100)) + 100] := RGB(Trunc(R / 50) * 50, Trunc(G / 50) * 50, Trunc(B / 50) * 50)
        else
          Pixels[H, Abs(100 - (V - 100)) + 100] := RGB(R, G, B);
      end;
    end;
  end;
end;

procedure TFormMain.EditResHEXChange(Sender: TObject);
begin
  //ButtonFlatHEXClick(nil);
end;

procedure TFormMain.EditResHEXKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    ButtonFlatHEXClick(nil);
  end;
end;

procedure TFormMain.EditResHTMLChange(Sender: TObject);
begin
  //ButtonFlatWebClick(nil);
end;

procedure TFormMain.EditResHTMLKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    ButtonFlatWebClick(nil);
  end;
end;

procedure TFormMain.EditResTColorChange(Sender: TObject);
begin
  //ButtonFlatTColorClick(nil);
end;

procedure TFormMain.EditResTColorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    ButtonFlatTColorClick(nil);
  end;
end;

procedure TFormMain.Navigate(Tab: TTabSheet);

  procedure SetMenuButtonActive(Button: TButtonFlat; Value: Boolean);
  begin
    case Value of
      True:
        Button.ColorNormal := ColorDarkerOr(Color, 10);
      False:
        Button.ColorNormal := ColorDarkerOr(Color, 20);
    end;
    Button.ColorOver := ColorDarkerOr(Color, 40);
    Button.ColorPressed := ColorDarkerOr(Button.ColorNormal, 40);

    Button.Font.Color := Font.Color;
    Button.FontDown.Color := Font.Color;
    Button.FontOver.Color := Font.Color;
  end;

begin
  PageControlPalette.ActivePage := Tab;
  SetMenuButtonActive(ButtonFlatStd, PageControlPalette.ActivePage = TabSheetStd);
  SetMenuButtonActive(ButtonFlatP2, PageControlPalette.ActivePage = TabSheetP2);
  SetMenuButtonActive(ButtonFlatHexa, PageControlPalette.ActivePage = TabSheetHexa);
  SetMenuButtonActive(ButtonFlatHS, PageControlPalette.ActivePage = TabSheetHS);
  SetMenuButtonActive(ButtonFlatHSL, PageControlPalette.ActivePage = TabSheetHSL);
  SetMenuButtonActive(ButtonFlatHSV, PageControlPalette.ActivePage = TabSheetHSV);
  SetMenuButtonActive(ButtonFlatSLH, PageControlPalette.ActivePage = TabSheetSLH);
end;

procedure TFormMain.SetColor(IsDark: Boolean);
var
  //CaptionColor,
  AC: TColor;

  procedure SetPanelColor(Panel: TPanelCollapsed);
  begin
    if IsDark then
    begin
      Panel.Color := ColorLighterOr(Color, 10);
      Panel.SimpleBorderColor := ColorLighterOr(Color, 15);
      Panel.CaptionColor := ColorLighterOr(Color, 20);
    end
    else
    begin
      Panel.Color := Color;
      Panel.SimpleBorderColor := ColorDarker(AC, 50);
      Panel.CaptionColor := ColorDarker(AC, 30);
    end;
  end;

  procedure SetEditColor(Edit: TEdit);
  begin
    Edit.Color := Color;
    Edit.Font.Color := Font.Color;
  end;

  procedure SetSpinColor(Spin: TlkSpinEdit);
  begin
    Spin.Color := Color;
    Spin.Font.Color := Font.Color;
    Spin.LightButtons := IsDark;
  end;

  procedure SetButtonColor(Button: TButtonFlat);
  begin
    Button.ColorNormal := ColorLighterOr(Color, 10);
    Button.ColorOver := ColorLighterOr(Color, 15);
    Button.ColorPressed := ColorLighterOr(Color, 20);
    Button.Font.Color := Font.Color;
    Button.FontDown.Color := Font.Color;
    Button.FontOver.Color := Font.Color;
  end;

var
  i: Integer;
begin
  FIsDark := IsDark;
  if IsDark then
  begin
    Font.Color := clWhite;
    Color := clBlack;

    SpinEditR.Color := $00000078;
    SpinEditG.Color := $00005412;
    SpinEditB.Color := $00572300;

    SpinEditC.Color := $00615F0D;
    SpinEditM.Color := $007D007F;
    SpinEditY.Color := $00008886;
    SpinEditK.Color := $001A1A1A;
    for i := 0 to ImageList16.Count - 1 do
      ColorImages(ImageList16, i, $00E2E2E2);
    for i := 0 to ImageListTools.Count - 1 do
      ColorImages(ImageListTools, i, $00E2E2E2);
  end
  else
  begin
    AC := GetAeroColor;
    if AC = 14145495 then
      AC := $00997800;

    Font.Color := clBlack;
    Color := $00F7F7F7;
    //CaptionColor := $005B3825;

    SpinEditR.Color := $00D7D7FF;
    SpinEditG.Color := $00D7FFD7;
    SpinEditB.Color := $00FDDF8C;

    SpinEditC.Color := $00FFFFCA;
    SpinEditM.Color := $00FFD5FF;
    SpinEditY.Color := $00D7FFFF;
    SpinEditK.Color := $00EBEBEB;
    for i := 0 to ImageList16.Count - 1 do
      ColorImages(ImageList16, i, $00666666);
    for i := 0 to ImageListTools.Count - 1 do
      ColorImages(ImageListTools, i, $00666666);
  end;

  HexaColorPicker1.Color := Color;
  HSLRingPicker1.Color := Color;
  HSVColorPicker1.Color := Color;
  SLHColorPicker1.Color := Color;
  PanelDoGray.Color := Color;

  SpinEditR.LightButtons := IsDark;
  SpinEditG.LightButtons := IsDark;
  SpinEditB.LightButtons := IsDark;
  SpinEditR.Font.Color := Font.Color;
  SpinEditG.Font.Color := Font.Color;
  SpinEditB.Font.Color := Font.Color;

  SpinEditC.LightButtons := IsDark;
  SpinEditM.LightButtons := IsDark;
  SpinEditY.LightButtons := IsDark;
  SpinEditK.LightButtons := IsDark;
  SpinEditC.Font.Color := Font.Color;
  SpinEditM.Font.Color := Font.Color;
  SpinEditY.Font.Color := Font.Color;
  SpinEditK.Font.Color := Font.Color;

  SetPanelColor(PanelCollapsedValues);
  SetPanelColor(PanelCollapsedMagnify);
  SetPanelColor(PanelCollapsedCurrentColor);
  SetPanelColor(PanelCollapsedLDG);
  SetPanelColor(PanelCollapsedPallete);
  SetPanelColor(PanelCollapsedRGB);
  SetPanelColor(PanelCollapsedMix);
  SetPanelColor(PanelCollapsedCMYK);
  SetPanelColor(PanelCollapsedHSVB);
  SetPanelColor(PanelCollapsedTools);
  SetPanelColor(PanelCollapsedMem);

  SetEditColor(EditResHEX);
  SetEditColor(EditResTColor);
  SetEditColor(EditResHTML);

  SetButtonColor(ButtonFlatHEX);
  SetButtonColor(ButtonFlatTColor);
  SetButtonColor(ButtonFlatWeb);

  SetButtonColor(ButtonFlatStdDlg);
  SetButtonColor(ButtonFlatTest);
  SetButtonColor(ButtonFlatOnTop);
  SetButtonColor(ButtonFlatHelp);

  SetButtonColor(ButtonFlatMagnDown);
  SetButtonColor(ButtonFlatMagnUp);

  SetButtonColor(ButtonFlatDoGrey);
  SetButtonColor(ButtonFlatTheme);

  SetButtonColor(ButtonFlatMixAdd);
  SetButtonColor(ButtonFlatMixDel);
  ListBoxMix.Color := Color;

  SetSpinColor(SpinEditRGB);
  SetSpinColor(SpinEditH);
  SetSpinColor(SpinEditS);
  SetSpinColor(SpinEditV);

  ButtonFlatStd.Font.Color := clWhite;
  ButtonFlatStd.FontDown.Color := clWhite;
  ButtonFlatStd.FontOver.Color := clWhite;
  ButtonFlatP2.Font.Color := clWhite;
  ButtonFlatP2.FontDown.Color := clWhite;
  ButtonFlatP2.FontOver.Color := clWhite;
  ButtonFlatHexa.Font.Color := clWhite;
  ButtonFlatHexa.FontDown.Color := clWhite;
  ButtonFlatHexa.FontOver.Color := clWhite;
  ButtonFlatHS.Font.Color := clWhite;
  ButtonFlatHS.FontDown.Color := clWhite;
  ButtonFlatHS.FontOver.Color := clWhite;
  ButtonFlatHSL.Font.Color := clWhite;
  ButtonFlatHSL.FontDown.Color := clWhite;
  ButtonFlatHSL.FontOver.Color := clWhite;
  ButtonFlatSLH.Font.Color := clWhite;
  ButtonFlatSLH.FontDown.Color := clWhite;
  ButtonFlatSLH.FontOver.Color := clWhite;
  ButtonFlatHSV.Font.Color := clWhite;
  ButtonFlatHSV.FontDown.Color := clWhite;
  ButtonFlatHSV.FontOver.Color := clWhite;

  Navigate(PageControlPalette.ActivePage);

  for i := 0 to PanelCollapsedMem.ControlCount - 1 do
  begin
    if PanelCollapsedMem.Controls[i] is TShape then
    begin
      Shape1MouseLeave(PanelCollapsedMem.Controls[i]);
    end;
  end;

  if IsDark then
    TStyleManager.TrySetStyle('Windows10 Dark')
  else
    TStyleManager.TrySetStyle('Windows');
end;

procedure TFormMain.FormCreate(Sender: TObject);
var
  i: Integer;
  Ini: TIniFile;
  Buf: TComponent;
begin
  FKeepColor := False;
  FIsDark := False;
  ActiveShape := Shape1;
  FMagnify := TBitmap.Create;
  FMagnify.PixelFormat := pf24bit;
  FMagnify.Width := 5;
  FMagnify.Height := 5;
  FMgEmpty := True;
  SetDataColor(Random(9000000));
  ButtonFlatMagnUp.ColorNormal := PanelCollapsedMagnify.CaptionColor;
  ButtonFlatMagnUp.ColorOver := ColorLighter(PanelCollapsedMagnify.CaptionColor, 40);
  ButtonFlatMagnUp.ColorPressed := ColorDarker(PanelCollapsedMagnify.CaptionColor, 30);

  ButtonFlatMagnDown.ColorNormal := PanelCollapsedMagnify.CaptionColor;
  ButtonFlatMagnDown.ColorOver := ColorLighter(PanelCollapsedMagnify.CaptionColor, 40);
  ButtonFlatMagnDown.ColorPressed := ColorDarker(PanelCollapsedMagnify.CaptionColor, 30);

  Color := $00D0D0D0;
  FSpectBMP := TBitmap.Create;
  FSpectBMP.PixelFormat := pf24bit;
  FSpectBMP.Width := 360;
  FSpectBMP.Height := 201;
  DrawSpect;
  Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\config.ini');
  try
    FIsDark := Ini.ReadBool('General', 'DarkTheme', False);
    for i := 1 to 16 do
    begin
      Buf := FindComponent('Shape' + IntToStr(i));
      if Assigned(Buf) then
      begin
        (Buf as TShape).Brush.Color := Ini.ReadInteger('CustomPallete', 'Shape' + IntToStr(i), clGray);
      end;
    end;
  finally
    Ini.Free;
  end;
  SetColor(FIsDark);
  Navigate(TabSheetStd);
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  FMagnify.Free;
  FSpectBMP.Free;
end;

function TFormMain.GetPixelUnderCursor: TColor;
var
  DC: HDC;
  Cur: TPoint;
begin
  DC := GetDC(0);
  GetCursorPos(Cur);
  Result := GetPixel(DC, Cur.X, Cur.Y);
  BitBlt(FMagnify.Canvas.Handle, 0, 0, FMagnify.Width, FMagnify.Width, DC, Cur.X - FMagnify.Width div 2, Cur.Y -
    FMagnify.Width div 2, SRCCOPY);
  FMgEmpty := False;
  DrawPanelMagnify.Repaint;
end;

procedure TFormMain.HexaColorPicker1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetDataColor(HexaColorPicker1.SelectedColor);
end;

procedure TFormMain.HSColorPicker1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetDataColor(HSColorPicker1.SelectedColor);
end;

procedure TFormMain.HSLRingPicker1Change(Sender: TObject);
begin
  SetDataColor(HSLRingPicker1.SelectedColor);
end;

procedure TFormMain.HSVColorPicker1Change(Sender: TObject);
begin
  TrackBarHSVV.Position := 255 - HSVColorPicker1.Value;
end;

procedure TFormMain.HSVColorPicker1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetDataColor(HSVColorPicker1.SelectedColor);
end;

procedure TFormMain.Image1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetDataColor(GetPixelUnderCursor);
end;

procedure TFormMain.ImageRMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FKeepColor := True;
end;

procedure TFormMain.ImageRMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if ssLeft in Shift then
    SetDataColor(GetPixelUnderCursor);
end;

procedure TFormMain.ImageRMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetDataColor(GetPixelUnderCursor);
  FKeepColor := False;
end;

procedure TFormMain.ListBoxMixDblClick(Sender: TObject);
begin
  if ListBoxMix.ItemIndex >= 0 then
    SetDataColor(StringToColor(ListBoxMix.Items[ListBoxMix.ItemIndex]));
end;

procedure TFormMain.ListBoxMixDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  if ListBoxMix.Items.Count <= 0 then
    Exit;
  ListBoxMix.Canvas.Brush.Color := StringToColor(ListBoxMix.Items[Index]);
  ListBoxMix.Canvas.Pen.Color := ListBoxMix.Canvas.Brush.Color;
  ListBoxMix.Canvas.Rectangle(Rect);
end;

procedure TFormMain.SetActiveShape(const Value: TShape);
begin
  FActiveShape := Value;
  Shape1MouseLeave(FActiveShape);
end;

procedure TFormMain.SetDataColor(dColor: TColor);
var
  C, M, Y, K, R, G, B: Byte;
  H, V, S: Double;
begin
  FDataColor := dColor;
  R := GetRValue(ColorToRGB(FDataColor));
  G := GetGValue(ColorToRGB(FDataColor));
  B := GetBValue(ColorToRGB(FDataColor));
  SetShapeColor(ShapeCur, FDataColor);
  SetShapeColor(ShapeDL, FDataColor);
  TrackBarL.Position := 100;

  SpinEditR.Value := R;
  SpinEditG.Value := G;
  SpinEditB.Value := B;
  SpinEditRGB.Value := ColorToRGB(RGB(R, G, B));
  //
  EditResHEX.Text := ColorToHex(FDataColor);
  EditResTColor.Text := ColorToString(FDataColor);
  EditResHTML.Text := ColorToHtml(FDataColor);

  RGBToCMYK(R, G, B, C, M, Y, K);
  SpinEditC.Value := C;
  SpinEditM.Value := M;
  SpinEditY.Value := Y;
  SpinEditK.Value := K;

  RGBToHSV(R, G, B, H, S, V);
  SpinEditH.Value := Round(H);
  SpinEditS.Value := Round(S);
  SpinEditV.Value := Round(V);

  HexaColorPicker1.SelectedColor := FDataColor;
  HSColorPicker1.SelectedColor := FDataColor;
  HSVColorPicker1.SelectedColor := FDataColor;

  if Assigned(FActiveShape) then
    FActiveShape.Brush.Color := FDataColor;
  if Assigned(FormTest) then
  begin
    if FormTest.RadioButtonBG.Checked then
    begin
      FormTest.ColorSelectBG.ColorNormal := FDataColor;
      FormTest.ColorSelectBGChange(nil);
    end;
    if FormTest.RadioButtonPanel.Checked then
    begin
      FormTest.ColorSelectPanel.ColorNormal := FDataColor;
      FormTest.ColorSelectPanelChange(nil);
    end;
    if FormTest.RadioButtonFont.Checked then
    begin
      FormTest.ColorSelectFont.ColorNormal := FDataColor;
      FormTest.ColorSelectFontChange(nil);
    end;
  end;

  Repaint;
end;

procedure TFormMain.SetShapeColor(Shape: TShape; aColor: TColor);
begin
  Shape.Brush.Color := aColor;
  Shape.Pen.Color := aColor;
end;

procedure TFormMain.Shape1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  (Sender as TShape).Pen.Color := ColorDarker($00818181, 30);
end;

procedure TFormMain.Shape1MouseEnter(Sender: TObject);
begin
  (Sender as TShape).Pen.Color := $00818181;
end;

procedure TFormMain.Shape1MouseLeave(Sender: TObject);
begin
  if ActiveShape = (Sender as TShape) then
    (Sender as TShape).Pen.Color := $00818181
  else
    (Sender as TShape).Pen.Color := ColorDarkerOr(Color, 10);
end;

procedure TFormMain.Shape1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  OldShape: TShape;
begin
  OldShape := ActiveShape;
  ActiveShape := (Sender as TShape);
  Shape1MouseLeave(OldShape);
  SetDataColor(ActiveShape.Brush.Color);
end;

procedure TFormMain.ShapeDLMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ssDouble in Shift then
    SetDataColor(ShapeDL.Brush.Color);
end;

procedure TFormMain.ShapeMixMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ssDouble in Shift then
    SetDataColor(ShapeMix.Brush.Color);
end;

procedure TFormMain.SLHColorPicker1Change(Sender: TObject);
begin
  SetDataColor(SLHColorPicker1.SelectedColor);
end;

procedure TFormMain.ButtonFlatHelpClick(Sender: TObject);
begin
  ShowMessage('Зажмите Ctrl+Shift для выбора цвета из любой точки экрана'#13#10 +
    'Автор программы: Геннадий Малинин aka HemulGM'#13#10 +
    'Сайт: https://hemulgm.ru');
end;

procedure TFormMain.SpeedButtonMixAddClick(Sender: TObject);
begin
  AddColorToMix(FDataColor);
end;

procedure TFormMain.SpeedButtonMixDeleteClick(Sender: TObject);
begin
  if ListBoxMix.ItemIndex >= 0 then
    ListBoxMix.Items.Delete(ListBoxMix.ItemIndex);
  SpeedButtonMixDoClick(nil);
end;

procedure TFormMain.SpeedButtonMixDoClick(Sender: TObject);
var
  i: Integer;
begin
  if ListBoxMix.Items.Count <= 0 then
    Exit;
  SetShapeColor(ShapeMix, StringToColor(ListBoxMix.Items[0]));
  for i := 1 to ListBoxMix.Items.Count - 1 do
  begin
    SetShapeColor(ShapeMix, MixColors(ShapeMix.Brush.Color, StringToColor(ListBoxMix.Items[i]), 50));
  end;
end;

procedure TFormMain.ButtonFlatTestClick(Sender: TObject);
begin
  FormTest.Show;
end;

procedure TFormMain.ButtonFlatThemeClick(Sender: TObject);
begin
  SetColor(not FIsDark);
end;

procedure TFormMain.ButtonFlatOnTopClick(Sender: TObject);
begin
  if FormStyle <> fsStayOnTop then
  begin
    FormStyle := fsStayOnTop;
    Caption := 'Работа с цветом (Поверх остальных окон)';
    ButtonFlatOnTop.NotifyVisible := True;
  end
  else
  begin
    FormStyle := fsNormal;
    Caption := 'Работа с цветом';
    ButtonFlatOnTop.NotifyVisible := False;
  end;
end;

procedure TFormMain.ButtonFlatStdDlgClick(Sender: TObject);
begin
  ColorDialog1.Color := FDataColor;
  if ColorDialog1.Execute(Handle) then
    SetDataColor(ColorDialog1.Color);
end;

procedure TFormMain.SpinEditKChange(Sender: TObject);
var
  R, G, B: Byte;
begin
  CMYKToRGB(SpinEditC.Value, SpinEditM.Value, SpinEditY.Value, SpinEditK.Value, R, G, B);
  SetDataColor(RGB(R, G, B));
end;

procedure TFormMain.SpinEditRChange(Sender: TObject);
begin
  SpinEditRGB.Value := ColorToRGB(RGB(SpinEditR.Value, SpinEditG.Value, SpinEditB.Value));
  SetDataColor(RGB(SpinEditR.Value, SpinEditG.Value, SpinEditB.Value));
end;

procedure TFormMain.SpinEditRGBChange(Sender: TObject);
begin
  SpinEditR.Value := GetRValue(SpinEditRGB.Value);
  SpinEditG.Value := GetGValue(SpinEditRGB.Value);
  SpinEditB.Value := GetBValue(SpinEditRGB.Value);
  SetDataColor(RGB(SpinEditR.Value, SpinEditG.Value, SpinEditB.Value));
end;

procedure TFormMain.SpinEditRKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  SpinEditRChange(nil);
end;

procedure TFormMain.SpinEditVChange(Sender: TObject);
var
  H, S, V: Single;
  R, G, B: Byte;
begin
  H := SpinEditH.Value;
  S := SpinEditS.Value;
  V := SpinEditV.Value;
  HSVToRGB(H, S, V, R, G, B);
  SetDataColor(RGB(R, G, B));
end;

procedure TFormMain.TimerPXUCTimer(Sender: TObject);
begin
  if (CtrlDown and ShiftDown) or FKeepColor then
  begin
    SetDataColor(GetPixelUnderCursor);
  end;
end;

procedure TFormMain.TrackBarHSVVChange(Sender: TObject);
begin
  HSVColorPicker1.Value := Abs(255 - TrackBarHSVV.Position);
  SetDataColor(HSVColorPicker1.SelectedColor);
end;

procedure TFormMain.TrackBarLChange(Sender: TObject);
begin
  case TrackBarL.Position of
    0..100:
      SetShapeColor(ShapeDL, ColorDarker(FDataColor, Abs(TrackBarL.Position - 100)));
    101..200:
      SetShapeColor(ShapeDL, ColorLighter(FDataColor, TrackBarL.Position - 100));
  end;
end;

end.

