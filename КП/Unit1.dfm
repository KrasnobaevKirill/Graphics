object Form1: TForm1
  Left = 455
  Top = 133
  BorderStyle = bsSingle
  Caption = #1055#1086#1089#1090#1088#1086#1077#1085#1080#1077' '#1075#1088#1072#1092#1080#1082#1086#1074
  ClientHeight = 561
  ClientWidth = 1130
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 119
    Height = 13
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1074#1080#1076' '#1092#1091#1085#1082#1094#1080#1080
  end
  object Label7: TLabel
    Left = 8
    Top = 216
    Width = 186
    Height = 13
    Caption = #1044#1080#1072#1087#1072#1079#1086#1085' '#1072#1088#1075#1091#1084#1077#1085#1090#1072' [-1000 ... 1000]'
  end
  object Label8: TLabel
    Left = 8
    Top = 243
    Width = 14
    Height = 13
    Caption = #1054#1090
  end
  object Label9: TLabel
    Left = 8
    Top = 270
    Width = 14
    Height = 13
    Caption = #1044#1086
  end
  object Label10: TLabel
    Left = 929
    Top = 8
    Width = 119
    Height = 13
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1074#1080#1076' '#1092#1091#1085#1082#1094#1080#1080
  end
  object Label16: TLabel
    Left = 929
    Top = 216
    Width = 186
    Height = 13
    Caption = #1044#1080#1072#1087#1072#1079#1086#1085' '#1072#1088#1075#1091#1084#1077#1085#1090#1072' [-1000 ... 1000]'
  end
  object Label17: TLabel
    Left = 929
    Top = 243
    Width = 14
    Height = 13
    Caption = #1054#1090
  end
  object Label18: TLabel
    Left = 929
    Top = 270
    Width = 14
    Height = 13
    Caption = #1044#1086
  end
  object Chart1: TChart
    Left = 210
    Top = 8
    Width = 703
    Height = 513
    Legend.Alignment = laBottom
    Legend.Font.Charset = RUSSIAN_CHARSET
    Legend.Font.Height = -13
    Legend.Font.Name = 'Times New Roman'
    Legend.FontSeriesColor = True
    Legend.Title.Font.Height = -21
    Legend.Transparent = True
    Title.Text.Strings = (
      ' ')
    DepthAxis.Automatic = False
    DepthAxis.AutomaticMaximum = False
    DepthAxis.AutomaticMinimum = False
    DepthTopAxis.Automatic = False
    DepthTopAxis.AutomaticMaximum = False
    DepthTopAxis.AutomaticMinimum = False
    Hover.Visible = False
    View3D = False
    View3DWalls = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TFastLineSeries
      SeriesColor = clBlack
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      object TeeFunction1: TCustomTeeFunction
        CalcByValue = False
        Period = 1.000000000000000000
        NumPoints = 100
      end
    end
    object Series2: TFastLineSeries
      SeriesColor = clBlack
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      object TeeFunction2: TCustomTeeFunction
        CalcByValue = False
        Period = 1.000000000000000000
        NumPoints = 100
      end
    end
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 27
    Width = 183
    Height = 21
    Style = csDropDownList
    TabOrder = 1
    Items.Strings = (
      'y=a*x^3+ b*x^2+c*x+d'
      'y=a*cos(b*x)'
      'y=a*sin(b*x)')
  end
  object Panel1: TPanel
    Left = 8
    Top = 62
    Width = 183
    Height = 139
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 123
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1099
    end
    object Label3: TLabel
      Left = 16
      Top = 27
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label4: TLabel
      Left = 16
      Top = 54
      Width = 6
      Height = 13
      Caption = 'b'
    end
    object Label5: TLabel
      Left = 16
      Top = 81
      Width = 5
      Height = 13
      Caption = 'c'
    end
    object Label6: TLabel
      Left = 16
      Top = 108
      Width = 6
      Height = 13
      Caption = 'd'
    end
    object Edit1: TEdit
      Left = 28
      Top = 27
      Width = 141
      Height = 21
      TabOrder = 0
      Text = '0'
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 27
      Top = 54
      Width = 141
      Height = 21
      TabOrder = 1
      Text = '0'
      OnKeyPress = Edit1KeyPress
    end
    object Edit3: TEdit
      Left = 28
      Top = 81
      Width = 141
      Height = 21
      TabOrder = 2
      Text = '0'
      OnKeyPress = Edit1KeyPress
    end
    object Edit4: TEdit
      Left = 28
      Top = 108
      Width = 141
      Height = 21
      TabOrder = 3
      Text = '0'
      OnKeyPress = Edit1KeyPress
    end
  end
  object Edit5: TEdit
    Left = 28
    Top = 235
    Width = 141
    Height = 21
    TabOrder = 3
    Text = '0'
    OnKeyPress = Edit1KeyPress
  end
  object Edit6: TEdit
    Left = 28
    Top = 262
    Width = 141
    Height = 21
    TabOrder = 4
    Text = '0'
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 8
    Top = 335
    Width = 183
    Height = 25
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1092#1091#1085#1082#1094#1080#1102
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 210
    Top = 527
    Width = 183
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 296
    Width = 183
    Height = 25
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1094#1074#1077#1090
    TabOrder = 7
    OnClick = Button3Click
  end
  object ComboBox2: TComboBox
    Left = 929
    Top = 27
    Width = 183
    Height = 21
    Style = csDropDownList
    TabOrder = 8
    Items.Strings = (
      'y=a*x^3+ b*x^2+c*x+d'
      'y=a*cos(b*x)'
      'y=a*sin(b*x)')
  end
  object Panel2: TPanel
    Left = 929
    Top = 62
    Width = 183
    Height = 139
    TabOrder = 9
    object Label11: TLabel
      Left = 8
      Top = 8
      Width = 123
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1099
    end
    object Label12: TLabel
      Left = 16
      Top = 27
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label13: TLabel
      Left = 16
      Top = 54
      Width = 6
      Height = 13
      Caption = 'b'
    end
    object Label14: TLabel
      Left = 16
      Top = 81
      Width = 5
      Height = 13
      Caption = 'c'
    end
    object Label15: TLabel
      Left = 16
      Top = 108
      Width = 6
      Height = 13
      Caption = 'd'
    end
    object Edit7: TEdit
      Left = 28
      Top = 27
      Width = 141
      Height = 21
      TabOrder = 0
      Text = '0'
      OnKeyPress = Edit1KeyPress
    end
    object Edit8: TEdit
      Left = 28
      Top = 54
      Width = 141
      Height = 21
      TabOrder = 1
      Text = '0'
      OnKeyPress = Edit1KeyPress
    end
    object Edit9: TEdit
      Left = 28
      Top = 81
      Width = 141
      Height = 21
      TabOrder = 2
      Text = '0'
      OnKeyPress = Edit1KeyPress
    end
    object Edit10: TEdit
      Left = 28
      Top = 108
      Width = 141
      Height = 21
      TabOrder = 3
      Text = '0'
      OnKeyPress = Edit1KeyPress
    end
  end
  object Edit11: TEdit
    Left = 949
    Top = 235
    Width = 141
    Height = 21
    TabOrder = 10
    Text = '0'
    OnKeyPress = Edit1KeyPress
  end
  object Edit12: TEdit
    Left = 949
    Top = 262
    Width = 141
    Height = 21
    TabOrder = 11
    Text = '0'
    OnKeyPress = Edit1KeyPress
  end
  object Button4: TButton
    Left = 929
    Top = 296
    Width = 183
    Height = 25
    Caption = #1042#1099#1073#1088#1072#1090#1100' '#1094#1074#1077#1090
    TabOrder = 12
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 929
    Top = 335
    Width = 183
    Height = 25
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1092#1091#1085#1082#1094#1080#1102
    TabOrder = 13
    OnClick = Button5Click
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 416
    Width = 185
    Height = 105
    Caption = #1042#1099#1073#1086#1088' '#1096#1082#1072#1083#1099
    ItemIndex = 0
    Items.Strings = (
      #1051#1080#1085#1077#1081#1085#1072#1103
      #1051#1086#1075#1072#1088#1080#1092#1084#1080#1095#1077#1089#1082#1072#1103)
    TabOrder = 14
    OnClick = RadioGroup1Click
  end
  object ColorDialog1: TColorDialog
    Left = 952
    Top = 448
  end
  object ColorDialog2: TColorDialog
    Left = 960
    Top = 496
  end
  object MainMenu1: TMainMenu
    Left = 1072
    Top = 392
    object N1: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = N2Click
    end
  end
end
