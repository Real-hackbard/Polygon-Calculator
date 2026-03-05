object Form1: TForm1
  Left = 283
  Top = 183
  Width = 910
  Height = 729
  Caption = 'Star Polyhedron'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -12
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 894
    Height = 690
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 200
      Height = 690
      Align = alLeft
      BevelOuter = bvNone
      Color = 15790320
      TabOrder = 0
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 200
        Height = 222
        Align = alTop
        BevelOuter = bvNone
        Color = 15790320
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object S2: TSpeedButton
          Left = 112
          Top = 11
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            66010000424D6601000000000000760000002800000014000000140000000100
            040000000000F000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFF0000F0000FFFFFFFFFF0000F0000F00FFFFFFFFFFFFFF00F0000F0F0
            FFFFFFFFFFFF0F0F0000F0FF0FFFFFFFFFF0FF0F0000FFFFF0FFFFFFFF0FFFFF
            0000FFFFFF0FFFFFF0FFFFFF0000FFFFFFF0FFFF0FFFFFFF0000FFFFFFFF0FF0
            FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
            FFFF0FF0FFFFFFFF0000FFFFFFF0FFFF0FFFFFFF0000FFFFFF0FFFFFF0FFFFFF
            0000FFFFF0FFFFFFFF0FFFFF0000F0FF0FFFFFFFFFF0FF0F0000F0F0FFFFFFFF
            FFFF0F0F0000F00FFFFFFFFFFFFFF00F0000F0000FFFFFFFFF00000F0000FFFF
            FFFFFFFFFFFFFFFF0000}
          OnClick = S8C
        end
        object S3: TSpeedButton
          Left = 160
          Top = 11
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            66010000424D6601000000000000760000002800000014000000140000000100
            040000000000F000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFF0000F0FFFFFFFFFFFFFFFF0F0000FF0FFFFFFFFFFFFFF0FF0000FFF0
            FFFFFFFFFFFF0FFF0000FFFF0FF0FFFF0FF0FFFF0000FFFFF0F0FFFF0F0FFFFF
            0000FFFFFF00FFFF00FFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFFFFFFFF
            FFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FFFF
            FFFFFFFFFFFFFFFF0000FFFF0000FFFF0000FFFF0000FFFFFF00FFFF00FFFFFF
            0000FFFFF0F0FFFF0F0FFFFF0000FFFF0FF0FFFF0FF0FFFF0000FFF0FFFFFFFF
            FFFF0FFF0000FF0FFFFFFFFFFFFFF0FF0000F0FFFFFFFFFFFFFFFF0F0000FFFF
            FFFFFFFFFFFFFFFF0000}
          OnClick = S9C
        end
        object S1: TSpeedButton
          Left = 136
          Top = 11
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000010000000000000000000
            BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
            7777777777777777777777777777777777777777777777777777777777777777
            7777777777777778477777444447777748777744447777777477774447777777
            7477774474777777747777477744777748777777777744448777777777777777
            7777777777777777777777777777777777777777777777777777}
          OnClick = S1C
        end
        object Label2: TLabel
          Left = 7
          Top = 45
          Width = 121
          Height = 16
          Caption = 'x-Angle Rotation :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 7
          Top = 75
          Width = 122
          Height = 16
          Caption = 'y-Angle Rotation :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 7
          Top = 105
          Width = 121
          Height = 16
          Caption = 'z-Angle Rotation :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label1: TLabel
          Left = 16
          Top = 14
          Width = 35
          Height = 14
          Caption = 'Size :'
        end
        object Label5: TLabel
          Left = 7
          Top = 135
          Width = 93
          Height = 14
          Caption = 'Side surfaces :'
        end
        object Label6: TLabel
          Left = 7
          Top = 165
          Width = 83
          Height = 14
          Caption = 'Pyramids % :'
        end
        object Button1: TButton
          Left = 8
          Top = 194
          Width = 87
          Height = 25
          Caption = 'Deformation'
          TabOrder = 0
          TabStop = False
          OnClick = D3C
        end
        object SpinEdit1: TSpinEdit
          Left = 136
          Top = 44
          Width = 50
          Height = 23
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          MaxValue = 15
          MinValue = -15
          ParentFont = False
          TabOrder = 1
          Value = 1
          OnChange = T3C
        end
        object SpinEdit2: TSpinEdit
          Left = 136
          Top = 74
          Width = 50
          Height = 23
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          MaxValue = 15
          MinValue = -15
          ParentFont = False
          TabOrder = 2
          Value = 0
          OnChange = T3C
        end
        object SpinEdit3: TSpinEdit
          Left = 136
          Top = 104
          Width = 50
          Height = 23
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          MaxValue = 15
          MinValue = -15
          ParentFont = False
          TabOrder = 3
          Value = 0
          OnChange = T3C
        end
        object Rx1: TSpinEdit
          Left = 136
          Top = 134
          Width = 50
          Height = 23
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          MaxValue = 15
          MinValue = 1
          ParentFont = False
          TabOrder = 4
          Value = 1
          OnChange = Rx1Change
        end
        object Rx2: TSpinEdit
          Left = 136
          Top = 164
          Width = 50
          Height = 23
          TabStop = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'Verdana'
          Font.Style = []
          MaxValue = 50
          MinValue = 1
          ParentFont = False
          TabOrder = 5
          Value = 50
          OnChange = Rx2Change
        end
        object Button2: TButton
          Left = 104
          Top = 194
          Width = 87
          Height = 25
          Caption = 'Rotation'
          TabOrder = 6
          TabStop = False
          OnClick = B2C
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 222
        Width = 200
        Height = 120
        Align = alTop
        BevelOuter = bvNone
        Color = 15790320
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object CB2: TCheckBox
          Left = 16
          Top = 42
          Width = 153
          Height = 17
          TabStop = False
          Caption = 'Highlight points'
          TabOrder = 0
          OnClick = CB2C
        end
        object R5: TRadioButton
          Left = 16
          Top = 64
          Width = 113
          Height = 17
          Caption = 'Edge model'
          TabOrder = 1
          OnClick = zeichnen
        end
        object R2: TRadioButton
          Left = 16
          Top = 80
          Width = 137
          Height = 17
          Caption = 'hidden edges'
          TabOrder = 2
          OnClick = zeichnen
        end
        object R4: TRadioButton
          Left = 16
          Top = 96
          Width = 113
          Height = 17
          Caption = 'colorful surfaces'
          Checked = True
          TabOrder = 3
          TabStop = True
          OnClick = zeichnen
        end
        object Button3: TButton
          Left = 48
          Top = 8
          Width = 89
          Height = 25
          Caption = 'Save'
          TabOrder = 4
          TabStop = False
          OnClick = Button3Click
        end
      end
      object LB1: TListBox
        Left = 8
        Top = 342
        Width = 192
        Height = 336
        Align = alClient
        BorderStyle = bsNone
        Color = 15790320
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        IntegralHeight = True
        ItemHeight = 14
        Items.Strings = (
          'Beveled dodecahedron'#9'4006'
          'Beveled hexahedron'#9'4005'
          'Cuboctahedron'#9'4001'
          'Deltoid-24 surface'#9'4019'
          'Deltoid-60 surface'#9'4020'
          'Hexahedron, cube'#9'2'
          'Icosahedron stump'#9'4007'
          'Icosahedron'#9'4'
          'Icosidodecahedron'#9'4002'
          'Octahedron'#9'3'
          'Pentagon-24-sided'#9'4023'
          'Pentagon-60-square'#9'4024'
          'Pentagonal dodecahedron'#9'5'
          'Rhombenicosidodecahedron'#9'4003'
          'Rhombic dodecahedron'#9'4018'
          'Rhombicuboctahedron'#9'4004'
          'Rhombus-30-sided'#9'4021'
          'Tetrahedron'#9'1'
          'Truncated cuboctahedron'#9'4009'
          'Truncated dodecahedron'#9'4013'
          'Truncated hexahedron'#9'4010'
          'Truncated icosidodecahedron'#9'4008'
          'Truncated octahedron'#9'4011'
          'Truncated tetrahedron'#9'4012')
        ParentFont = False
        Sorted = True
        TabOrder = 2
        TabWidth = 200
        OnClick = LB1C
      end
      object Panel1: TPanel
        Left = 0
        Top = 342
        Width = 8
        Height = 348
        Align = alLeft
        BevelOuter = bvNone
        Color = 15790320
        TabOrder = 3
      end
    end
    object Panel2: TPanel
      Left = 200
      Top = 0
      Width = 694
      Height = 690
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 1
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 694
        Height = 690
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        object PB1: TPaintBox
          Left = 0
          Top = 0
          Width = 694
          Height = 690
          Cursor = crHandPoint
          Align = alClient
          OnMouseDown = PB1MD
          OnMouseMove = PB1MM
          OnMouseUp = PB1MU
          OnPaint = B1C
        end
      end
    end
  end
  object Timer1: TTimer
    Interval = 0
    OnTimer = Timer1Timer
    Left = 248
    Top = 30
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 20
    OnTimer = Timer2Timer
    Left = 216
    Top = 24
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Bitmap (*.bmp)|*.bmp'
    Left = 296
    Top = 32
  end
end
