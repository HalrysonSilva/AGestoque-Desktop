object SelectProduto: TSelectProduto
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 658
  ClientWidth = 945
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI Semibold'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object Label2: TLabel
    Left = 0
    Top = 89
    Width = 945
    Height = 17
    Align = alTop
    Alignment = taCenter
    Caption = 'Selecione o Produto'
    ExplicitWidth = 122
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 945
    Height = 89
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 784
    object Label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 937
      Height = 17
      Align = alTop
      Caption = 'Pesquisar Produto'
      ExplicitLeft = 16
      ExplicitTop = 12
      ExplicitWidth = 112
    end
    object Editselectproduto: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 27
      Width = 937
      Height = 33
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = EditselectprodutoChange
      OnKeyDown = EditselectprodutoKeyDown
      ExplicitLeft = 16
      ExplicitTop = 39
      ExplicitWidth = 521
    end
  end
  object DBGridprodutos: TDBGrid
    Left = 0
    Top = 106
    Width = 945
    Height = 552
    Align = alClient
    DataSource = DataModule1.DSQRYSELECIONAPRODUTO
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Segoe UI Semibold'
    TitleFont.Style = [fsBold]
    OnDblClick = DBGridprodutosDblClick
    OnKeyPress = DBGridprodutosKeyPress
  end
end
