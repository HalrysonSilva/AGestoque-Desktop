object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 703
  Width = 1030
  object ConDados: TUniConnection
    ProviderName = 'SQL Server'
    Port = 1433
    Database = 'Servsic'
    Username = 'sa'
    Server = '.\base'
    ConnectDialog = UniConnectDialog1
    LoginPrompt = False
    Left = 40
    Top = 16
    EncryptedPassword = 'CEFFCDFFCCFF'
  end
  object UniSQLMonitor1: TUniSQLMonitor
    Left = 40
    Top = 144
  end
  object SQLServerUniProvider1: TSQLServerUniProvider
    Left = 40
    Top = 200
  end
  object UniConnectDialog1: TUniConnectDialog
    DatabaseLabel = 'Database'
    PortLabel = 'Port'
    ProviderLabel = 'Provider'
    Caption = 'Connect'
    UsernameLabel = 'User Name'
    PasswordLabel = 'Password'
    ServerLabel = 'Server'
    ConnectButton = 'Connect'
    CancelButton = 'Cancel'
    Left = 40
    Top = 72
  end
  object QRYUPDATE: TUniQuery
    Connection = ConDados
    Left = 40
    Top = 264
  end
  object QRYCRIATABELAS: TUniQuery
    Connection = ConDados
    SQL.Strings = (
      '-- Usa GO como separador de lote'
      ''
      '-- ######################################################'
      '-- 1. CRIA'#199#195'O CONDICIONAL DA TABELA DE CABE'#199'ALHO'
      '-- ######################################################'
      'IF OBJECT_ID('#39'TAB_HIS_AJUSTE_CAB'#39', '#39'U'#39') IS NULL'
      'BEGIN'
      '    PRINT '#39'Criando tabela: TAB_HIS_AJUSTE_CAB'#39';'
      ''
      '    CREATE TABLE TAB_HIS_AJUSTE_CAB ('
      '        NUMRELATORIO INT PRIMARY KEY IDENTITY(1,1), '
      '        DATA_AJUSTE DATETIME NOT NULL DEFAULT GETDATE(), '
      '        USUARIO VARCHAR(50) NOT NULL, '
      '        '
      '        -- CAMPO DE CONTROLE'
      '        LKUSUARIO INT NOT NULL,'
      '        '
      '        TOTAL_CUSTO_DIF MONEY NULL,'
      '        '
      '        -- FILTROS'
      '        PERIODO_INICIO DATE NULL,'
      '        PERIODO_FIM DATE NULL,'
      '        GRUPO_FILTRO VARCHAR(50) NULL,'
      '        MARCA_FILTRO VARCHAR(50) NULL, '
      '        FORNECEDOR_FILTRO VARCHAR(100) NULL,'
      '        LOCALIZACAO_FILTRO VARCHAR(50) NULL'
      '    );'
      'END'
      'ELSE'
      'BEGIN'
      '    PRINT '#39'TAB_HIS_AJUSTE_CAB j'#225' existe. Cria'#231#227'o ignorada.'#39';'
      'END'
      'GO'
      ''
      '-- ######################################################'
      '-- 2. CRIA'#199#195'O CONDICIONAL DA TABELA DE ITENS'
      '-- ######################################################'
      'IF OBJECT_ID('#39'TAB_HIS_AJUSTE_ITENS'#39', '#39'U'#39') IS NULL'
      'BEGIN'
      '    PRINT '#39'Criando tabela: TAB_HIS_AJUSTE_ITENS'#39';'
      ''
      '    CREATE TABLE TAB_HIS_AJUSTE_ITENS ('
      '        ID_ITEM INT PRIMARY KEY IDENTITY(1,1),'
      '        NUMRELATORIO INT NOT NULL, '
      '        CODINTERNO VARCHAR(20) NOT NULL, '
      '        PRODUTO_DESCRICAO VARCHAR(100) NULL,'
      '        '
      '        -- CAMPOS DETALHADOS DO ITEM (DO CDSPRODUTOS)'
      '        GRUPO VARCHAR(50) NULL,'
      '        MARCA VARCHAR(50) NULL,'
      '        FORNECEDOR VARCHAR(100) NULL,'
      '        CODFORNECEDOR VARCHAR(20) NULL,'
      '        CODBARRA VARCHAR(20) NULL,'
      '        QTD_VENDIDA FLOAT NULL,'
      '        LOCALIZACAO VARCHAR(50) NULL,'
      '        CUSTO_TOTAL MONEY NULL,'
      ''
      '        ESTOQUE_ANTERIOR FLOAT NOT NULL, '
      '        CONTAGEM_FINAL FLOAT NOT NULL, '
      '        DIFERENCA FLOAT NOT NULL, '
      '        PRECO_CUSTO MONEY NULL,'
      '        VALOR_DIFERENCA MONEY NULL'
      '    );'
      'END'
      'ELSE'
      'BEGIN'
      '    PRINT '#39'TAB_HIS_AJUSTE_ITENS j'#225' existe. Cria'#231#227'o ignorada.'#39';'
      'END'
      'GO'
      ''
      '-- ######################################################'
      '-- 3. CRIA'#199#195'O CONDICIONAL DA CHAVE ESTRANGEIRA (FK)'
      '-- ######################################################'
      
        '-- A FK s'#243' pode ser criada se ambas as tabelas existirem e a FK ' +
        'n'#227'o existir'
      'IF OBJECT_ID('#39'TAB_HIS_AJUSTE_CAB'#39', '#39'U'#39') IS NOT NULL AND '
      '   OBJECT_ID('#39'TAB_HIS_AJUSTE_ITENS'#39', '#39'U'#39') IS NOT NULL AND'
      
        '   NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE name = '#39'FK_A' +
        'JUSTE_CAB'#39' AND parent_object_id = OBJECT_ID('#39'TAB_HIS_AJUSTE_ITEN' +
        'S'#39'))'
      'BEGIN'
      '    PRINT '#39'Criando Chave Estrangeira: FK_AJUSTE_CAB'#39';'
      '    '
      '    ALTER TABLE TAB_HIS_AJUSTE_ITENS'
      '    ADD CONSTRAINT FK_AJUSTE_CAB'
      '    FOREIGN KEY (NUMRELATORIO)'
      '    REFERENCES TAB_HIS_AJUSTE_CAB(NUMRELATORIO);'
      'END'
      'ELSE'
      'BEGIN'
      
        '    PRINT '#39'Chave Estrangeira FK_AJUSTE_CAB j'#225' existe ou tabelas ' +
        'n'#227'o est'#227'o prontas. Cria'#231#227'o ignorada.'#39';'
      'END'
      'GO'
      ''
      ''
      'ALTER TABLE TAB_HIS_AJUSTE_CAB'
      'ADD STATUS BIT NULL; '
      '-- Use BIT para True/False. Se preferir 0/1, BIT '#233' ideal.')
    Left = 40
    Top = 328
  end
  object QRYSEQ: TUniQuery
    Connection = ConDados
    SQL.Strings = (
      'SELECT ISNULL(MAX(NUMRELATORIO), 0) + 1 FROM TAB_HIS_AJUSTE_CAB')
    Left = 40
    Top = 408
  end
  object QRYHIS_CAB: TUniQuery
    Connection = ConDados
    SQL.Strings = (
      'INSERT INTO TAB_HIS_AJUSTE_CAB ('
      '    DATA_AJUSTE, '
      '    USUARIO, '
      '    TOTAL_CUSTO_DIF,'
      '    PERIODO_INICIO,'
      '    PERIODO_FIM,'
      '    GRUPO_FILTRO'
      ')'
      'VALUES ('
      '    :Data, '
      '    :Usuario, '
      '    :TotalCustoDif,'
      '    :DataInicio,'
      '    :DataFim,'
      '    :Grupo'
      ');'
      'SELECT SCOPE_IDENTITY() AS NovoNum;')
    Left = 40
    Top = 472
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Data'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Usuario'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TotalCustoDif'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DataInicio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DataFim'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Grupo'
        Value = nil
      end>
  end
  object QRYHIS_ITENS: TUniQuery
    Connection = ConDados
    SQL.Strings = (
      'INSERT INTO TAB_HIS_AJUSTE_ITENS ('
      '    NUMRELATORIO, '
      '    CODINTERNO, '
      '    PRODUTO_DESCRICAO,'
      '    ESTOQUE_ANTERIOR, '
      '    CONTAGEM_FINAL, '
      '    DIFERENCA, '
      '    PRECO_CUSTO,'
      '    VALOR_DIFERENCA,'
      '    -- NOVOS CAMPOS ADICIONADOS:'
      '    PRODUTO_GRUPO,'
      '    PRODUTO_MARCA,'
      '    PRODUTO_FORNECEDOR,'
      '    CODIGO_BARRA,'
      '    CUSTO_TOTAL_ESTOQUE,'
      '    QTD_VENDIDA'
      ')'
      'VALUES ('
      '    :NumRelatorio, '
      '    :CodInterno, '
      '    :Descricao,'
      '    :EstAnterior, '
      '    :Contagem, '
      '    :Diferenca, '
      '    :PrecoCusto,'
      '    :ValorDiferenca,'
      '    -- NOVOS PAR'#194'METROS:'
      '    :Grupo,'
      '    :Marca,'
      '    :Fornecedor,'
      '    :CodBarra,'
      '    :CustoTotal,'
      '    :QtdVendida'
      ')')
    Left = 40
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NumRelatorio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CodInterno'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Descricao'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'EstAnterior'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Contagem'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Diferenca'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PrecoCusto'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ValorDiferenca'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Grupo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Marca'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Fornecedor'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CodBarra'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CustoTotal'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'QtdVendida'
        Value = nil
      end>
  end
  object CDSPRODUTOS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 145
    Top = 135
    object CDSPRODUTOSCodInterno: TStringField
      FieldName = 'CodInterno'
    end
    object CDSPRODUTOSProduto: TStringField
      FieldName = 'Produto'
      Size = 255
    end
    object CDSPRODUTOSGrupo: TStringField
      FieldName = 'Grupo'
      Size = 50
    end
    object CDSPRODUTOSMarca: TStringField
      FieldName = 'Marca'
      Size = 50
    end
    object CDSPRODUTOSFornecedor: TStringField
      FieldName = 'Fornecedor'
      Size = 50
    end
    object CDSPRODUTOSPeriodo: TStringField
      FieldName = 'Periodo'
      Size = 80
    end
    object CDSPRODUTOSLocalizacao: TStringField
      FieldName = 'Localizacao'
      Size = 50
    end
    object CDSPRODUTOSprecocusto: TCurrencyField
      FieldName = 'precocusto'
    end
    object CDSPRODUTOScustototal: TCurrencyField
      FieldName = 'custototal'
    end
    object CDSPRODUTOSCodFornecedor: TStringField
      FieldName = 'CodFornecedor'
      Size = 50
    end
    object CDSPRODUTOSValorDiferenca: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ValorDiferenca'
      Calculated = True
    end
    object CDSPRODUTOSEstoque: TFloatField
      FieldName = 'Estoque'
    end
    object CDSPRODUTOSCodbarra: TStringField
      FieldName = 'Codbarra'
      Size = 30
    end
    object CDSPRODUTOSQuantidadeVendida: TFloatField
      FieldName = 'QuantidadeVendida'
    end
    object CDSPRODUTOSContagem: TFloatField
      FieldName = 'Contagem'
    end
    object CDSPRODUTOSDiferenca: TFloatField
      FieldName = 'Diferenca'
    end
    object CDSPRODUTOSID_ORDEM: TIntegerField
      FieldName = 'ID_ORDEM'
    end
  end
  object DSCDSPRODUTOS: TDataSource
    DataSet = CDSPRODUTOS
    Left = 145
    Top = 191
  end
  object DSCDSTOTAIS: TDataSource
    DataSet = CDSTOTAIS
    Left = 145
    Top = 256
  end
  object CDSTOTAIS: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 318
    object CDSTOTAISTOTALCUSTO: TCurrencyField
      FieldName = 'TOTALCUSTO'
    end
    object CDSTOTAISTOTALDIFERENCA: TCurrencyField
      FieldName = 'TOTALDIFERENCA'
    end
  end
  object QRYPRODUTOSBASE: TUniQuery
    Connection = ConDados
    Left = 232
    Top = 18
  end
  object DSQRYPRODUTOSBASE: TDataSource
    DataSet = QRYPRODUTOSBASE
    Left = 229
    Top = 82
  end
  object qryTabest1mov: TUniQuery
    Connection = ConDados
    SQL.Strings = (
      'SELECT'
      '    Data,'
      '    LkOperacao,'
      '    LkUsuario,'
      '    -- Campos de Saldo/Quantidade com aliases claros'
      
        '    Quantidade AS [Qtd. Movimentada], -- Volume de entrada/sa'#237'da' +
        ' (a diferen'#231'a)'
      '    SaldoAnterior AS [Estoque Anterior],'
      '    Saldo AS [Estoque Atualizado],'
      '    '
      '    -- Outras colunas'
      '    LkItem,'
      '    CodInterno,'
      '    Terminal,'
      '    Hora,pedido '
      '    -- Adicione aqui quaisquer outras colunas necess'#225'rias'
      'FROM'
      '    TabEst1Mov '
      'WHERE'
      '    CodInterno = :sCodInterno '
      'ORDER BY'
      '    Data DESC')
    ReadOnly = True
    Left = 246
    Top = 259
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sCodInterno'
        Value = nil
      end>
  end
  object DSqryTabest1mov: TDataSource
    DataSet = qryTabest1mov
    Left = 240
    Top = 320
  end
  object QRYPRODUTOSCONTADOS: TUniQuery
    Connection = ConDados
    SQL.Strings = (
      'SELECT *'
      'FROM'
      '    TAB_HIS_AJUSTE_ITENS'
      'WHERE'
      '    NUMRELATORIO = :pNUMRELATORIO -- <--- Par'#226'metro de filtro'
      'ORDER BY'
      '    CODINTERNO')
    Left = 373
    Top = 234
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pNUMRELATORIO'
        Value = Null
      end>
    object QRYPRODUTOSCONTADOSID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      ReadOnly = True
      Required = True
    end
    object QRYPRODUTOSCONTADOSNUMRELATORIO: TIntegerField
      FieldName = 'NUMRELATORIO'
      Required = True
    end
    object QRYPRODUTOSCONTADOSCODINTERNO: TStringField
      FieldName = 'CODINTERNO'
      Required = True
    end
    object QRYPRODUTOSCONTADOSPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Size = 100
    end
    object QRYPRODUTOSCONTADOSGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 50
    end
    object QRYPRODUTOSCONTADOSMARCA: TStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object QRYPRODUTOSCONTADOSFORNECEDOR: TStringField
      FieldName = 'FORNECEDOR'
      Size = 100
    end
    object QRYPRODUTOSCONTADOSCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
    end
    object QRYPRODUTOSCONTADOSCODBARRA: TStringField
      FieldName = 'CODBARRA'
    end
    object QRYPRODUTOSCONTADOSQTD_VENDIDA: TFloatField
      FieldName = 'QTD_VENDIDA'
    end
    object QRYPRODUTOSCONTADOSLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 50
    end
    object QRYPRODUTOSCONTADOSCUSTO_TOTAL: TCurrencyField
      FieldName = 'CUSTO_TOTAL'
    end
    object QRYPRODUTOSCONTADOSESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
      Required = True
    end
    object QRYPRODUTOSCONTADOSCONTAGEM_FINAL: TFloatField
      FieldName = 'CONTAGEM_FINAL'
      Required = True
    end
    object QRYPRODUTOSCONTADOSDIFERENCA: TFloatField
      FieldName = 'DIFERENCA'
      Required = True
    end
    object QRYPRODUTOSCONTADOSPRECO_CUSTO: TCurrencyField
      FieldName = 'PRECO_CUSTO'
    end
    object QRYPRODUTOSCONTADOSVALOR_DIFERENCA: TCurrencyField
      FieldName = 'VALOR_DIFERENCA'
    end
  end
  object QRYPEDIDOS: TUniQuery
    Connection = ConDados
    SQL.Strings = (
      'SELECT '
      '    A.*, '
      '    B.Qtdreal AS QuantidadeItem,'
      '    CASE '
      '        WHEN A.STATUS = '#39'P'#39' THEN '#39'PR'#201'-VENDA'#39' '
      '        WHEN A.STATUS = '#39'O'#39' THEN '#39'OR'#199'AMENTO'#39' '
      '        ELSE '#39'OUTROS'#39' '
      '    END AS Situacao'
      'FROM '
      '    TabEst3A A WITH (NOLOCK)'
      'INNER JOIN '
      '    TabEst3B B WITH (NOLOCK) ON A.Pedido = B.PEDIDO'
      'WHERE '
      '    A.Data >= :DataInicio AND A.Data <= :DataFim '
      '    AND A.Cancelada <> 1 '
      '    AND A.VENDA <> 1 '
      '    AND A.STATUS ='#39'P'#39' '
      
        '    AND B.codinterno = :LkProduto -- CHAVE MESTRE: ID do produto' +
        ' selecionado em QRYPRODUTOSABERTOS'
      'ORDER BY '
      '    A.Pedido DESC')
    Left = 133
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DataInicio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DataFim'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LkProduto'
        Value = nil
      end>
  end
  object DSQRYPEDIDOS: TDataSource
    DataSet = QRYPEDIDOS
    Left = 133
    Top = 448
  end
  object DSQRYPRODUTOSCONTADOS: TDataSource
    DataSet = QRYPRODUTOSCONTADOS
    Left = 373
    Top = 298
  end
  object QRYITENSHIST: TUniQuery
    Connection = ConDados
    SQL.Strings = (
      'SELECT'
      '  ID_ITEM,'
      '  NUMRELATORIO,'
      '  CODINTERNO,'
      '  PRODUTO_DESCRICAO,'
      '  ESTOQUE_ANTERIOR,'
      '  CONTAGEM_FINAL,'
      '  DIFERENCA,'
      '  PRECO_CUSTO,'
      '  VALOR_DIFERENCA,'
      '  GRUPO,'
      '  MARCA,'
      '  FORNECEDOR,'
      '  CODFORNECEDOR,       -- '#9989' Campo adicionado'
      '  CODBARRA,'
      '  CUSTO_TOTAL,'
      '  QTD_VENDIDA,'
      '  LOCALIZACAO'
      'FROM'
      '  TAB_HIS_AJUSTE_ITENS'
      'WHERE'
      '  NUMRELATORIO = :NumRelatorio'
      'ORDER BY'
      '  GRUPO, MARCA, PRODUTO_DESCRICAO;')
    Left = 237
    Top = 399
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NumRelatorio'
        Value = Null
      end>
  end
  object DSQRYITENSHIST: TDataSource
    DataSet = QRYITENSHIST
    Left = 237
    Top = 463
  end
  object QRYMARCA: TUniQuery
    Connection = ConDados
    SQL.Strings = (
      'SELECT DISTINCT'
      '    FABRICANTE'
      'FROM'
      '    tabest1'
      'WHERE'
      '    FABRICANTE IS NOT NULL'
      '    AND FABRICANTE <> '#39#39
      'ORDER BY'
      '    FABRICANTE;')
    Left = 945
    Top = 161
  end
  object QRYGRUPOS: TUniQuery
    Connection = ConDados
    SQL.Strings = (
      'SELECT Controle, Setor FROM tabest8 ORDER BY Setor;')
    Left = 945
    Top = 97
  end
  object QRYFORNECEDOR: TUniQuery
    Connection = ConDados
    SQL.Strings = (
      'SELECT'
      '    Controle,'
      '    Empresa'
      'FROM'
      '    tabfor'
      'ORDER BY'
      '    Empresa;')
    Left = 945
    Top = 33
  end
  object QRYUPDATETABEST1: TUniQuery
    Connection = ConDados
    Left = 357
    Top = 19
  end
  object QRYUPDATETABESTMOV: TUniQuery
    Connection = ConDados
    Left = 357
    Top = 83
  end
  object QryBuscaLkItem: TUniQuery
    Connection = ConDados
    Left = 357
    Top = 152
  end
  object DBPRODUTOS: TfrxDBDataset
    UserName = 'cdsprodutos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_ITEM=ID_ITEM'
      'NUMRELATORIO=NUMRELATORIO'
      'CODINTERNO=CodInterno'
      'PRODUTO_DESCRICAO=PRODUTO_DESCRICAO'
      'GRUPO=Grupo'
      'MARCA=Marca'
      'FORNECEDOR=Fornecedor'
      'CODFORNECEDOR=CodFornecedor'
      'CODBARRA=Codbarra'
      'QTD_VENDIDA=QTD_VENDIDA'
      'LOCALIZACAO=Localizacao'
      'CUSTO_TOTAL=CUSTO_TOTAL'
      'ESTOQUE_ANTERIOR=ESTOQUE_ANTERIOR'
      'CONTAGEM_FINAL=CONTAGEM_FINAL'
      'DIFERENCA=Diferenca'
      'PRECO_CUSTO=PRECO_CUSTO'
      'VALOR_DIFERENCA=VALOR_DIFERENCA')
    BCDToCurrency = False
    Left = 944
    Top = 240
  end
  object DBTOTAIS: TfrxDBDataset
    UserName = 'CDSTOTAIS'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TOTALCUSTO=TOTALCUSTO'
      'TOTALDIFERENCA=TOTALDIFERENCA')
    BCDToCurrency = False
    Left = 944
    Top = 304
  end
  object frxDBCAB: TfrxDBDataset
    UserName = 'CAB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NUMRELATORIO=NUMRELATORIO'
      'DATA_AJUSTE=DATA_AJUSTE'
      'USUARIO=USUARIO'
      'LKUSUARIO=LKUSUARIO'
      'TOTAL_CUSTO_DIF=TOTAL_CUSTO_DIF'
      'PERIODO_INICIO=PERIODO_INICIO'
      'PERIODO_FIM=PERIODO_FIM'
      'GRUPO_FILTRO=GRUPO_FILTRO'
      'MARCA_FILTRO=MARCA_FILTRO'
      'FORNECEDOR_FILTRO=FORNECEDOR_FILTRO'
      'LOCALIZACAO_FILTRO=LOCALIZACAO_FILTRO'
      'STATUS=STATUS')
    BCDToCurrency = False
    Left = 944
    Top = 376
  end
  object frxRelatorio: TfrxReport
    Version = '6.4.13'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45909.508089456000000000
    ReportOptions.LastChange = 45961.391159166670000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 944
    Top = 448
    Datasets = <>
    Variables = <
      item
        Name = ' valortotal'
        Value = Null
      end
      item
        Name = 'ValorTotalRelatorio'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      HGuides.Strings = (
        '153,50')
      VGuides.Strings = (
        '102,04731'
        '113,3859')
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 161.059060000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = DBPRODUTOS
        DataSetName = 'cdsprodutos'
        RowCount = 0
        object frxDBDataset1Produto: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 20.358380000000000000
          Width = 604.724800000000000000
          Height = 18.897635350000000000
          DataField = 'PRODUTO_DESCRICAO'
          DataSet = DBPRODUTOS
          DataSetName = 'cdsprodutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[cdsprodutos."PRODUTO_DESCRICAO"]')
          ParentFont = False
        end
        object frxDBDataset1CodInterno: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Top = 20.358380000000000000
          Width = 113.385900000000000000
          Height = 17.007874020000000000
          DataField = 'Codbarra'
          DataSet = DBPRODUTOS
          DataSetName = 'cdsprodutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[cdsprodutos."Codbarra"]')
          ParentFont = False
        end
        object frxDBDataset1QuantidadeVendida: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 46.815090000000000000
          Width = 90.708720000000000000
          Height = 18.897637800000000000
          DataField = 'QTD_VENDIDA'
          DataSet = DBPRODUTOS
          DataSetName = 'cdsprodutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[cdsprodutos."QTD_VENDIDA"]')
          ParentFont = False
        end
        object frxDBDataset1Estoque: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 46.815090000000000000
          Width = 86.929190000000000000
          Height = 18.897637800000000000
          DataField = 'ESTOQUE_ANTERIOR'
          DataSet = DBPRODUTOS
          DataSetName = 'cdsprodutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[cdsprodutos."ESTOQUE_ANTERIOR"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 84.610390000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Grupo:')
          ParentFont = False
        end
        object frxDBDataset1Grupo: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 84.610390000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'Grupo'
          DataSet = DBPRODUTOS
          DataSetName = 'cdsprodutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[cdsprodutos."Grupo"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 103.508040000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Marca:')
          ParentFont = False
        end
        object frxDBDataset1Marca: TfrxMemoView
          IndexTag = 1
          Align = baLeft
          AllowVectorExport = True
          Left = 45.354360000000000000
          Top = 103.508040000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'Marca'
          DataSet = DBPRODUTOS
          DataSetName = 'cdsprodutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[cdsprodutos."Marca"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 129.964750000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fornecedor:')
          ParentFont = False
        end
        object frxDBDataset1Fornecedor: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 381.732530000000000000
          Top = 129.964750000000000000
          Width = 336.378170000000000000
          Height = 15.118120000000000000
          DataField = 'Fornecedor'
          DataSet = DBPRODUTOS
          DataSetName = 'cdsprodutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[cdsprodutos."Fornecedor"]')
          ParentFont = False
        end
        object cdsprodutosContagem: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 46.815090000000000000
          Width = 90.708720000000000000
          Height = 18.897637800000000000
          DataField = 'CONTAGEM_FINAL'
          DataSet = DBPRODUTOS
          DataSetName = 'cdsprodutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[cdsprodutos."CONTAGEM_FINAL"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 46.815090000000000000
          Width = 90.708720000000000000
          Height = 18.897637800000000000
          DataField = 'Diferenca'
          DataSet = DBPRODUTOS
          DataSetName = 'cdsprodutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[cdsprodutos."Diferenca"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 54.374150000000000000
          Width = 113.385900000000000000
          Height = 18.897635350000000000
          DataField = 'CodFornecedor'
          DataSet = DBPRODUTOS
          DataSetName = 'cdsprodutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[cdsprodutos."CodFornecedor"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Top = 126.185220000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Localiza'#231#227'o:')
          ParentFont = False
        end
        object cdsprodutosLocalizacao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 126.185220000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'Localizacao'
          DataSet = DBPRODUTOS
          DataSetName = 'cdsprodutos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[cdsprodutos."Localizacao"]')
          ParentFont = False
        end
        object cdsprodutosprecocusto: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 309.921547870000000000
          Top = 103.508040000000000000
          Width = 136.062992130000000000
          Height = 18.897637800000000000
          DataField = 'PRECO_CUSTO'
          DataSet = DBPRODUTOS
          DataSetName = 'cdsprodutos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[cdsprodutos."PRECO_CUSTO"]')
          ParentFont = False
        end
        object cdsprodutoscustototal: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 103.507996060000000000
          Width = 136.063080000000000000
          Height = 18.897637800000000000
          DataField = 'CUSTO_TOTAL'
          DataSet = DBPRODUTOS
          DataSetName = 'cdsprodutos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[cdsprodutos."CUSTO_TOTAL"]')
          ParentFont = False
        end
        object cdsprodutosValorDiferenca: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 103.507996060000000000
          Width = 136.063080000000000000
          Height = 18.897637800000000000
          DataField = 'VALOR_DIFERENCA'
          DataSet = DBPRODUTOS
          DataSetName = 'cdsprodutos'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[cdsprodutos."VALOR_DIFERENCA"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 153.500000000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo19: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 84.610390000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Pre'#231'o Custo:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 84.610390000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Custo:')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 582.047620000000000000
          Top = 84.610390000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Diferen'#231'a:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Width = 75.590600000000000000
          Height = 17.007874020000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo Barras')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Top = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 15.118107800000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'd Fornecedor')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 2.318800000000000000
          Width = 71.811070000000000000
          Height = 15.118107800000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 359.055350000000000000
          Width = 90.708720000000000000
          Height = 18.897637800000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qtd. Vendida')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 449.764070000000000000
          Width = 86.929190000000000000
          Height = 18.897637800000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Estoque atual')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 536.693260000000000000
          Width = 90.708720000000000000
          Height = 18.897637800000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Conferido')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Width = 90.708720000000000000
          Height = 18.897637800000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Diferen'#231'a')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Height = 127.043290000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = DBPRODUTOS
        DataSetName = 'cdsprodutos'
        RowCount = 0
        object Line2: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 119.484230000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          AllowExpressions = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clNavy
          HAlign = haCenter
          Memo.UTF8W = (
            'Contagem de Estoque')
          ParentFont = False
        end
        object frxDBDataset1Periodo: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 34.015770000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          DataSet = frxDBCAB
          DataSetName = 'CAB'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clScrollBar
          HAlign = haRight
          Memo.UTF8W = (
            'Periodo: [CAB."PERIODO_INICIO"] a [CAB."PERIODO_FIM"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baLeft
          AllowVectorExport = True
          Top = 96.807050000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Estoquista:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Top = 64.252010000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relatorio:')
          ParentFont = False
        end
        object CDSTOTAISNUMRELATORIO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 64.252010000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'NUMRELATORIO'
          DataSet = frxDBCAB
          DataSetName = 'CAB'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[CAB."NUMRELATORIO"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Frame.Typ = []
        Height = 64.252010000000000000
        Top = 393.071120000000000000
        Width = 718.110700000000000000
        object CDSTOTAISTOTALCUSTO: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 340.157700000000000000
          Width = 377.953000000000000000
          Height = 26.456710000000000000
          AutoWidth = True
          DataSet = DBTOTAIS
          DataSetName = 'CDSTOTAIS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Custo: [CDSTOTAIS."TOTALCUSTO"]')
          ParentFont = False
        end
        object CDSTOTAISTOTALDIFERENCA: TfrxMemoView
          IndexTag = 1
          Align = baRight
          AllowVectorExport = True
          Left = 340.157700000000000000
          Top = 34.015770000000000000
          Width = 377.953000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          DataSet = DBTOTAIS
          DataSetName = 'CDSTOTAIS'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Diferen'#231'a: [CDSTOTAIS."TOTALDIFERENCA"]')
          ParentFont = False
        end
      end
    end
  end
  object QRYSELECIONAPRODUTOS: TUniQuery
    Connection = ConDados
    SQL.Strings = (
      'SELECT * from'
      'FROM TABEST1 '
      'WHERE CODIGO LIKE :Codigo '
      '   OR CODINTERNO LIKE :CodInterno '
      '   OR PRODUTO LIKE :Produto')
    Left = 520
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Codigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CodInterno'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Produto'
        Value = nil
      end>
  end
  object DSQRYSELECIONAPRODUTO: TDataSource
    DataSet = QRYSELECIONAPRODUTOS
    Left = 520
    Top = 80
  end
end
