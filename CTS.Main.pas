unit CTS.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  Winapi.ShellAPI, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, System.Types,
  Vcl.Imaging.pngimage, System.ImageList, Vcl.ImgList, System.UITypes,
  HGM.Controls.Labels, HGM.Controls.SpinEdit, HGM.Button,
  HGM.Controls.PanelCollapsed, HGM.Controls.PanelExt, HexaColorPicker,
  HSColorPicker, HSLRingPicker, HSLColorPicker, SLHColorPicker, HSVColorPicker,
  Vcl.Themes, Vcl.Styles, Vcl.Graphics, Vcl.Menus, mbColorPickerControl,
  Vcl.WinXCtrls;

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
    TabSheetStd: TTabSheet;
    DrawPanelSpectr: TDrawPanel;
    Panel1: TPanel;
    Label17: TLabel;
    CheckBoxWeb: TCheckBox;
    Label19: TLabel;
    Label20: TLabel;
    TrackBarHSVV: TTrackBar;
    ImageRWeb: TImage;
    ButtonFlatStdDlg: TButtonFlat;
    ButtonFlatTest: TButtonFlat;
    ButtonFlatOnTop: TButtonFlat;
    ButtonFlatHelp: TButtonFlat;
    ImageListTools: TImageList;
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
    ButtonFlatHEXCopy: TButtonFlat;
    ButtonFlatTColorCopy: TButtonFlat;
    ButtonFlatWebCopy: TButtonFlat;
    ButtonFlatRGBCopy: TButtonFlat;
    ButtonFlatTColorSelect: TButtonFlat;
    ColorBoxTColor: TColorBox;
    ButtonFlatHSVCopy: TButtonFlat;
    ButtonFlatCMYKCopy: TButtonFlat;
    ButtonFlatOpenLD: TButtonFlat;
    PanelWait: TPanel;
    Label18: TLabel;
    ActivityIndicator1: TActivityIndicator;
    GridPanel1: TGridPanel;
    PanelC1: TPanel;
    Shape1: TLabelEx;
    PanelC2: TPanel;
    Shape2: TLabelEx;
    PanelC3: TPanel;
    Shape3: TLabelEx;
    PanelC4: TPanel;
    Shape4: TLabelEx;
    PanelС5: TPanel;
    Shape5: TLabelEx;
    PanelС6: TPanel;
    Shape6: TLabelEx;
    PanelС7: TPanel;
    Shape7: TLabelEx;
    PanelС8: TPanel;
    Shape8: TLabelEx;
    PanelС9: TPanel;
    Shape9: TLabelEx;
    PanelС10: TPanel;
    Shape10: TLabelEx;
    PanelС11: TPanel;
    Shape11: TLabelEx;
    PanelС12: TPanel;
    Shape12: TLabelEx;
    PanelС13: TPanel;
    Shape13: TLabelEx;
    PanelС14: TPanel;
    Shape14: TLabelEx;
    PanelС15: TPanel;
    Shape15: TLabelEx;
    PanelС16: TPanel;
    Shape16: TLabelEx;
    ButtonFlatLock1: TButtonFlat;
    ButtonFlatLock2: TButtonFlat;
    ButtonFlatLock3: TButtonFlat;
    ButtonFlatLock4: TButtonFlat;
    ButtonFlatLock5: TButtonFlat;
    ButtonFlatLock6: TButtonFlat;
    ButtonFlatLock7: TButtonFlat;
    ButtonFlatLock8: TButtonFlat;
    ButtonFlatLock9: TButtonFlat;
    ButtonFlatLock10: TButtonFlat;
    ButtonFlatLock11: TButtonFlat;
    ButtonFlatLock12: TButtonFlat;
    ButtonFlatLock13: TButtonFlat;
    ButtonFlatLock14: TButtonFlat;
    ButtonFlatLock15: TButtonFlat;
    ButtonFlatLock16: TButtonFlat;
    ButtonFlatGrayscale: TButtonFlat;
    ButtonFlatInvertColor: TButtonFlat;
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
    procedure ButtonFlatThemeClick(Sender: TObject);
    procedure ButtonFlatHEXCopyClick(Sender: TObject);
    procedure ButtonFlatTColorCopyClick(Sender: TObject);
    procedure ButtonFlatWebCopyClick(Sender: TObject);
    procedure ButtonFlatRGBCopyClick(Sender: TObject);
    procedure ButtonFlatTColorSelectClick(Sender: TObject);
    procedure ColorBoxTColorSelect(Sender: TObject);
    procedure ButtonFlatHSVCopyClick(Sender: TObject);
    procedure ButtonFlatCMYKCopyClick(Sender: TObject);
    procedure ButtonFlatLock1Click(Sender: TObject);
    procedure ButtonFlatOpenLDClick(Sender: TObject);
    procedure HSColorPicker1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure HSVColorPicker1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure DrawPanelSpectrMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure ButtonFlatInvertColorClick(Sender: TObject);
    procedure ShapeDLMouseEnter(Sender: TObject);
    procedure ShapeDLMouseLeave(Sender: TObject);
  private
    FDataColor: TColor;
    FSpectBMP: TBitmap;
    FMagnify: TBitmap;
    FMgEmpty: Boolean;
    FActiveShape: TShape;
    FCaptureColor: Boolean;
    FIsDark: Boolean;
    FRGBCopyFormat: string;
    FHSVCopyFormat: string;
    FCMYKCopyFormat: string;
    FShortCut: TShortCut;
    procedure SetShapeColor(Shape: TShape; aColor: TColor);
    procedure SetActiveShape(const Value: TShape);
    procedure DrawSpect;
    procedure SetColor(IsDark: Boolean);
    function CaptureShortCutIsDown: Boolean;
    procedure CheckUpdate;
    procedure HaveNewUpdate(const Ver, Url: string);
    procedure DownloadAndUpdateAsync(const Ver, Url: string);
    procedure ShowUpdateError(const Url: string);
    procedure ShowUpdateDone;
    function ShapeIsLocked(Shape: TShape): Boolean;
  public
    procedure SetDataColor(dColor: TColor);
    procedure AddColorToMix(aColor: TColor);
    procedure Navigate(Tab: TTabSheet);
    function GetPixelUnderCursor(Snap: Boolean = True): TColor;
    property ActiveShape: TShape read FActiveShape write SetActiveShape;
  end;

