unit CTS.LD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, System.Generics.Collections, System.UITypes;

type
  TFormLD = class(TForm)
    GridPanel1: TGridPanel;
    Panel1: TPanel;
    Shape100: TShape;
    Label1: TLabel;
    Panel2: TPanel;
    Shape95: TShape;
    Label2: TLabel;
    Panel3: TPanel;
    Shape90: TShape;
    Label3: TLabel;
    Panel4: TPanel;
    Shape85: TShape;
    Label4: TLabel;
    Panel5: TPanel;
    Shape80: TShape;
    Label5: TLabel;
    Panel6: TPanel;
    Shape75: TShape;
    Label6: TLabel;
    Panel7: TPanel;
    Shape70: TShape;
    Label7: TLabel;
    Panel8: TPanel;
    Shape65: TShape;
    Label8: TLabel;
    Panel9: TPanel;
    Shape60: TShape;
    Label9: TLabel;
    Panel10: TPanel;
    Shape55: TShape;
    Label10: TLabel;
    Panel11: TPanel;
    Shape50: TShape;
    Label11: TLabel;
    Panel12: TPanel;
    Shape45: TShape;
    Label12: TLabel;
    Panel13: TPanel;
    Shape40: TShape;
    Label13: TLabel;
    Panel14: TPanel;
    Shape35: TShape;
    Label14: TLabel;
    Panel15: TPanel;
    Shape30: TShape;
    Label15: TLabel;
    Panel16: TPanel;
    Shape25: TShape;
    Label16: TLabel;
    Panel17: TPanel;
    Shape20: TShape;
    Label17: TLabel;
    Panel18: TPanel;
    Shape15: TShape;
    Label18: TLabel;
    Panel19: TPanel;
    Shape5: TShape;
    Label19: TLabel;
    Panel20: TPanel;
    Shape0: TShape;
    Label20: TLabel;
    Panel21: TPanel;
    Shape10: TShape;
    Label21: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Shape100MouseEnter(Sender: TObject);
    procedure Shape100MouseLeave(Sender: TObject);
    procedure Shape100MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
  public
    procedure SetDataColor(Color: TColor);
  end;

var
  FormLD: TFormLD;

implementation

uses
  HGM.Utils.Color, CTS.Main, HGM.Common.Utils;

{$R *.dfm}

procedure TFormLD.FormCreate(Sender: TObject);
begin
  SetDataColor(0);
end;

{ TFormLD }

procedure TFormLD.SetDataColor(Color: TColor);
var
  NColor: TColor;
  H, S, V: Double;
  RGB: TRGB;
begin
  if Tag <> 0 then
    Exit;
  RGB := ColorToRGB(Color);

  RGBToHSV(RGB.R, RGB.G, RGB.B, H, S, V);
  HSVToColor(H, 100, 100, NColor);
  if (RGB.R + RGB.B + RGB.G = 0) or (RGB.R + RGB.B + RGB.G = 765) then
    NColor := 0;
  Shape5.Brush.Color := ColorDarker(NColor, 90);

  Shape10.Brush.Color := ColorDarker(NColor, 80);

  Shape15.Brush.Color := ColorDarker(NColor, 70);

  Shape20.Brush.Color := ColorDarker(NColor, 60);

  Shape25.Brush.Color := ColorDarker(NColor, 50);

  Shape30.Brush.Color := ColorDarker(NColor, 40);

  Shape35.Brush.Color := ColorDarker(NColor, 30);

  Shape40.Brush.Color := ColorDarker(NColor, 20);

  Shape45.Brush.Color := ColorDarker(NColor, 10);

  Shape50.Brush.Color := NColor;

  Shape55.Brush.Color := ColorLighter(NColor, 10);

  Shape60.Brush.Color := ColorLighter(NColor, 20);

  Shape65.Brush.Color := ColorLighter(NColor, 30);

  Shape70.Brush.Color := ColorLighter(NColor, 40);

  Shape75.Brush.Color := ColorLighter(NColor, 50);

  Shape80.Brush.Color := ColorLighter(NColor, 60);

  Shape85.Brush.Color := ColorLighter(NColor, 70);

  Shape90.Brush.Color := ColorLighter(NColor, 80);

  Shape95.Brush.Color := ColorLighter(NColor, 90);
                  {
  HSVToColor(H, 100, 10, NColor);
  Shape5.Brush.Color := NColor;

  HSVToColor(H, 100, 20, NColor);
  Shape10.Brush.Color := NColor;

  HSVToColor(H, 100, 30, NColor);
  Shape15.Brush.Color := NColor;

  HSVToColor(H, 100, 40, NColor);
  Shape20.Brush.Color := NColor;

  HSVToColor(H, 100, 50, NColor);
  Shape25.Brush.Color := NColor;

  HSVToColor(H, 100, 60, NColor);
  Shape30.Brush.Color := NColor;

  HSVToColor(H, 100, 70, NColor);
  Shape35.Brush.Color := NColor;

  HSVToColor(H, 100, 80, NColor);
  Shape40.Brush.Color := NColor;

  HSVToColor(H, 100, 90, NColor);
  Shape45.Brush.Color := NColor;

  HSVToColor(H, 100, 100, NColor);
  Shape50.Brush.Color := NColor;

  HSVToColor(H, 90, 100, NColor);
  Shape55.Brush.Color := NColor;

  HSVToColor(H, 80, 100, NColor);
  Shape60.Brush.Color := NColor;

  HSVToColor(H, 70, 100, NColor);
  Shape65.Brush.Color := NColor;

  HSVToColor(H, 60, 100, NColor);
  Shape70.Brush.Color := NColor;

  HSVToColor(H, 50, 100, NColor);
  Shape75.Brush.Color := NColor;

  HSVToColor(H, 40, 100, NColor);
  Shape80.Brush.Color := NColor;

  HSVToColor(H, 30, 100, NColor);
  Shape85.Brush.Color := NColor;

  HSVToColor(H, 20, 100, NColor);
  Shape90.Brush.Color := NColor;

  HSVToColor(H, 10, 100, NColor);
  Shape95.Brush.Color := NColor;   }
end;

procedure TFormLD.Shape100MouseEnter(Sender: TObject);
begin
  (Sender as TShape).Pen.Style := psSolid;
  (Sender as TShape).Pen.Width := 1;
  (Sender as TShape).Pen.Color := $00818181;
end;

procedure TFormLD.Shape100MouseLeave(Sender: TObject);
begin
  (Sender as TShape).Pen.Style := psClear;
  (Sender as TShape).Pen.Width := 0;
  (Sender as TShape).Pen.Color := $00818181;
end;

procedure TFormLD.Shape100MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then
  begin
    Tag := 1;
    FormMain.SetDataColor((Sender as TShape).Brush.Color);
    Tag := 0;
  end;
end;

end.

