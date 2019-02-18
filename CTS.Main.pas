unit CTS.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Samples.Spin, Vcl.Buttons, HexaColorPicker,
  HSColorPicker, HSLRingPicker, HSLColorPicker,
  SLHColorPicker, HSVColorPicker, mbOfficeColorDialog, mbDeskPickerButton,
  System.ImageList, Vcl.ImgList, HGM.Controls.Labels,
  HGM.Controls.SpinEdit, HGM.Button, HGM.Controls.PanelCollapsed,
  HGM.Controls.PanelExt, mbColorPickerControl, acPNG;
  //acPNG - can be dropped
type
  TFormMain = class(TForm)
    TimerPXUC: TTimer;
    PanelCollapsed1: TPanelCollapsed;
    DrawPanel1: TDrawPanel;
    PanelCollapsed2: TPanelCollapsed;
    ShapeCur: TShape;
    PanelCollapsed3: TPanelCollapsed;
    ShapeDL: TShape;
    Label1: TLabel;
    TrackBarL: TTrackBar;
    Label2: TLabel;
    PanelCollapsed4: TPanelCollapsed;
    PageControlPalette: TPageControl;
    TabSheetP2: TTabSheet;
    ImageR: TImage;
    PanelCollapsed5: TPanelCollapsed;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpinEditG: TlkSpinEdit;
    SpinEditB: TlkSpinEdit;
    SpinEditR: TlkSpinEdit;
    SpinEditRGB: TlkSpinEdit;
    PanelCollapsed6: TPanelCollapsed;
    Label6: TLabel;
    EditResHEX: TEdit;
    EditResTColor: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    EditResHTML: TEdit;
    PanelCollapsed7: TPanelCollapsed;
    ListBoxMix: TListBox;
    ShapeMix: TShape;
    PanelCollapsed8: TPanelCollapsed;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    SpinEditM: TlkSpinEdit;
    SpinEditY: TlkSpinEdit;
    SpinEditC: TlkSpinEdit;
    SpinEditK: TlkSpinEdit;
    Label12: TLabel;
    Label13: TLabel;
    PanelCollapsed9: TPanelCollapsed;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    SpinEditS: TlkSpinEdit;
    SpinEditV: TlkSpinEdit;
    SpinEditH: TlkSpinEdit;
    PanelCollapsed10: TPanelCollapsed;
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
    PanelCollapsed11: TPanelCollapsed;
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
    DrawPanel2: TDrawPanel;
    Panel1: TPanel;
    Label17: TLabel;
    CheckBoxWeb: TCheckBox;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    TrackBarHSVV: TTrackBar;
    ImageRWeb: TImage;
    SpeedButtonStdDlg: TButtonFlat;
    ButtonTest: TButtonFlat;
    SpeedButtonOnTop: TButtonFlat;
    SpeedButtonHelp: TButtonFlat;
    ImageList1: TImageList;
    ButtonFlat1: TButtonFlat;
    ButtonFlatHEX: TButtonFlat;
    ImageList2: TImageList;
    ButtonFlatTColor: TButtonFlat;
    ButtonFlatWeb: TButtonFlat;
    ButtonFlat2: TButtonFlat;
    ButtonFlat3: TButtonFlat;
    Panel2: TPanel;
    ButtonFlatStd: TButtonFlat;
    ButtonFlatP2: TButtonFlat;
    ButtonFlatHexa: TButtonFlat;
    ButtonFlatHS: TButtonFlat;
    ButtonFlatHSL: TButtonFlat;
    ButtonFlatSLH: TButtonFlat;
    ButtonFlatHSV: TButtonFlat;
    procedure TimerPXUCTimer(Sender: TObject);
    procedure TrackBarLChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DrawPanel1Paint(Sender: TObject);
    procedure SpinEditRChange(Sender: TObject);
    procedure SpinEditRKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpinEditRGBChange(Sender: TObject);
    procedure ShapeDLMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ListBoxMixDrawItem(Control: TWinControl; Index: Integer;
      Rect: TRect; State: TOwnerDrawState);
    procedure SpeedButtonMixAddClick(Sender: TObject);
    procedure SpeedButtonMixDeleteClick(Sender: TObject);
    procedure SpeedButtonMixDoClick(Sender: TObject);
    procedure SpinEditKChange(Sender: TObject);
    procedure ShapeMixMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawPanel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpinEditVChange(Sender: TObject);
    procedure HexaColorPicker1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure HSColorPicker1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure HSLRingPicker1Change(Sender: TObject);
    procedure SLHColorPicker1Change(Sender: TObject);
    procedure HSVColorPicker1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageRMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButtonStdDlgClick(Sender: TObject);
    procedure ButtonTestClick(Sender: TObject);
    procedure SpeedButtonOnTopClick(Sender: TObject);
    procedure SpeedButtonHelpClick(Sender: TObject);
    procedure Shape1MouseEnter(Sender: TObject);
    procedure Shape1MouseLeave(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawPanel2Paint(Sender: TObject);
    procedure DrawPanel2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DrawPanel2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBoxHSVWebClick(Sender: TObject);
    procedure TrackBarHSVVChange(Sender: TObject);
    procedure HSVColorPicker1Change(Sender: TObject);
    procedure ImageRMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImageRMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ButtonFlat1Click(Sender: TObject);
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
  private
    FDataColor:TColor;
    FSpectBMP:TBitmap;
    FMagnify:TBitmap;
    FMgEmpty:Boolean;
    FActiveShape:TShape;
    FKeepColor:Boolean;
    procedure AddColorToMix(aColor:TColor);
    procedure SetShapeColor(Shape:TShape; aColor:TColor);
    procedure SetActiveShape(const Value: TShape);
    procedure DrawSpect;
    procedure Navigate(Tab: TTabSheet);
  public
    procedure SetDataColor(dColor:TColor);
    function GetPixelUnderCursor:TColor;
    property ActiveShape:TShape read FActiveShape write SetActiveShape;
  end;

var
  FormMain: TFormMain;


implementation
 uses Math, System.IniFiles, CTS.Test, HGM.Common.Utils;

{$R *.dfm}

function CtrlDown:Boolean;
begin
 Result:=GetKeyState(VK_CONTROL) < 0;
end;

function ShiftDown:Boolean;
begin
 Result:=GetKeyState(VK_SHIFT) < 0;
end;

function GrayColor(AColor:TColor):TColor;
var Gr:Byte;
begin
 AColor:=ColorToRGB(AColor);
 Gr:=Trunc((GetBValue(AColor) + GetGValue(AColor) + GetRValue(AColor))/3);
 Result:=RGB(Gr, Gr, Gr);
end;

function RGBToHSV(R, G, B:Byte; var H, S, V:Double):Boolean;
var minRGB, maxRGB, delta: Double;
begin
 H:=0.0;
 minRGB:=Min(Min(R, G), B);
 maxRGB:=Max(Max(R, G), B);
 delta:=(maxRGB-minRGB);
 V:=maxRGB;
 if (maxRGB <> 0.0) then S:=255.0*delta/maxRGB else S:=0.0;

 if (S <> 0.0) then
  begin
   if R = maxRGB then H:=(G-B)/delta
   else
    if G = maxRGB then H:=2.0+(B-R)/delta
    else
     if B = maxRGB then H:=4.0+(R-G)/delta
  end
 else H:=-1.0;
 H:=H*60;
 if H < 0.0 then H:=H+360.0;

  //S := S * 100 / 255;
  //V := B * 100 / 255;
 S:=S/255*100;
 V:=V/255*100;

 Result:=True;
end;

function HSVToRGB(H, S, V: Double; var R, G, B: Byte): Boolean;
var i: Integer;
    f, p, q, t: Double;

procedure CopyOutput(const RV, GV, BV: Double);
const RGBmax = 255;
begin
 R:=Round(RGBmax * RV);
 G:=Round(RGBmax * GV);
 B:=Round(RGBmax * BV);
end;

begin
 S:=S/100;
 V:=V/100;
 H:=H/60;
 //Assert(InRange(H, 0.0, 1.0));
 //Assert(InRange(S, 0.0, 1.0));
 //Assert(InRange(V, 0.0, 1.0));
 if S = 0.0 then
  begin
   // achromatic (grey)
   CopyOutput(B, B, B);
   Result:= True;
   Exit;
  end;
 //H:=H*6.0; // sector 0 to 5
 i:=floor(H);
 f:=H-i; // fractional part of H
 p:=V*(1.0-S);
 q:=V*(1.0-S*f);
 t:=V*(1.0-S*(1.0-f));
 case i of
  0: CopyOutput(V, t, p);
  1: CopyOutput(q, V, p);
  2: CopyOutput(p, V, t);
  3: CopyOutput(p, q, V);
  4: CopyOutput(t, p, V);
 else
  CopyOutput(V, p, q);
 end;
 Result:=True;
end;

procedure RGBToCMYK(const R, G, B:Byte; var C:Byte; var M:Byte; var Y:Byte; var K:Byte);
begin
 C:=255-R;
 M:=255-G;
 Y:=255-B;
 if C < M then K:=C else K:=M;
 if Y < K then K:=Y;
 if K > 0 then
  begin
   C:=C-K;
   M:=M-K;
   Y:=Y-K;
  end;
end;

procedure CMYKToRGB(C, M, Y, K:Byte; var R:Byte; var G:Byte; var B:Byte);
begin
 if (Integer(C)+Integer(K)) < 255 then R:=255-(C+K) else R:=0;
 if (Integer(M)+Integer(K)) < 255 then G:=255-(M+K) else G:=0;
 if (Integer(Y)+Integer(K)) < 255 then B:=255-(Y+K) else B:=0;
end;

procedure ColorCorrectCMYK(var C:Byte; var M:Byte; var Y:Byte; var K:Byte);
var MinColor:Byte;
begin
 if C < M then MinColor:=C else MinColor:=M;
 if Y < MinColor then MinColor:=Y;
 if MinColor+K > 255 then MinColor:=255-K;
 C:=C-MinColor;
 M:=M-MinColor;
 Y:=Y-MinColor;
 K:=K+MinColor;
end;

function HexToTColor(sColor:string):TColor;
begin
 Result:=RGB(StrToInt('$'+Copy(sColor, 1, 2)), StrToInt('$'+Copy(sColor, 3, 2)), StrToInt('$'+Copy( sColor, 5, 2)));
end;

function ColorToHex(Color:TColor):string;
begin
 Result:=IntToHex(GetRValue(Color), 2) + IntToHex(GetGValue(Color), 2) + IntToHex(GetBValue(Color), 2);
end;

function ColorToHtml(Color: TColor): string;
var COL:Integer;
begin
 COL:=ColorToRGB(Color);
 Result:='#' + IntToHex(COL and $FF, 2) + IntToHex(COL shr 8 and $FF, 2) + IntToHex(COL shr 16 and $FF, 2);
end;

function HtmlToColor(Color:string):TColor;
begin
 Result:= StringToColor('$' + Copy(Color, 6, 2) + Copy(Color, 4, 2) + Copy(Color, 2, 2));
end;

procedure TFormMain.AddColorToMix(aColor: TColor);
begin
 ListBoxMix.Items.Add(ColorToString(aColor));
end;

procedure TFormMain.ButtonFlat1Click(Sender: TObject);
begin
 SetShapeColor(ShapeDL, GrayColor(FDataColor));
end;

procedure TFormMain.Navigate(Tab:TTabSheet);

procedure SetMenuButtonActive(Button:TButtonFlat; Value:Boolean);
begin
 case Value of
  True:Button.ColorNormal:=$00F7F6F5;
  False:Button.ColorNormal:=clWhite;
 end;
end;

begin
 PageControlPalette.ActivePage:=Tab;
 SetMenuButtonActive(ButtonFlatStd, PageControlPalette.ActivePage = TabSheetStd);
 SetMenuButtonActive(ButtonFlatP2, PageControlPalette.ActivePage = TabSheetP2);
 SetMenuButtonActive(ButtonFlatHexa, PageControlPalette.ActivePage = TabSheetHexa);
 SetMenuButtonActive(ButtonFlatHS, PageControlPalette.ActivePage = TabSheetHS);
 SetMenuButtonActive(ButtonFlatHSL, PageControlPalette.ActivePage = TabSheetHSL);
 SetMenuButtonActive(ButtonFlatHSV, PageControlPalette.ActivePage = TabSheetHSV);
 SetMenuButtonActive(ButtonFlatSLH, PageControlPalette.ActivePage = TabSheetSLH);
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
  ShowMessage('Ops');
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
  ShowMessage('Ops');
 end;
end;

procedure TFormMain.ButtonFlatWebClick(Sender: TObject);
begin
 try
  SetDataColor(HtmlToColor(EditResHTML.Text));
 except
  ShowMessage('Ops');
 end;
end;

procedure TFormMain.CheckBoxHSVWebClick(Sender: TObject);
begin
 HSVColorPicker1.WebSafe:=CheckBoxWeb.Checked;
 HSColorPicker1.WebSafe:=CheckBoxWeb.Checked;
 DrawSpect;
 DrawPanel2.Repaint;
 ImageR.Visible:=not CheckBoxWeb.Checked;
 ImageRWeb.Visible:=CheckBoxWeb.Checked;
end;

procedure TFormMain.DrawPanel1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if ssDouble in Shift then SetDataColor(GetPixelUnderCursor);
end;

procedure TFormMain.DrawPanel1Paint(Sender: TObject);
var PixW:Integer;
    R:TRect;
    S:string;
begin
 DrawPanel1.Canvas.StretchDraw(DrawPanel1.ClientRect, FMagnify);
 if FMgEmpty then
  begin
   R:=DrawPanel1.ClientRect;
   S:='Ctrl+Shift';
   DrawPanel1.Canvas.TextRect(R, S, [tfCenter, tfVerticalCenter, tfSingleLine]);
  end;
 PixW:=(DrawPanel1.ClientRect.Width div 5);
 DrawPanel1.Brush.Style:=bsClear;
 DrawPanel1.Canvas.FrameRect(Rect(PixW*2, PixW*2, PixW*2+PixW, PixW*2+PixW));
end;

procedure TFormMain.DrawPanel2MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var RC:TRect;
    TL, BR:TPoint;
begin
 TL:=DrawPanel2.ClientToScreen(Point(0, 0));
 BR:=DrawPanel2.ClientToScreen(Point(DrawPanel2.Width, DrawPanel2.Height));
 RC:=Rect(TL, BR);
 ClipCursor(@RC);
 FKeepColor:=True;
end;

procedure TFormMain.DrawPanel2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 ClipCursor(nil);
 FKeepColor:=False;
end;

procedure TFormMain.DrawPanel2Paint(Sender: TObject);
begin
 DrawPanel2.Canvas.StretchDraw(DrawPanel2.ClientRect, FSpectBMP);
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
var Ini:TIniFile;
    i:Integer;
    Buf:TComponent;
begin
 Ini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\config.ini');
 try
  for i:= 1 to 16 do
   begin
    Buf:=FindComponent('Shape'+IntToStr(i));
    if Assigned(Buf) then Ini.WriteInteger('CustomPallete', 'Shape'+IntToStr(i), (Buf as TShape).Brush.Color);
   end;
 finally
  Ini.Free;
 end;
end;

procedure TFormMain.DrawSpect;
var H, S, V:Word;
    R, G, B:Byte;
begin
 with FSpectBMP.Canvas do
  begin
   V:=100;
   for H:= 0 to 359 do
    begin
     for S:= 1 to 100 do
      begin
       HSVToRGB(H, S, V, R, G, B);
       //Brush.Color:=RGB(R, G, B);
       Pen.Color:=Brush.Color;
       if CheckBoxWeb.Checked then
        Pixels[H, S]:=RGB(Byte(Trunc(R / 50) * 50), Trunc(G / 50) * 50, Trunc(B / 50) * 50)
       else Pixels[H, S]:=RGB(R, G, B);
      end;
    end;
   S:=100;
   for H:= 0 to 359 do
    begin
     for V:= 200 downto 100 do      //100 - 200
      begin
       HSVToRGB(H, S, V-100, R, G, B);
       //Brush.Color:=RGB(R, G, B);
      // Pen.Color:=Brush.Color;
       if CheckBoxWeb.Checked then
        Pixels[H, Abs(100-(V - 100))+100]:=RGB(Trunc(R / 50) * 50, Trunc(G / 50) * 50, Trunc(B / 50) * 50)
       else Pixels[H, Abs(100-(V - 100))+100]:=RGB(R, G, B);
      end;
    end;
  end;
end;

procedure TFormMain.EditResHEXKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   Key:=#0;
   ButtonFlatHEXClick(nil);
  end;
end;

procedure TFormMain.EditResHTMLKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   Key:=#0;
   ButtonFlatWebClick(nil);
  end;
end;

procedure TFormMain.EditResTColorKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   Key:=#0;
   ButtonFlatTColorClick(nil);
  end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
var i: Integer;
    AC:TColor;
    Ini:TIniFile;
    Buf:TComponent;
begin
 FKeepColor:=False;
 ActiveShape:=Shape1;
 FMagnify:=TBitmap.Create;
 FMagnify.PixelFormat:=pf24bit;
 FMagnify.Width:=5;
 FMagnify.Height:=5;
 FMgEmpty:=True;
 SetDataColor(Random(9000000));
 AC:=GetAeroColor;
 for i:= 0 to ComponentCount-1 do
  if Components[i] is TPanelCollapsed then
   with Components[i] as TPanelCollapsed do
    begin
     CaptionColor:=ColorDarker(AC, 30);
     Color:=clWhite;
     SimpleBorderColor:=ColorDarker(AC, 50);
    end;
 Color:=$00D0D0D0;
 FSpectBMP:=TBitmap.Create;
 FSpectBMP.PixelFormat:=pf24bit;
 FSpectBMP.Width:=360;
 FSpectBMP.Height:=201;
 DrawSpect;
 Ini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\config.ini');
 try
  for i:= 1 to 16 do
   begin
    Buf:=FindComponent('Shape'+IntToStr(i));
    if Assigned(Buf) then
     begin
      (Buf as TShape).Brush.Color:=Ini.ReadInteger('CustomPallete', 'Shape'+IntToStr(i), clGray);
      //(Buf as TShape).Pen.Color:=(Buf as TShape).Brush.Color;
     end;
   end;
 finally
  Ini.Free;
 end;
 Navigate(TabSheetStd);
end;

function TFormMain.GetPixelUnderCursor: TColor;
var DC:HDC;
    Cur:TPoint;
begin
 DC:=GetDC(0);
 GetCursorPos(Cur);
 Result:=GetPixel(DC, Cur.X, Cur.Y);
 BitBlt(FMagnify.Canvas.Handle, 0, 0, 5, 5, DC, Cur.X-2, Cur.Y-2, SRCCOPY);
 FMgEmpty:=False;
 DrawPanel1.Repaint;
end;

procedure TFormMain.HexaColorPicker1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 SetDataColor(HexaColorPicker1.SelectedColor);
end;

procedure TFormMain.HSColorPicker1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 SetDataColor(HSColorPicker1.SelectedColor);
end;

procedure TFormMain.HSLRingPicker1Change(Sender: TObject);
begin
 SetDataColor(HSLRingPicker1.SelectedColor);
end;

procedure TFormMain.HSVColorPicker1Change(Sender: TObject);
begin
 TrackBarHSVV.Position:=255-HSVColorPicker1.Value;
end;

procedure TFormMain.HSVColorPicker1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 SetDataColor(HSVColorPicker1.SelectedColor);
end;

procedure TFormMain.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 SetDataColor(GetPixelUnderCursor);
end;

procedure TFormMain.ImageRMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 FKeepColor:=True;
end;

procedure TFormMain.ImageRMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 if ssLeft in Shift then
  SetDataColor(GetPixelUnderCursor);
end;

procedure TFormMain.ImageRMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 SetDataColor(GetPixelUnderCursor);
 FKeepColor:=False;
end;

procedure TFormMain.ListBoxMixDrawItem(Control: TWinControl; Index: Integer;
  Rect: TRect; State: TOwnerDrawState);
begin
 if ListBoxMix.Items.Count <= 0 then Exit;
 ListBoxMix.Canvas.Brush.Color:=StringToColor(ListBoxMix.Items[Index]);
 ListBoxMix.Canvas.Pen.Color:=ListBoxMix.Canvas.Brush.Color;
 ListBoxMix.Canvas.Rectangle(Rect);
end;

procedure TFormMain.SetActiveShape(const Value: TShape);
begin
 FActiveShape:= Value;
 Shape1MouseLeave(FActiveShape);
end;

procedure TFormMain.SetDataColor(dColor: TColor);
var C, M, Y, K, R, G, B:Byte;
    H, V, S:Double;
begin
 FDataColor:=dColor;
 R:=GetRValue(ColorToRGB(FDataColor));
 G:=GetGValue(ColorToRGB(FDataColor));
 B:=GetBValue(ColorToRGB(FDataColor));
 SetShapeColor(ShapeCur, FDataColor);
 SetShapeColor(ShapeDL, FDataColor);
 TrackBarL.Position:=100;

 SpinEditR.Value:=R;
 SpinEditG.Value:=G;
 SpinEditB.Value:=B;
 SpinEditRGB.Value:=ColorToRGB(RGB(R, G, B));
 //
 EditResHEX.Text:=ColorToHex(FDataColor);
 EditResTColor.Text:=ColorToString(FDataColor);
 EditResHTML.Text:=ColorToHtml(FDataColor);

 RGBToCMYK(R, G, B, C, M, Y, K);
 SpinEditC.Value:=C;
 SpinEditM.Value:=M;
 SpinEditY.Value:=Y;
 SpinEditK.Value:=K;

 RGBToHSV(R, G, B, H, S, V);
 SpinEditH.Value:=Round(H);
 SpinEditS.Value:=Round(S);
 SpinEditV.Value:=Round(V);

 HexaColorPicker1.SelectedColor:=FDataColor;
 HSColorPicker1.SelectedColor:=FDataColor;
 HSVColorPicker1.SelectedColor:=FDataColor;

 if Assigned(FActiveShape) then FActiveShape.Brush.Color:=FDataColor;
 if Assigned(FormTest) then
  begin
   if FormTest.RadioButtonBG.Checked then
    begin
     FormTest.ColorSelectBG.ColorValue:=FDataColor;
     FormTest.ColorSelectBGChange(nil);
    end;
   if FormTest.RadioButtonPanel.Checked then
    begin
     FormTest.ColorSelectPanel.ColorValue:=FDataColor;
     FormTest.ColorSelectPanelChange(nil);
    end;
   if FormTest.RadioButtonFont.Checked then
    begin
     FormTest.ColorSelectFont.ColorValue:=FDataColor;
     FormTest.ColorSelectFontChange(nil);
    end;
  end;

 Repaint;
end;

procedure TFormMain.SetShapeColor(Shape: TShape; aColor: TColor);
begin
 Shape.Brush.Color:=aColor;
 Shape.Pen.Color:=aColor;
end;

procedure TFormMain.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 (Sender as TShape).Pen.Color:=ColorDarker($00818181, 30);
end;

procedure TFormMain.Shape1MouseEnter(Sender: TObject);
begin
 (Sender as TShape).Pen.Color:=$00818181;
end;

procedure TFormMain.Shape1MouseLeave(Sender: TObject);
begin
 if ActiveShape = (Sender as TShape) then (Sender as TShape).Pen.Color:=$00818181//$001065DC
 else (Sender as TShape).Pen.Color:=ColorDarker(clWhite, 10);//$00818181;
end;

procedure TFormMain.Shape1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var OldShape:TShape;
begin
 OldShape:=ActiveShape;
 ActiveShape:=(Sender as TShape);
 Shape1MouseLeave(OldShape);
 SetDataColor(ActiveShape.Brush.Color);
end;

procedure TFormMain.ShapeDLMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if ssDouble in Shift then SetDataColor(ShapeDL.Brush.Color);
end;

procedure TFormMain.ShapeMixMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
 if ssDouble in Shift then SetDataColor(ShapeMix.Brush.Color);
end;

procedure TFormMain.SLHColorPicker1Change(Sender: TObject);
begin
 SetDataColor(SLHColorPicker1.SelectedColor);
end;

procedure TFormMain.SpeedButtonHelpClick(Sender: TObject);
begin
 ShowMessage('Зажмите Ctrl+Shift для выбора цвета из любой точки экрана'+#13#10+'Автор программы: Геннадий Малинин aka HemulGM'#13#10'Сайт: http://hemulgm.ru');
end;

procedure TFormMain.SpeedButtonMixAddClick(Sender: TObject);
begin
 AddColorToMix(FDataColor);
 SpeedButtonMixDoClick(nil);
end;

procedure TFormMain.SpeedButtonMixDeleteClick(Sender: TObject);
begin
 if ListBoxMix.ItemIndex >= 0 then ListBoxMix.Items.Delete(ListBoxMix.ItemIndex);
 SpeedButtonMixDoClick(nil);
end;

procedure TFormMain.SpeedButtonMixDoClick(Sender: TObject);
var i:Integer;
begin
 if ListBoxMix.Items.Count <= 0 then Exit;
 SetShapeColor(ShapeMix, StringToColor(ListBoxMix.Items[0]));
 for i:= 1 to ListBoxMix.Items.Count-1 do
  begin
   SetShapeColor(ShapeMix, MixColors(ShapeMix.Brush.Color, StringToColor(ListBoxMix.Items[i]), 100));
  end;
end;

procedure TFormMain.ButtonTestClick(Sender: TObject);
begin
 FormTest.Show;
end;

procedure TFormMain.SpeedButtonOnTopClick(Sender: TObject);
begin
 if FormStyle <> fsStayOnTop then
  begin
   FormStyle:=fsStayOnTop;
   Caption:='Работа с цветом (Поверх остальных окон)';
   SpeedButtonOnTop.NotifyVisible:=True;
  end
 else
  begin
   FormStyle:=fsNormal;
   Caption:='Работа с цветом';
   SpeedButtonOnTop.NotifyVisible:=False;
  end;
end;

procedure TFormMain.SpeedButtonStdDlgClick(Sender: TObject);
begin
 ColorDialog1.Color:=FDataColor;
 if ColorDialog1.Execute(Handle) then SetDataColor(ColorDialog1.Color);
end;

procedure TFormMain.SpinEditKChange(Sender: TObject);
var R, G, B:Byte;
begin
 CMYKToRGB(SpinEditC.Value, SpinEditM.Value, SpinEditY.Value, SpinEditK.Value, R, G, B);
 SetDataColor(RGB(R, G, B));
end;

procedure TFormMain.SpinEditRChange(Sender: TObject);
begin
 SpinEditRGB.Value:=ColorToRGB(RGB(SpinEditR.Value, SpinEditG.Value, SpinEditB.Value));
 SetDataColor(RGB(SpinEditR.Value, SpinEditG.Value, SpinEditB.Value));
end;

procedure TFormMain.SpinEditRGBChange(Sender: TObject);
begin
 SpinEditR.Value:=GetRValue(SpinEditRGB.Value);
 SpinEditG.Value:=GetGValue(SpinEditRGB.Value);
 SpinEditB.Value:=GetBValue(SpinEditRGB.Value);
 SetDataColor(RGB(SpinEditR.Value, SpinEditG.Value, SpinEditB.Value));
end;

procedure TFormMain.SpinEditRKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 SpinEditRChange(nil);
end;

procedure TFormMain.SpinEditVChange(Sender: TObject);
var H, S, V:Single;
    R, G, B:Byte;
begin
 H:=SpinEditH.Value;
 S:=SpinEditS.Value;
 V:=SpinEditV.Value;
 HSVToRGB(H, S, V, R, G, B);
 SetDataColor(RGB(R, G, B));
end;

procedure TFormMain.TimerPXUCTimer(Sender: TObject);
begin
 if (CtrlDown and ShiftDown) or FKeepColor then
  begin
   SetDataColor(GetPixelUnderCursor);
   //Cursor:=crHandPoint;
  end;
 //else Cursor:=crDefault;
end;

procedure TFormMain.TrackBarHSVVChange(Sender: TObject);
begin
 HSVColorPicker1.Value:=Abs(255 - TrackBarHSVV.Position);
 SetDataColor(HSVColorPicker1.SelectedColor);
end;

procedure TFormMain.TrackBarLChange(Sender: TObject);
begin
 case TrackBarL.Position of
  0..100:SetShapeColor(ShapeDL, ColorDarker(FDataColor, Abs(TrackBarL.Position-100)));
  101..200:SetShapeColor(ShapeDL, ColorLighter(FDataColor, TrackBarL.Position-100));
 end;
end;

end.