const
  DEFAULT_RGB_FORMAT = 'RGB(%d, %d, %d)';
  DEFAULT_HSV_FORMAT = '%d, %d, %d';
  DEFAULT_CMYK_FORMAT = '%d, %d, %d, %d';
  DEFAULT_SHORTCUT = 'Ctrl+Shift';
  DefaultColor = clWhite;

const
  Version = 'v1.24';

var
  FormMain: TFormMain;

implementation

uses
  System.Math, Vcl.ClipBrd, System.IniFiles, CTS.Test, HGM.WinAPI,
  HGM.Common.Utils, HGM.Utils.Color, CTS.LD, System.Net.HttpClient,
  System.Threading, System.Net.URLClient, System.IOUtils;

{$R *.dfm}

function CtrlDown: Boolean;
begin
  Result := GetKeyState(VK_CONTROL) < 0;
end;

function ShiftDown: Boolean;
begin
  Result := GetKeyState(VK_SHIFT) < 0;
end;

function ShortCutIsDown(ShortCut: TShortCut): Boolean;
var
  Key: Word;
begin
  Result := ShortCut <> 0;
  if not Result then
    Exit;
  Key := ShortCut and not (scShift + scCtrl + scAlt);
  if Key <> 0 then
    Result := Result and (GetKeyState(Key) < 0);
  if ShortCut and scShift <> 0 then
    Result := Result and (GetKeyState(VK_SHIFT) < 0);
  if ShortCut and scCtrl <> 0 then
    Result := Result and (GetKeyState(VK_CONTROL) < 0);
  if ShortCut and scAlt <> 0 then
    Result := Result and (GetKeyState(VK_MENU) < 0);
end;

