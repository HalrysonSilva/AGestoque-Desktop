object SelectProduto: TSelectProduto
  Left = 0
  Top = 0
  Caption = 'Produtos'
  ClientHeight = 561
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI Semibold'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object Label2: TLabel
    Left = 0
    Top = 89
    Width = 784
    Height = 17
    Align = alTop
    Alignment = taCenter
    Caption = 'Selecione o Produto'
    ExplicitWidth = 122
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 12
      Width = 112
      Height = 17
      Caption = 'Pesquisar Produto'
    end
    object Editselectproduto: TEdit
      Left = 16
      Top = 39
      Width = 513
      Height = 38
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = EditselectprodutoChange
      OnKeyDown = EditselectprodutoKeyDown
    end
  end
  object DBGridprodutos: TDBGrid
    Left = 0
    Top = 106
    Width = 784
    Height = 455
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
