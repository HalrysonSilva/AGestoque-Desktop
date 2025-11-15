object formmov: Tformmov
  Left = 0
  Top = 0
  Caption = 'formmov'
  ClientHeight = 726
  ClientWidth = 1164
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI Semibold'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 17
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1164
    Height = 726
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 392
    ExplicitTop = 200
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Labelprod: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 1156
      Height = 30
      Align = alTop
      Alignment = taCenter
      Caption = 'Produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 950
    end
    object DBGridmovestoque: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 40
      Width = 1156
      Height = 682
      Align = alClient
      DataSource = DataModule1.DSqryTabest1mov
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Segoe UI Semibold'
      TitleFont.Style = [fsBold]
    end
  end
end
