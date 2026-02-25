object Form1: TForm1
  Left = 228
  Top = 142
  Width = 1010
  Height = 708
  HelpContext = 114
  Caption = 'Kaleidozyklus'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 994
    Height = 669
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object kaleido: TPanel
      Left = 0
      Top = 0
      Width = 994
      Height = 669
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      object Panel2: TPanel
        Left = 793
        Top = 0
        Width = 201
        Height = 669
        Align = alRight
        BevelOuter = bvNone
        Color = 15790320
        TabOrder = 0
        object Label2: TLabel
          Left = 16
          Top = 40
          Width = 81
          Height = 14
          Caption = 'Tetrahedral :'
        end
        object Label3: TLabel
          Left = 16
          Top = 64
          Width = 117
          Height = 14
          Caption = 'Elevation angle '#176' :'
        end
        object Label4: TLabel
          Left = 16
          Top = 168
          Width = 112
          Height = 14
          Caption = 'Angle Rotation '#176' :'
        end
        object Label5: TLabel
          Left = 16
          Top = 16
          Width = 51
          Height = 14
          Caption = 'Options'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 16
          Top = 88
          Width = 85
          Height = 14
          Caption = 'Edge length :'
        end
        object Button1: TButton
          Left = 24
          Top = 120
          Width = 75
          Height = 25
          Caption = 'Zoom in'
          TabOrder = 2
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 40
          Top = 224
          Width = 121
          Height = 25
          Caption = 'Animation'
          TabOrder = 3
          OnClick = D29C
        end
        object Checkbox1: TCheckBox
          Left = 16
          Top = 192
          Width = 145
          Height = 17
          Caption = 'Rotate backwards'
          TabOrder = 0
        end
        object Memo1: TMemo
          Left = 8
          Top = 264
          Width = 177
          Height = 289
          BorderStyle = bsNone
          Color = 15790320
          Lines.Strings = (
            'A kaleidocycle is a '
            'ring made up of '
            'an even number '
            'of tetrahedra.'
            ''
            'The tetrahedra are '
            'connected at two '
            'opposite edges. '
            'These edges are '
            'skew and '
            'perpendicular to '
            'each other.'
            ''
            'The special '
            'feature is that '
            'this ring can be '
            'rotated endlessly, '
            'revealing each '
            'pyramid from '
            'all sides.')
          TabOrder = 1
        end
        object SpinEdit1: TSpinEdit
          Left = 136
          Top = 34
          Width = 54
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          Increment = 2
          MaxValue = 20
          MinValue = 6
          ParentFont = False
          TabOrder = 4
          Value = 12
          OnChange = Paintbox1Paint
        end
        object SpinEdit2: TSpinEdit
          Left = 136
          Top = 60
          Width = 54
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          MaxValue = 90
          MinValue = 0
          ParentFont = False
          TabOrder = 5
          Value = 60
          OnChange = Paintbox1Paint
        end
        object SpinEdit3: TSpinEdit
          Left = 136
          Top = 86
          Width = 54
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          MaxValue = 200
          MinValue = 50
          ParentFont = False
          TabOrder = 6
          Value = 120
          OnChange = Paintbox1Paint
        end
        object SpinEdit4: TSpinEdit
          Left = 136
          Top = 162
          Width = 54
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          MaxValue = 360
          MinValue = 0
          ParentFont = False
          TabOrder = 7
          Value = 0
          OnChange = Paintbox1Paint
        end
        object Button3: TButton
          Left = 104
          Top = 120
          Width = 75
          Height = 25
          Caption = 'Zoom out'
          TabOrder = 8
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 16
          Top = 576
          Width = 75
          Height = 25
          Caption = 'Save'
          TabOrder = 9
          OnClick = Button4Click
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 793
        Height = 669
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 1
        object Paintbox1: TPaintBox
          Left = 0
          Top = 0
          Width = 793
          Height = 669
          Align = alClient
          OnPaint = Paintbox1Paint
        end
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 49
    Top = 40
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Bitmap (*.bmp)|*.bmp'
    Left = 88
    Top = 40
  end
end
