object FormTest: TFormTest
  Left = 0
  Top = 0
  Caption = #1058#1077#1089#1090
  ClientHeight = 520
  ClientWidth = 742
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 209
    Height = 520
    Align = alLeft
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Shape4: TShape
      Left = 208
      Top = 0
      Width = 1
      Height = 520
      Align = alRight
      Brush.Color = 14474202
      Pen.Color = 14474202
      ExplicitLeft = 0
      ExplicitTop = 48
      ExplicitHeight = 742
    end
    object Label1: TLabel
      Left = 19
      Top = 21
      Width = 55
      Height = 13
      Caption = #1062#1074#1077#1090' '#1092#1086#1085#1072
    end
    object Label2: TLabel
      Left = 9
      Top = 49
      Width = 65
      Height = 13
      Caption = #1062#1074#1077#1090' '#1087#1072#1085#1077#1083#1080
    end
    object Label3: TLabel
      Left = 10
      Top = 77
      Width = 64
      Height = 13
      Caption = #1062#1074#1077#1090' '#1090#1077#1082#1089#1090#1072
    end
    object ColorSelectBG: TButtonFlat
      Left = 80
      Top = 16
      Width = 23
      Height = 22
      Caption = ''
      ColorNormal = clBlack
      ColorOver = clBlack
      ColorPressed = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Flat = False
      BorderColor = clBlack
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWindowText
      FontOver.Height = -13
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWindowText
      FontDown.Height = -13
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      OnClick = ColorSelectBGClick
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 0
      TabStop = True
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
    end
    object ColorSelectPanel: TButtonFlat
      Left = 80
      Top = 44
      Width = 23
      Height = 22
      Caption = ''
      ColorNormal = clBlack
      ColorOver = clBlack
      ColorPressed = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Flat = False
      BorderColor = clBlack
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWindowText
      FontOver.Height = -13
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWindowText
      FontDown.Height = -13
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      OnClick = ColorSelectPanelClick
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 1
      TabStop = True
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
    end
    object ColorSelectFont: TButtonFlat
      Left = 80
      Top = 72
      Width = 23
      Height = 22
      Caption = ''
      ColorNormal = clBlack
      ColorOver = clBlack
      ColorPressed = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Flat = False
      BorderColor = clBlack
      FontOver.Charset = DEFAULT_CHARSET
      FontOver.Color = clWindowText
      FontOver.Height = -13
      FontOver.Name = 'Tahoma'
      FontOver.Style = []
      FontDown.Charset = DEFAULT_CHARSET
      FontDown.Color = clWindowText
      FontDown.Height = -13
      FontDown.Name = 'Tahoma'
      FontDown.Style = []
      IgnorBounds = True
      OnClick = ColorSelectFontClick
      RoundRectParam = 0
      ShowFocusRect = False
      TabOrder = 2
      TabStop = True
      TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter]
      SubTextFont.Charset = DEFAULT_CHARSET
      SubTextFont.Color = clWhite
      SubTextFont.Height = -13
      SubTextFont.Name = 'Tahoma'
      SubTextFont.Style = []
    end
    object GroupBox1: TGroupBox
      Left = 109
      Top = 0
      Width = 85
      Height = 103
      Caption = #1062#1074#1077#1090' '#1080#1079' '#1086#1082#1085#1072
      TabOrder = 3
      object RadioButtonPanel: TRadioButton
        Left = 9
        Top = 46
        Width = 14
        Height = 17
        TabOrder = 0
      end
      object RadioButtonFont: TRadioButton
        Left = 9
        Top = 74
        Width = 14
        Height = 17
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object RadioButtonBG: TRadioButton
        Left = 9
        Top = 19
        Width = 14
        Height = 17
        TabOrder = 2
      end
    end
  end
  object PanelT1: TPanel
    Left = 215
    Top = 8
    Width = 209
    Height = 58
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object LabelT1: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 203
      Height = 52
      Align = alClient
      Caption = 
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do ' +
        'eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut e' +
        'nim ad minim veniam, quis nostrud exercitation ullamco laboris n' +
        'isi ut aliquip ex ea commodo consequat. Duis aute irure dolor in' +
        ' reprehenderit in voluptate velit esse cillum dolore eu fugiat n' +
        'ulla pariatur. Excepteur sint occaecat cupidatat non proident, s' +
        'unt in culpa qui officia deserunt mollit anim id est laborum.'
      WordWrap = True
      ExplicitHeight = 143
    end
  end
  object PanelT2: TPanel
    Left = 215
    Top = 72
    Width = 209
    Height = 58
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 2
    object LabelT2: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 203
      Height = 52
      Align = alClient
      Alignment = taCenter
      Caption = 'Lorem ipsum dolor sit amet'
      Layout = tlCenter
      WordWrap = True
      ExplicitWidth = 127
      ExplicitHeight = 13
    end
  end
  object PanelT3: TPanel
    Left = 215
    Top = 136
    Width = 209
    Height = 58
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 3
    object LabelT3: TLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 203
      Height = 52
      Align = alClient
      Alignment = taCenter
      Caption = 'LOREM'
      Layout = tlCenter
      WordWrap = True
      ExplicitWidth = 34
      ExplicitHeight = 13
    end
  end
  object ColorDialog: TColorDialog
    Options = [cdFullOpen, cdSolidColor, cdAnyColor]
    Left = 432
    Top = 232
  end
end
