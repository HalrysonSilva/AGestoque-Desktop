object Formposicaoest: TFormposicaoest
  Left = 0
  Top = 0
  Caption = 'Formposicaoest'
  ClientHeight = 632
  ClientWidth = 835
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI Semibold'
  Font.Style = [fsBold]
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 835
    Height = 297
    Align = alTop
    TabOrder = 0
    ExplicitTop = -6
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 833
      Height = 30
      Align = alTop
      Alignment = taCenter
      Caption = 'Produtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = -2
    end
    object DBGridprodutos: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 34
      Width = 827
      Height = 259
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Segoe UI Semibold'
      TitleFont.Style = [fsBold]
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 297
    Width = 835
    Height = 335
    Align = alClient
    TabOrder = 1
    ExplicitLeft = -1
    ExplicitTop = 299
    object Label2: TLabel
      Left = 1
      Top = 1
      Width = 833
      Height = 30
      Align = alTop
      Alignment = taCenter
      Caption = 'Pedidos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 75
    end
    object DBGridpedidos: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 34
      Width = 827
      Height = 297
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Segoe UI Semibold'
      TitleFont.Style = [fsBold]
    end
  end
  object QRYPRODUTOSABERTOS: TUniQuery
    Connection = DataModule1.ConDados
    SQL.Strings = (
      'SELECT '
      '    B.LkProduto AS LkProduto, '
      '    P.CodInterno, '
      '    P.Produto, '
      '    P.CodBarra, '
      '    P.CodFornecedor,'
      '    P.Moeda AS Localizacao, '
      '    G.Setor AS Grupo, '
      '    P.Fabricante AS Marca, '
      '    F.Empresa AS Fornecedor, '
      '    P.Quantidade AS QtdEstoque, '
      '    CAST(SUM(B.Qtdreal) AS NUMERIC(12, 2)) AS QtdReserva, '
      '    COUNT(DISTINCT A.Pedido) AS NumPedidos '
      'FROM TabEst3B B WITH (NOLOCK) '
      'INNER JOIN TabEst3A A WITH (NOLOCK) ON A.Pedido = B.PEDIDO '
      'INNER JOIN TABEST1 P WITH (NOLOCK) ON P.Controle = B.LkProduto '
      'LEFT JOIN TabEst8 G WITH (NOLOCK) ON P.LkSetor = G.Controle '
      'LEFT JOIN TabFor F WITH (NOLOCK) ON P.LkFornec = F.Controle '
      'WHERE A.Cancelada <> 1 '
      '  AND A.VENDA <> 1 '
      '  AND A.STATUS ='#39'P'#39' '
      'GROUP BY '
      '    B.LkProduto, '
      '    P.CodInterno, '
      '    P.Produto, '
      '    P.Quantidade, '
      '    P.CodFornecedor, '
      '    P.Moeda, '
      '    G.Setor, '
      '    P.Fabricante, '
      '    F.Empresa, '
      '    P.CodBarra '
      'ORDER BY '
      '    P.Produto')
    AfterClose = QRYPRODUTOSABERTOSAfterClose
    AfterScroll = QRYPRODUTOSABERTOSAfterScroll
    Left = 29
    Top = 96
  end
  object DSQRYPRODUTOSABERTOS: TDataSource
    DataSet = QRYPRODUTOSABERTOS
    Left = 37
    Top = 160
  end
end