procedure TFormMain.HaveNewUpdate(const Ver, Url: string);
begin
  if TaskMessageDlg('Новая версия ' + Ver, 'Доступна новая версия программы. Обновить сейчас?', TMsgDlgType.mtInformation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = mrYes then
    DownloadAndUpdateAsync(Ver, Url);
end;

procedure TFormMain.DownloadAndUpdateAsync(const Ver, Url: string);
begin
  PanelWait.Visible := True;
  TTask.Run(
    procedure
    var
      FN, App, OldApp: string;
    begin
      FN := TPath.GetTempFileName;
      if DownloadURL('https://github.com/HemulGM/ColorToStrNew/releases/download/' + Ver + '/CTS.exe', FN) then
      begin
        App := ParamStr(0);
        OldApp := App + '_old';
        if TFile.Exists(OldApp) then
          TFile.Delete(OldApp);
        TFile.Move(App, OldApp);
        TFile.Copy(FN, App);
        TFile.Delete(FN);
        TThread.Queue(nil, ShowUpdateDone);
      end
      else
        TThread.Queue(nil,
          procedure
          begin
            ShowUpdateError(Url);
          end);
    end);
end;

procedure TFormMain.ShowUpdateDone;
begin
  PanelWait.Visible := False;
  if TaskMessageDlg('Обновление успешно', 'Перезагрузить программу сейчас?', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = mrYes then
  begin
    Visible := False;
    ShellExecute(Application.Handle, 'open', PWideChar(ParamStr(0)), nil, nil, SW_NORMAL);
    Application.Terminate;
  end;
end;

procedure TFormMain.ShowUpdateError(const Url: string);
begin
  PanelWait.Visible := True;
  if TaskMessageDlg('Ошибка', 'Не удалось скачать обновление. Вы можете попробовать скачать вручную. ' + #13#10 + Url, TMsgDlgType.mtError, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0) = mrYes then
    ShellExecute(Application.Handle, 'open', PWideChar(Url), nil, nil, SW_NORMAL);
end;

procedure TFormMain.CheckUpdate;
begin
  TTask.Run(
    procedure
    var
      HTTP: THTTPClient;
      Response: IHTTPResponse;
      Loc, Ver: string;
      URI: TArray<string>;
    begin
      HTTP := THTTPClient.Create;
      try
        HTTP.HandleRedirects := False;
        Response := HTTP.Head('https://github.com/HemulGM/ColorToStrNew/releases/latest');
        Loc := Response.HeaderValue['Location'];
        if not Loc.IsEmpty then
        begin
          URI := Loc.Split(['/']);
          if Length(URI) > 0 then
          begin
            Ver := URI[High(URI)];
            if Version <> Ver then
              TThread.Queue(nil,
                procedure
                begin
                  HaveNewUpdate(Ver, Loc);
                end);
          end;
        end;
      finally
        HTTP.Free;
      end;
    end);
end;

function TFormMain.CaptureShortCutIsDown: Boolean;
begin
  Result := ShortCutIsDown(FShortCut);
end;

procedure TFormMain.AddColorToMix(aColor: TColor);
begin
  ListBoxMix.Items.Add(Vcl.Graphics.ColorToString(aColor));
  SpeedButtonMixDoClick(nil);
end;

procedure TFormMain.ButtonFlatCMYKCopyClick(Sender: TObject);
begin
  try
    Clipboard.AsText := Format(FCMYKCopyFormat, [SpinEditC.Value, SpinEditM.Value, SpinEditY.Value, SpinEditK.Value]);
  except
    on E: Exception do
    begin
      if MessageBox(Application.Handle, 'Неверный формат. Сбросить на стандартный?', 'Ошибка', MB_ICONWARNING or MB_YESNO) = mrYes then
        FRGBCopyFormat := DEFAULT_CMYK_FORMAT;
    end;
  end;
end;

procedure TFormMain.ButtonFlatDoGreyClick(Sender: TObject);
begin
  SetShapeColor(ShapeDL, GrayColor(FDataColor));
end;

procedure TFormMain.ButtonFlatMagnDownClick(Sender: TObject);
begin
  if FMagnify.Width >= DrawPanelMagnify.Width then
    Exit;
  FMagnify.SetSize(FMagnify.Width + 2, FMagnify.Height + 2);
  DrawPanelMagnify.Repaint;
end;

procedure TFormMain.ButtonFlatMagnUpClick(Sender: TObject);
var
  X, Y: Integer;
begin
  if FMagnify.Width <= 3 then
    Exit;
  X := FMagnify.Width - 2;
  if X mod 2 = 0 then
    Inc(X);
  Y := FMagnify.Height - 2;
  if Y mod 2 = 0 then
    Inc(Y);
  FMagnify.SetSize(X, Y);
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

procedure TFormMain.ButtonFlatHEXCopyClick(Sender: TObject);
begin
  Clipboard.AsText := EditResHEX.Text;
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

procedure TFormMain.ButtonFlatHSVCopyClick(Sender: TObject);
begin
  try
    Clipboard.AsText := Format(FHSVCopyFormat, [SpinEditH.Value, SpinEditS.Value, SpinEditV.Value]);
  except
    on E: Exception do
    begin
      if MessageBox(Application.Handle, 'Не верный формат. Сбросить на стандартный?', 'Ошибка', MB_ICONWARNING or MB_YESNO) = mrYes then
        FRGBCopyFormat := DEFAULT_HSV_FORMAT;
    end;
  end;
end;

procedure TFormMain.ButtonFlatInvertColorClick(Sender: TObject);
begin
  SetShapeColor(ShapeDL, InvertColor(FDataColor));
end;

procedure TFormMain.ButtonFlatP2Click(Sender: TObject);
begin
  Navigate(TabSheetP2);
end;

procedure TFormMain.ButtonFlatRGBCopyClick(Sender: TObject);
begin
  try
    Clipboard.AsText := Format(FRGBCopyFormat, [SpinEditR.Value, SpinEditG.Value, SpinEditB.Value]);
  except
    on E: Exception do
    begin
      if MessageBox(Application.Handle, 'Не верный формат. Сбросить на стандартный?', 'Ошибка', MB_ICONWARNING or MB_YESNO) = mrYes then
        FRGBCopyFormat := DEFAULT_RGB_FORMAT;
    end;
  end;
end;

procedure TFormMain.ButtonFlatHEXClick(Sender: TObject);
begin
  try
    SetDataColor(HexToTColor(EditResHEX.Text));
  except
    //ShowMessage('Ops');
  end;
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

procedure TFormMain.ButtonFlatTColorCopyClick(Sender: TObject);
begin
  Clipboard.AsText := EditResTColor.Text;
end;

procedure TFormMain.ButtonFlatTColorSelectClick(Sender: TObject);
begin
  ColorBoxTColor.DroppedDown := True;
end;

procedure TFormMain.ButtonFlatWebCopyClick(Sender: TObject);
begin
  Clipboard.AsText := EditResHTML.Text;
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

procedure TFormMain.ColorBoxTColorSelect(Sender: TObject);
begin
  SetDataColor(ColorBoxTColor.Selected);
end;

procedure TFormMain.DrawPanelMagnifyMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ssDouble in Shift then
    SetDataColor(GetPixelUnderCursor(False));
end;

procedure TFormMain.DrawPanelMagnifyPaint(Sender: TObject);
var
  PixW: Single;
  R: TRect;
  S: string;
begin
  if FMgEmpty then
  begin
    R := DrawPanelMagnify.ClientRect;
    S := ShortCutToText(FShortCut);
    DrawPanelMagnify.Canvas.FillRect(R);
    DrawPanelMagnify.Canvas.TextRect(R, S, [tfCenter, tfVerticalCenter, tfSingleLine]);
    Exit;
  end;
  DrawPanelMagnify.Canvas.StretchDraw(DrawPanelMagnify.ClientRect, FMagnify);
  DrawPanelMagnify.Brush.Style := bsClear;
  PixW := DrawPanelMagnify.ClientRect.Width / FMagnify.Width;
  R.Width := Ceil(PixW);
  R.Height := Ceil(PixW);
  R.Location := Point(Round((PixW * FMagnify.Width / 2) - (PixW / 2)), Round((PixW * FMagnify.Height / 2) - (PixW / 2)));

  DrawPanelMagnify.Canvas.Brush.Color := VisibilityColor(FDataColor);
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
  //FCaptureColor := True;
end;

procedure TFormMain.DrawPanelSpectrMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if ssLeft in Shift then
    SetDataColor(DrawPanelSpectr.Canvas.Pixels[X, Y]);
end;

procedure TFormMain.DrawPanelSpectrMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ClipCursor(nil);
  //FCaptureColor := False;
end;

procedure TFormMain.DrawPanelSpectrPaint(Sender: TObject);
begin
  DrawPanelSpectr.Canvas.StretchDraw(DrawPanelSpectr.ClientRect, FSpectBMP);
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
  Ini: TIniFile;
  Buf: TComponent;
begin
  try
    Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\config.ini');
    try
      Ini.WriteBool('General', 'DarkTheme', FIsDark);
      Ini.WriteString('General', 'RGBFormat', FRGBCopyFormat);
      Ini.WriteString('General', 'HSVFormat', FHSVCopyFormat);
      Ini.WriteString('General', 'CMYKFormat', FCMYKCopyFormat);
      Ini.WriteInteger('General', 'MagnifySize', FMagnify.Width);
      Ini.WriteString('General', 'ShortCut', ShortCutToText(FShortCut));
      for i := 1 to 16 do
      begin
        Buf := FindComponent('Shape' + i.ToString);
        if Assigned(Buf) then
          Ini.WriteInteger('CustomPallete', 'Shape' + i.ToString, (Buf as TShape).Brush.Color);
      end;

      for i := 1 to 16 do
      begin
        Buf := FindComponent('ButtonFlatLock' + i.ToString);
        if Assigned(Buf) then
          if (Buf as TButtonFlat).ImageIndex = 7 then
            Ini.WriteInteger('CustomPalleteLock', 'Lock' + i.ToString, 1)
          else
            Ini.WriteInteger('CustomPalleteLock', 'Lock' + i.ToString, 0);
      end;
    finally
      Ini.Free;
    end;
  except
    on E: Exception do
      ShowMessage('Error: ' + E.Message);
    // Не страшно, что не сохранили настройки
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

procedure TFormMain.EditResHEXKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    ButtonFlatHEXClick(nil);
  end;
end;

procedure TFormMain.EditResHTMLKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    ButtonFlatWebClick(nil);
  end;
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
        Button.ColorNormal := Color;
      False:
        Button.ColorNormal := ColorDarkerOr(Color, 20);
    end;
    Button.ColorOver := ColorDarkerOr(Color, 40);
    Button.ColorPressed := ColorDarkerOr(Button.ColorNormal, 40);

    Button.Font.Color := Font.Color;
    Button.FontDown.Color := clWhite;
    Button.FontOver.Color := clWhite;
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
  AC, FontColor, FontColorOver: TColor;

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
    Edit.Font.Color := FontColor;
  end;

  procedure SetSpinColor(Spin: TlkSpinEdit);
  begin
    Spin.Color := Color;
    Spin.Font.Color := FontColor;
    Spin.LightButtons := IsDark;
  end;

  procedure SetButtonColor(Button: TButtonFlat; SetBG: Boolean = False);
  begin
    if FIsDark then
    begin
      Button.ColorNormal := ColorLighterOr(Color, 10);
      Button.ColorOver := ColorLighterOr(Color, 20);
      Button.ColorPressed := ColorLighterOr(Color, 30);
    end
    else
    begin
      Button.ColorNormal := Color;
      Button.ColorOver := ColorDarkerOr(Color, 20);
      Button.ColorPressed := ColorDarkerOr(Color, 30);
    end;
    if SetBG then
    begin
      if IsDark then
        Button.BackgroundColor := ColorLighterOr(Color, 20)
      else
        Button.BackgroundColor := ColorDarker(AC, 30);
    end;
    Button.Font.Color := FontColor;
    Button.FontDown.Color := FontColor;
    Button.FontOver.Color := FontColorOver;
  end;

var
  i: Integer;
begin
  Visible := False;
  try
    FIsDark := IsDark;
    if IsDark then
    begin
      FontColor := clWhite;
      FontColorOver := clWhite;
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

      FontColor := clBlack;
      FontColorOver := clWhite;
      Color := $00F7F7F7;

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
    ColorImages(ImageList16, 7, $00004BD6);

    Font.Color := FontColor;

    HexaColorPicker1.Color := Color;
    HSLRingPicker1.Color := Color;
    HSVColorPicker1.Color := Color;
    SLHColorPicker1.Color := Color;
    if IsDark then
      PanelDoGray.Color := ColorLighterOr(Color, 10)
    else
      PanelDoGray.Color := Color;

    SpinEditR.LightButtons := IsDark;
    SpinEditG.LightButtons := IsDark;
    SpinEditB.LightButtons := IsDark;
    SpinEditR.Font.Color := FontColor;
    SpinEditG.Font.Color := FontColor;
    SpinEditB.Font.Color := FontColor;

    SpinEditC.LightButtons := IsDark;
    SpinEditM.LightButtons := IsDark;
    SpinEditY.LightButtons := IsDark;
    SpinEditK.LightButtons := IsDark;
    SpinEditC.Font.Color := FontColor;
    SpinEditM.Font.Color := FontColor;
    SpinEditY.Font.Color := FontColor;
    SpinEditK.Font.Color := FontColor;

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

    SetButtonColor(ButtonFlatHEXCopy);
    SetButtonColor(ButtonFlatTColorCopy);
    SetButtonColor(ButtonFlatWebCopy);

    SetButtonColor(ButtonFlatRGBCopy, True);
    SetButtonColor(ButtonFlatHSVCopy, True);
    SetButtonColor(ButtonFlatCMYKCopy, True);

    SetButtonColor(ButtonFlatLock1);
    SetButtonColor(ButtonFlatLock2);
    SetButtonColor(ButtonFlatLock3);
    SetButtonColor(ButtonFlatLock4);
    SetButtonColor(ButtonFlatLock5);
    SetButtonColor(ButtonFlatLock6);
    SetButtonColor(ButtonFlatLock7);
    SetButtonColor(ButtonFlatLock8);
    SetButtonColor(ButtonFlatLock9);
    SetButtonColor(ButtonFlatLock10);
    SetButtonColor(ButtonFlatLock11);
    SetButtonColor(ButtonFlatLock12);
    SetButtonColor(ButtonFlatLock13);
    SetButtonColor(ButtonFlatLock14);
    SetButtonColor(ButtonFlatLock15);
    SetButtonColor(ButtonFlatLock16);

    SetButtonColor(ButtonFlatTColorSelect);
    SetButtonColor(ButtonFlatOpenLD, True);

    SetButtonColor(ButtonFlatStdDlg);
    SetButtonColor(ButtonFlatTest);
    SetButtonColor(ButtonFlatOnTop);
    SetButtonColor(ButtonFlatHelp);

    SetButtonColor(ButtonFlatMagnDown, True);
    SetButtonColor(ButtonFlatMagnUp, True);

    SetButtonColor(ButtonFlatGrayscale);
    SetButtonColor(ButtonFlatInvertColor);
    SetButtonColor(ButtonFlatTheme, True);

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

    for i := 0 to GridPanel1.ControlCount - 1 do
      if (GridPanel1.Controls[i] is TPanel) and ((GridPanel1.Controls[i] as TPanel).ControlCount > 0)
         and ((GridPanel1.Controls[i] as TPanel).Controls[0] is TLabelEx)
      then
        Shape1MouseLeave((GridPanel1.Controls[i] as TPanel).Controls[0]);

    if IsDark then
    begin
      TStyleManager.TrySetStyle('Windows10 Dark');
      ClientHeight := 555;
    end
      //TStyleManager.TrySetStyle('Windows11 Modern Dark')
    else
    begin
      TStyleManager.TrySetStyle('Windows');
      ClientHeight := 546;
    end;
  finally
    GridPanel1.Refresh;
    Application.ProcessMessages;
    Visible := True;
  end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
var
  i: Integer;
  Ini: TIniFile;
  Buf: TComponent;
  MagnifySize: Integer;
begin
  try
    if TFile.Exists(ParamStr(0) + '_old') then
      TFile.Delete(ParamStr(0) + '_old');
  except
    //
  end;
  PanelWait.Visible := False;
  PanelWait.Align := alClient;
  FShortCut := TextToShortCut(DEFAULT_SHORTCUT);
  FCaptureColor := False;
  FIsDark := False;
  ActiveShape := Shape1;
  FMagnify := TBitmap.Create;
  FMagnify.PixelFormat := pf24bit;
  FMagnify.Width := 10;
  FMagnify.Height := 10;
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
  try
    Ini := TIniFile.Create(ExtractFilePath(Application.ExeName) + '\config.ini');
    try
      FIsDark := Ini.ReadBool('General', 'DarkTheme', False);
      FRGBCopyFormat := Ini.ReadString('General', 'RGBFormat', DEFAULT_RGB_FORMAT);
      FHSVCopyFormat := Ini.ReadString('General', 'HSVFormat', DEFAULT_HSV_FORMAT);
      FCMYKCopyFormat := Ini.ReadString('General', 'CMYKFormat', DEFAULT_CMYK_FORMAT);
      MagnifySize := Min(Max(3, Ini.ReadInteger('General', 'MagnifySize', 9)), DrawPanelMagnify.Width);
      FShortCut := TextToShortCut(Ini.ReadString('General', 'ShortCut', DEFAULT_SHORTCUT));
      if FShortCut = 0 then
        FShortCut := TextToShortCut(DEFAULT_SHORTCUT);
      FMagnify.SetSize(MagnifySize, MagnifySize);
      for i := 1 to 16 do
      begin
        Buf := FindComponent('Shape' + i.ToString);
        if Assigned(Buf) then
          (Buf as TShape).Brush.Color := Ini.ReadInteger('CustomPallete', 'Shape' + i.ToString, clGray);
      end;
      for i := 1 to 16 do
      begin
        Buf := FindComponent('ButtonFlatLock' + i.ToString);
        if Assigned(Buf) then
          case Ini.ReadInteger('CustomPalleteLock', 'Lock' + i.ToString, 0) of
            1:
              (Buf as TButtonFlat).ImageIndex := 7;
          else
            (Buf as TButtonFlat).ImageIndex := 6;
          end;
      end;
    finally
      Ini.Free;
    end;
  except
    // Не страшно, что сохранения не загрузили
  end;
  SetColor(FIsDark);
  Navigate(TabSheetStd);
  Application.ProcessMessages;
  CheckUpdate;
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  TThread.RemoveQueuedEvents(TThread.CurrentThread);
  FMagnify.Free;
  FSpectBMP.Free;
end;

function TFormMain.GetPixelUnderCursor(Snap: Boolean): TColor;
const
  SCREEN_HWND = 0;
var
  DC: HDC;
  Cur: TPoint;
begin
  DC := GetDC(SCREEN_HWND);
  try
    GetCursorPos(Cur);
    Result := GetPixel(DC, Cur.X, Cur.Y);
    if Snap then
    begin
      if BitBlt(FMagnify.Canvas.Handle,
        0, 0, FMagnify.Width, FMagnify.Height,
        DC,
        Cur.X - FMagnify.Width div 2, Cur.Y - FMagnify.Height div 2,
        SRCCOPY) then
      begin
        FMgEmpty := False;
        DrawPanelMagnify.Repaint;
      end;
    end;
  finally
    ReleaseDC(SCREEN_HWND, DC);
  end;
end;

procedure TFormMain.HexaColorPicker1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetDataColor(HexaColorPicker1.SelectedColor);
end;

procedure TFormMain.HSColorPicker1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if ssLeft in Shift then
    SetDataColor(HSColorPicker1.SelectedColor);
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

procedure TFormMain.HSVColorPicker1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if ssLeft in Shift then
    SetDataColor(HSVColorPicker1.SelectedColor);
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
  FCaptureColor := True;
end;

procedure TFormMain.ImageRMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if ssLeft in Shift then
    SetDataColor(GetPixelUnderCursor);
end;

procedure TFormMain.ImageRMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  SetDataColor(GetPixelUnderCursor);
  FCaptureColor := False;
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

function TFormMain.ShapeIsLocked(Shape: TShape): Boolean;
var
  LockBtn: TComponent;
begin
  LockBtn := FindComponent('ButtonFlatLock' + Shape.Tag.ToString);
  Result := (Assigned(LockBtn) and (LockBtn is TButtonFlat)) and ((LockBtn as TButtonFlat).ImageIndex <> 6);
end;

procedure TFormMain.SetDataColor(dColor: TColor);
var
  C, M, Y, K, R, G, B: Byte;
  H, V, S: Double;
begin
  FDataColor := ColorToRGB(dColor);
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
  EditResTColor.Text := Vcl.Graphics.ColorToString(FDataColor);
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
  begin
    if not ShapeIsLocked(FActiveShape) then
      FActiveShape.Brush.Color := FDataColor;
  end;
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
  if Assigned(FormLD) then
    FormLD.SetDataColor(FDataColor);

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
  if FActiveShape <> (Sender as TShape) then
    (Sender as TShape).Margins.SetBounds(4, 4, 4, 4);
end;

procedure TFormMain.Shape1MouseLeave(Sender: TObject);
begin
  if ActiveShape = (Sender as TShape) then
  begin
    (Sender as TShape).Pen.Color := $00818181;
    (Sender as TShape).Margins.SetBounds(0, 0, 0, 0);
  end
  else
  begin
    (Sender as TShape).Pen.Color := ColorDarkerOr(Color, 10);
    (Sender as TShape).Margins.SetBounds(7, 7, 7, 7);
  end;
end;

procedure TFormMain.Shape1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  OldShape: TShape;
begin
  OldShape := ActiveShape;
  (Sender as TShape).Pen.Color := $00818181;
  if Button = mbLeft then
  begin
    ActiveShape := (Sender as TShape);
    SetDataColor(ActiveShape.Brush.Color);
  end
  else if Button = mbRight then
  begin
    if not ShapeIsLocked(Sender as TShape) then
      (Sender as TShape).Brush.Color := FDataColor;
  end
  else if Button = mbMiddle then
  begin
    if not ShapeIsLocked(Sender as TShape) then
      (Sender as TShape).Brush.Color := DefaultColor;
  end;
  Shape1MouseLeave(OldShape);
end;

procedure TFormMain.ShapeDLMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ssDouble in Shift then
    SetDataColor(ShapeDL.Brush.Color);
end;

procedure TFormMain.ShapeDLMouseEnter(Sender: TObject);
begin
  ShapeDL.Pen.Width := 2;
end;

procedure TFormMain.ShapeDLMouseLeave(Sender: TObject);
begin
  ShapeDL.Pen.Width := 0;
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
  ShowMessage(
    'Зажмите Ctrl+Shift для выбора цвета из любой точки экрана'#13#10 +
    'Двойной клик по области лупы позволяет выбрать цвет'#13#10 +
    'Формат копирования RGB/HSV/CMYK можно указать в config.ini'#13#10 +
    #13#10 +
    'Автор программы: Геннадий Малинин aka HemulGM'#13#10 +
    'Сайт: https://hemulgm.ru'#13#10 +
    'Исходники и свежий релиз: https://github.com/HemulGM/ColorToStrNew');
end;

procedure TFormMain.ButtonFlatLock1Click(Sender: TObject);
begin
  if not (Sender is TButtonFlat) then
    Exit;
  if (Sender as TButtonFlat).ImageIndex = 6 then
    (Sender as TButtonFlat).ImageIndex := 7
  else
    (Sender as TButtonFlat).ImageIndex := 6;
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
    SetShapeColor(ShapeMix, MixColors(ShapeMix.Brush.Color, StringToColor(ListBoxMix.Items[i]), 50));
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

procedure TFormMain.ButtonFlatOpenLDClick(Sender: TObject);
begin
  FormLD.SetDataColor(FDataColor);
  FormLD.Show;
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
  if CaptureShortCutIsDown or FCaptureColor then
    SetDataColor(GetPixelUnderCursor);
end;

procedure TFormMain.TrackBarHSVVChange(Sender: TObject);
begin
  if not TrackBarHSVV.Focused then
    Exit;
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

