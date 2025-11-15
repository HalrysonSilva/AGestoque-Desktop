object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 703
  Width = 1030
  object ConDados: TUniConnection
    ProviderName = 'SQL Server'
    Port = 1433
    Database = 'SERVSIC'
    Username = 'sa'
    Server = '.\Compuserve'
    Connected = True
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
      '-- Use BIT para True/False. Se preferir 0/1, BIT '#233' ideal.'
      'SET IDENTITY_INSERT TabEstMovTipo ON;'
      ''
      '-- Insere o novo tipo de movimento com o valor expl'#237'cito 7'
      
        'INSERT INTO TabEstMovTipo (Controle, Tipo, LkOperacao, IdControl' +
        'e)'
      'VALUES (7, '#39'ALTERACAO DE PRECO'#39', 1, 7);'
      ''
      'SET IDENTITY_INSERT TabEstMovTipo OFF;'
      ''
      ''
      ''
      '-- 1. ADICIONA CUSTO E PRE'#199'O DE VENDA PRINCIPAL (VAREJO 1)'
      ''
      '-- Custo'
      'ALTER TABLE TabEst1Mov ADD PrecoCustoAnterior MONEY NULL;'
      'ALTER TABLE TabEst1Mov ADD PrecoCustoNovo MONEY NULL;'
      ''
      '-- Varejo 1 (PrecoVenda / Lucro)'
      'ALTER TABLE TabEst1Mov ADD PrecoVendaAnterior MONEY NULL;'
      'ALTER TABLE TabEst1Mov ADD PrecoVendaNovo MONEY NULL;'
      'ALTER TABLE TabEst1Mov ADD MargemVarejoAnterior FLOAT NULL;'
      'ALTER TABLE TabEst1Mov ADD MargemVarejoNova FLOAT NULL;'
      ''
      ''
      
        '-- 2. ADICIONA PRE'#199'OS E MARGENS VAREJO 2, 3 E 4 (PrPrazo, PrAtac' +
        'ado, PrMinimo)'
      ''
      '-- Varejo 2 (PrPrazo / PerPrazo)'
      'ALTER TABLE TabEst1Mov ADD PrPrazoAnterior MONEY NULL;'
      'ALTER TABLE TabEst1Mov ADD PrPrazoNovo MONEY NULL;'
      'ALTER TABLE TabEst1Mov ADD PerPrazoAnterior FLOAT NULL;'
      'ALTER TABLE TabEst1Mov ADD PerPrazoNovo FLOAT NULL;'
      ''
      '-- Varejo 3 (PrAtacado / PerAtacado)'
      'ALTER TABLE TabEst1Mov ADD PrAtacadoVarejoAnterior MONEY NULL;'
      'ALTER TABLE TabEst1Mov ADD PrAtacadoVarejoNovo MONEY NULL;'
      'ALTER TABLE TabEst1Mov ADD PerAtacadoVarejoAnterior FLOAT NULL;'
      'ALTER TABLE TabEst1Mov ADD PerAtacadoVarejoNovo FLOAT NULL;'
      ''
      '-- Varejo 4 (PrMinimo / PerMinimo)'
      'ALTER TABLE TabEst1Mov ADD PrMinimoAnterior MONEY NULL;'
      'ALTER TABLE TabEst1Mov ADD PrMinimoNovo MONEY NULL;'
      'ALTER TABLE TabEst1Mov ADD PerMinimoAnterior FLOAT NULL;'
      'ALTER TABLE TabEst1Mov ADD PerMinimoNovo FLOAT NULL;'
      ''
      ''
      '-- 3. ADICIONA PRE'#199'OS E MARGENS ATACADO 1, 2, 3 E 4'
      ''
      '-- Atacado 1 (PrAtacado1 / PerAtacado1)'
      'ALTER TABLE TabEst1Mov ADD PrAtacado1Anterior MONEY NULL;'
      'ALTER TABLE TabEst1Mov ADD PrAtacado1Novo MONEY NULL;'
      'ALTER TABLE TabEst1Mov ADD PerAtacado1Anterior FLOAT NULL;'
      'ALTER TABLE TabEst1Mov ADD PerAtacado1Novo FLOAT NULL;'
      ''
      '-- Atacado 2 (PrAtacado2 / PerAtacado2)'
      'ALTER TABLE TabEst1Mov ADD PrAtacado2Anterior MONEY NULL;'
      'ALTER TABLE TabEst1Mov ADD PrAtacado2Novo MONEY NULL;'
      'ALTER TABLE TabEst1Mov ADD PerAtacado2Anterior FLOAT NULL;'
      'ALTER TABLE TabEst1Mov ADD PerAtacado2Novo FLOAT NULL;'
      ''
      '-- Atacado 3 (PrAtacado3 / PerAtacado3)'
      'ALTER TABLE TabEst1Mov ADD PrAtacado3Anterior MONEY NULL;'
      'ALTER TABLE TabEst1Mov ADD PrAtacado3Novo MONEY NULL;'
      'ALTER TABLE TabEst1Mov ADD PerAtacado3Anterior FLOAT NULL;'
      'ALTER TABLE TabEst1Mov ADD PerAtacado3Novo FLOAT NULL;'
      ''
      '-- Atacado 4 (PrAtacado4 / PerAtacado4)'
      'ALTER TABLE TabEst1Mov ADD PrAtacado4Anterior MONEY NULL;'
      'ALTER TABLE TabEst1Mov ADD PrAtacado4Novo MONEY NULL;'
      'ALTER TABLE TabEst1Mov ADD PerAtacado4Anterior FLOAT NULL;'
      'ALTER TABLE TabEst1Mov ADD PerAtacado4Novo FLOAT NULL;'
      ''
      ''
      '')
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
    SQL.Strings = (
      '')
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
      'SELECT * from tabest1mov')
    ReadOnly = True
    Left = 238
    Top = 155
    object qryTabest1movidControle: TIntegerField
      FieldName = 'idControle'
      ReadOnly = True
      Required = True
    end
    object qryTabest1movIdEmpresa: TIntegerField
      FieldName = 'IdEmpresa'
    end
    object qryTabest1movData: TDateTimeField
      FieldName = 'Data'
    end
    object qryTabest1movPedido: TIntegerField
      FieldName = 'Pedido'
    end
    object qryTabest1movLkItem: TIntegerField
      FieldName = 'LkItem'
      Required = True
    end
    object qryTabest1movCodInterno: TStringField
      FieldName = 'CodInterno'
    end
    object qryTabest1movQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object qryTabest1movSaldoAnterior: TFloatField
      FieldName = 'SaldoAnterior'
    end
    object qryTabest1movSaldo: TFloatField
      FieldName = 'Saldo'
    end
    object qryTabest1movLkOperacao: TIntegerField
      FieldName = 'LkOperacao'
    end
    object qryTabest1movLkVarejo: TIntegerField
      FieldName = 'LkVarejo'
    end
    object qryTabest1movLkUsuario: TIntegerField
      FieldName = 'LkUsuario'
    end
    object qryTabest1movLkTipo: TIntegerField
      FieldName = 'LkTipo'
    end
    object qryTabest1movHora: TStringField
      FieldName = 'Hora'
      Size = 11
    end
    object qryTabest1movTerminal: TStringField
      FieldName = 'Terminal'
      Size = 30
    end
    object qryTabest1movLkCliFor: TIntegerField
      FieldName = 'LkCliFor'
    end
    object qryTabest1movPrecoCustoAnterior: TCurrencyField
      FieldName = 'PrecoCustoAnterior'
    end
    object qryTabest1movPrecoCustoNovo: TCurrencyField
      FieldName = 'PrecoCustoNovo'
    end
    object qryTabest1movPrecoVendaAnterior: TCurrencyField
      FieldName = 'PrecoVendaAnterior'
    end
    object qryTabest1movPrecoVendaNovo: TCurrencyField
      FieldName = 'PrecoVendaNovo'
    end
    object qryTabest1movMargemVarejoAnterior: TFloatField
      FieldName = 'MargemVarejoAnterior'
    end
    object qryTabest1movMargemVarejoNova: TFloatField
      FieldName = 'MargemVarejoNova'
    end
    object qryTabest1movPrPrazoAnterior: TCurrencyField
      FieldName = 'PrPrazoAnterior'
    end
    object qryTabest1movPrPrazoNovo: TCurrencyField
      FieldName = 'PrPrazoNovo'
    end
    object qryTabest1movPerPrazoAnterior: TFloatField
      FieldName = 'PerPrazoAnterior'
    end
    object qryTabest1movPerPrazoNovo: TFloatField
      FieldName = 'PerPrazoNovo'
    end
    object qryTabest1movPrAtacadoVarejoAnterior: TCurrencyField
      FieldName = 'PrAtacadoVarejoAnterior'
    end
    object qryTabest1movPrAtacadoVarejoNovo: TCurrencyField
      FieldName = 'PrAtacadoVarejoNovo'
    end
    object qryTabest1movPerAtacadoVarejoAnterior: TFloatField
      FieldName = 'PerAtacadoVarejoAnterior'
    end
    object qryTabest1movPerAtacadoVarejoNovo: TFloatField
      FieldName = 'PerAtacadoVarejoNovo'
    end
    object qryTabest1movPrMinimoAnterior: TCurrencyField
      FieldName = 'PrMinimoAnterior'
    end
    object qryTabest1movPrMinimoNovo: TCurrencyField
      FieldName = 'PrMinimoNovo'
    end
    object qryTabest1movPerMinimoAnterior: TFloatField
      FieldName = 'PerMinimoAnterior'
    end
    object qryTabest1movPerMinimoNovo: TFloatField
      FieldName = 'PerMinimoNovo'
    end
    object qryTabest1movPrAtacado1Anterior: TCurrencyField
      FieldName = 'PrAtacado1Anterior'
    end
    object qryTabest1movPrAtacado1Novo: TCurrencyField
      FieldName = 'PrAtacado1Novo'
    end
    object qryTabest1movPerAtacado1Anterior: TFloatField
      FieldName = 'PerAtacado1Anterior'
    end
    object qryTabest1movPerAtacado1Novo: TFloatField
      FieldName = 'PerAtacado1Novo'
    end
    object qryTabest1movPrAtacado2Anterior: TCurrencyField
      FieldName = 'PrAtacado2Anterior'
    end
    object qryTabest1movPrAtacado2Novo: TCurrencyField
      FieldName = 'PrAtacado2Novo'
    end
    object qryTabest1movPerAtacado2Anterior: TFloatField
      FieldName = 'PerAtacado2Anterior'
    end
    object qryTabest1movPerAtacado2Novo: TFloatField
      FieldName = 'PerAtacado2Novo'
    end
    object qryTabest1movPrAtacado3Anterior: TCurrencyField
      FieldName = 'PrAtacado3Anterior'
    end
    object qryTabest1movPrAtacado3Novo: TCurrencyField
      FieldName = 'PrAtacado3Novo'
    end
    object qryTabest1movPerAtacado3Anterior: TFloatField
      FieldName = 'PerAtacado3Anterior'
    end
    object qryTabest1movPerAtacado3Novo: TFloatField
      FieldName = 'PerAtacado3Novo'
    end
    object qryTabest1movPrAtacado4Anterior: TCurrencyField
      FieldName = 'PrAtacado4Anterior'
    end
    object qryTabest1movPrAtacado4Novo: TCurrencyField
      FieldName = 'PrAtacado4Novo'
    end
    object qryTabest1movPerAtacado4Anterior: TFloatField
      FieldName = 'PerAtacado4Anterior'
    end
    object qryTabest1movPerAtacado4Novo: TFloatField
      FieldName = 'PerAtacado4Novo'
    end
  end
  object DSqryTabest1mov: TDataSource
    DataSet = qryTabest1mov
    Left = 240
    Top = 224
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
    Top = 303
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NumRelatorio'
        Value = Null
      end>
  end
  object DSQRYITENSHIST: TDataSource
    DataSet = QRYITENSHIST
    Left = 229
    Top = 375
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
  object QRYALTERAPRECOS: TUniQuery
    Connection = ConDados
    SQL.Strings = (
      'UPDATE TABEST1'
      'SET'
      '    -- Pre'#231'os Varejo'
      '    PrecoVenda = :PrVarejo1,'
      '    Lucro      = :PerVarejo1,'
      '    PrPrazo    = :PrVarejo2,'
      '    PerPrazo   = :PerVarejo2,'
      '    PrAtacado  = :PrVarejo3,'
      '    PerAtacado = :PerVarejo3,'
      '    PrMinimo   = :PrVarejo4,'
      '    PerMinimo  = :PerVarejo4,'
      '    -- Pre'#231'os Atacado'
      '    PrAtacado1 = :PrAtacado1,'
      '    PerAtacado1 = :PerAtacado1,'
      '    PrAtacado2 = :PrAtacado2,'
      '    PerAtacado2 = :PerAtacado2,'
      '    PrAtacado3 = :PrAtacado3,'
      '    PerAtacado3 = :PerAtacado3,'
      '    PrAtacado4 = :PrAtacado4,'
      '    PerAtacado4 = :PerAtacado4,'
      '    -- Controle'
      '    DtAtualiza = GETDATE(),'
      '    LkUsuario  = :LkUsuario'
      'WHERE Controle = :Controle;')
    Left = 528
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PrVarejo1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PerVarejo1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PrVarejo2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PerVarejo2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PrVarejo3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PerVarejo3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PrVarejo4'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PerVarejo4'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PrAtacado1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PerAtacado1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PrAtacado2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PerAtacado2'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PrAtacado3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PerAtacado3'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PrAtacado4'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PerAtacado4'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LkUsuario'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Controle'
        Value = nil
      end>
  end
  object QRYPRODUTOSDETALHES: TUniQuery
    Connection = ConDados
    SQL.Strings = (
      'SELECT * FROM TABEST1')
    Left = 536
    Top = 216
    object QRYPRODUTOSDETALHESControle: TIntegerField
      FieldName = 'Controle'
      Required = True
    end
    object QRYPRODUTOSDETALHESCodigo: TStringField
      FieldName = 'Codigo'
    end
    object QRYPRODUTOSDETALHESCodInterno: TStringField
      FieldName = 'CodInterno'
      Size = 30
    end
    object QRYPRODUTOSDETALHESCodORIGEM: TStringField
      FieldName = 'CodORIGEM'
    end
    object QRYPRODUTOSDETALHESProduto: TStringField
      FieldName = 'Produto'
      Size = 80
    end
    object QRYPRODUTOSDETALHESLkSetor: TIntegerField
      FieldName = 'LkSetor'
    end
    object QRYPRODUTOSDETALHESFabricante: TStringField
      FieldName = 'Fabricante'
    end
    object QRYPRODUTOSDETALHESLkFornec: TIntegerField
      FieldName = 'LkFornec'
    end
    object QRYPRODUTOSDETALHESPrecoCompra: TFloatField
      FieldName = 'PrecoCompra'
    end
    object QRYPRODUTOSDETALHESPrecoCusto: TFloatField
      FieldName = 'PrecoCusto'
    end
    object QRYPRODUTOSDETALHESCustoMedio: TFloatField
      FieldName = 'CustoMedio'
    end
    object QRYPRODUTOSDETALHESPrecoVenda: TFloatField
      FieldName = 'PrecoVenda'
    end
    object QRYPRODUTOSDETALHESQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object QRYPRODUTOSDETALHESEstMinimo: TFloatField
      FieldName = 'EstMinimo'
    end
    object QRYPRODUTOSDETALHESUnidade: TStringField
      FieldName = 'Unidade'
    end
    object QRYPRODUTOSDETALHESLucro: TFloatField
      FieldName = 'Lucro'
    end
    object QRYPRODUTOSDETALHESMoeda: TStringField
      FieldName = 'Moeda'
    end
    object QRYPRODUTOSDETALHESUltReaj: TDateTimeField
      FieldName = 'UltReaj'
    end
    object QRYPRODUTOSDETALHESObs: TStringField
      FieldName = 'Obs'
      Size = 200
    end
    object QRYPRODUTOSDETALHESNaoSaiTabela: TBooleanField
      FieldName = 'NaoSaiTabela'
    end
    object QRYPRODUTOSDETALHESInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object QRYPRODUTOSDETALHESCodIPI: TStringField
      FieldName = 'CodIPI'
      Size = 12
    end
    object QRYPRODUTOSDETALHESIPI: TFloatField
      FieldName = 'IPI'
    end
    object QRYPRODUTOSDETALHESCST: TStringField
      FieldName = 'CST'
      Size = 2
    end
    object QRYPRODUTOSDETALHESICMS: TFloatField
      FieldName = 'ICMS'
    end
    object QRYPRODUTOSDETALHESBaseCalculo: TFloatField
      FieldName = 'BaseCalculo'
    end
    object QRYPRODUTOSDETALHESPerPrazo: TFloatField
      FieldName = 'PerPrazo'
    end
    object QRYPRODUTOSDETALHESPrPrazo: TFloatField
      FieldName = 'PrPrazo'
    end
    object QRYPRODUTOSDETALHESPerAtacado: TFloatField
      FieldName = 'PerAtacado'
    end
    object QRYPRODUTOSDETALHESPrAtacado: TFloatField
      FieldName = 'PrAtacado'
    end
    object QRYPRODUTOSDETALHESQtdMedia: TFloatField
      FieldName = 'QtdMedia'
    end
    object QRYPRODUTOSDETALHESUltVenda: TDateTimeField
      FieldName = 'UltVenda'
    end
    object QRYPRODUTOSDETALHESQtdDepos: TFloatField
      FieldName = 'QtdDepos'
    end
    object QRYPRODUTOSDETALHESQtdCompra: TFloatField
      FieldName = 'QtdCompra'
    end
    object QRYPRODUTOSDETALHESTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 3
    end
    object QRYPRODUTOSDETALHESCor: TStringField
      FieldName = 'Cor'
    end
    object QRYPRODUTOSDETALHESDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object QRYPRODUTOSDETALHESHORAINI: TStringField
      FieldName = 'HORAINI'
      Size = 5
    end
    object QRYPRODUTOSDETALHESHORAFIM: TStringField
      FieldName = 'HORAFIM'
      Size = 5
    end
    object QRYPRODUTOSDETALHESPERMINIMO: TFloatField
      FieldName = 'PERMINIMO'
    end
    object QRYPRODUTOSDETALHESPRMINIMO: TFloatField
      FieldName = 'PRMINIMO'
    end
    object QRYPRODUTOSDETALHESPeso: TFloatField
      FieldName = 'Peso'
    end
    object QRYPRODUTOSDETALHESTempo: TStringField
      FieldName = 'Tempo'
      Size = 5
    end
    object QRYPRODUTOSDETALHESValidade: TDateTimeField
      FieldName = 'Validade'
    end
    object QRYPRODUTOSDETALHESComissao: TFloatField
      FieldName = 'Comissao'
    end
    object QRYPRODUTOSDETALHESLkGuiche: TIntegerField
      FieldName = 'LkGuiche'
    end
    object QRYPRODUTOSDETALHESPrecoPDV: TFloatField
      FieldName = 'PrecoPDV'
    end
    object QRYPRODUTOSDETALHESlkSClasse: TIntegerField
      FieldName = 'lkSClasse'
    end
    object QRYPRODUTOSDETALHESlkPAtivo: TIntegerField
      FieldName = 'lkPAtivo'
    end
    object QRYPRODUTOSDETALHESGenerico: TStringField
      FieldName = 'Generico'
      Size = 1
    end
    object QRYPRODUTOSDETALHESTipoPreco: TStringField
      FieldName = 'TipoPreco'
      Size = 1
    end
    object QRYPRODUTOSDETALHESDtAtualiza: TDateTimeField
      FieldName = 'DtAtualiza'
    end
    object QRYPRODUTOSDETALHESApresenta: TStringField
      FieldName = 'Apresenta'
      Size = 45
    end
    object QRYPRODUTOSDETALHESprazoValidade: TIntegerField
      FieldName = 'prazoValidade'
    end
    object QRYPRODUTOSDETALHESDescPromocao: TFloatField
      FieldName = 'DescPromocao'
    end
    object QRYPRODUTOSDETALHESLkClasse: TIntegerField
      FieldName = 'LkClasse'
    end
    object QRYPRODUTOSDETALHESLkControlado: TIntegerField
      FieldName = 'LkControlado'
    end
    object QRYPRODUTOSDETALHESUnAtacado: TStringField
      FieldName = 'UnAtacado'
      Size = 2
    end
    object QRYPRODUTOSDETALHESQtdAtacado: TFloatField
      FieldName = 'QtdAtacado'
    end
    object QRYPRODUTOSDETALHESLkItemVInc: TIntegerField
      FieldName = 'LkItemVInc'
    end
    object QRYPRODUTOSDETALHESQtdItemVinc: TFloatField
      FieldName = 'QtdItemVinc'
    end
    object QRYPRODUTOSDETALHESidEmpresa: TIntegerField
      FieldName = 'idEmpresa'
    end
    object QRYPRODUTOSDETALHESCodConvenio: TIntegerField
      FieldName = 'CodConvenio'
    end
    object QRYPRODUTOSDETALHESTrb_Origem: TIntegerField
      FieldName = 'Trb_Origem'
    end
    object QRYPRODUTOSDETALHESTrb_ICMS_CST: TIntegerField
      FieldName = 'Trb_ICMS_CST'
    end
    object QRYPRODUTOSDETALHESTrb_PICMS: TFloatField
      FieldName = 'Trb_PICMS'
    end
    object QRYPRODUTOSDETALHESTrb_PReducao: TFloatField
      FieldName = 'Trb_PReducao'
    end
    object QRYPRODUTOSDETALHESTrb_PIVA: TFloatField
      FieldName = 'Trb_PIVA'
    end
    object QRYPRODUTOSDETALHESTrb_IPI_CST: TIntegerField
      FieldName = 'Trb_IPI_CST'
    end
    object QRYPRODUTOSDETALHESTrb_PIPI: TFloatField
      FieldName = 'Trb_PIPI'
    end
    object QRYPRODUTOSDETALHESTrb_ModBC: TIntegerField
      FieldName = 'Trb_ModBC'
    end
    object QRYPRODUTOSDETALHESTrb_ModBCST: TIntegerField
      FieldName = 'Trb_ModBCST'
    end
    object QRYPRODUTOSDETALHESTrb_NCM: TIntegerField
      FieldName = 'Trb_NCM'
    end
    object QRYPRODUTOSDETALHESTrb_PIS_CST: TIntegerField
      FieldName = 'Trb_PIS_CST'
    end
    object QRYPRODUTOSDETALHESTrb_PPIS: TFloatField
      FieldName = 'Trb_PPIS'
    end
    object QRYPRODUTOSDETALHESTrb_COFINS_CST: TIntegerField
      FieldName = 'Trb_COFINS_CST'
    end
    object QRYPRODUTOSDETALHESTrb_PCOFINS: TFloatField
      FieldName = 'Trb_PCOFINS'
    end
    object QRYPRODUTOSDETALHESPerAtacado1: TFloatField
      FieldName = 'PerAtacado1'
    end
    object QRYPRODUTOSDETALHESPerAtacado2: TFloatField
      FieldName = 'PerAtacado2'
    end
    object QRYPRODUTOSDETALHESPerAtacado3: TFloatField
      FieldName = 'PerAtacado3'
    end
    object QRYPRODUTOSDETALHESPerAtacado4: TFloatField
      FieldName = 'PerAtacado4'
    end
    object QRYPRODUTOSDETALHESPrAtacado1: TFloatField
      FieldName = 'PrAtacado1'
    end
    object QRYPRODUTOSDETALHESPrAtacado2: TFloatField
      FieldName = 'PrAtacado2'
    end
    object QRYPRODUTOSDETALHESPrAtacado3: TFloatField
      FieldName = 'PrAtacado3'
    end
    object QRYPRODUTOSDETALHESPrAtacado4: TFloatField
      FieldName = 'PrAtacado4'
    end
    object QRYPRODUTOSDETALHESData: TDateTimeField
      FieldName = 'Data'
    end
    object QRYPRODUTOSDETALHESLkVinculado: TIntegerField
      FieldName = 'LkVinculado'
    end
    object QRYPRODUTOSDETALHESPrAtualizavel: TIntegerField
      FieldName = 'PrAtualizavel'
    end
    object QRYPRODUTOSDETALHESCodBarra: TStringField
      FieldName = 'CodBarra'
    end
    object QRYPRODUTOSDETALHESCodBarraCx: TStringField
      FieldName = 'CodBarraCx'
    end
    object QRYPRODUTOSDETALHESSD_IndProp: TIntegerField
      FieldName = 'SD_IndProp'
    end
    object QRYPRODUTOSDETALHESSD_CodCta: TStringField
      FieldName = 'SD_CodCta'
    end
    object QRYPRODUTOSDETALHESSD_IDENT_MERC: TIntegerField
      FieldName = 'SD_IDENT_MERC'
    end
    object QRYPRODUTOSDETALHESDtAlteracao: TDateTimeField
      FieldName = 'DtAlteracao'
    end
    object QRYPRODUTOSDETALHESLkUsuario: TIntegerField
      FieldName = 'LkUsuario'
    end
    object QRYPRODUTOSDETALHESCFOP: TIntegerField
      FieldName = 'CFOP'
    end
    object QRYPRODUTOSDETALHESCFOPEnt: TIntegerField
      FieldName = 'CFOPEnt'
    end
    object QRYPRODUTOSDETALHESComissaoVlFixo: TFloatField
      FieldName = 'ComissaoVlFixo'
    end
    object QRYPRODUTOSDETALHESPrConvenio: TFloatField
      FieldName = 'PrConvenio'
    end
    object QRYPRODUTOSDETALHESQtdEmbalagem: TFloatField
      FieldName = 'QtdEmbalagem'
    end
    object QRYPRODUTOSDETALHESUnEmbalagem: TStringField
      FieldName = 'UnEmbalagem'
      Size = 4
    end
    object QRYPRODUTOSDETALHESQtdUsoDia: TFloatField
      FieldName = 'QtdUsoDia'
    end
    object QRYPRODUTOSDETALHESLkConvenio: TIntegerField
      FieldName = 'LkConvenio'
    end
    object QRYPRODUTOSDETALHESGarantia: TFloatField
      FieldName = 'Garantia'
    end
    object QRYPRODUTOSDETALHESTipoGarantia: TStringField
      FieldName = 'TipoGarantia'
    end
    object QRYPRODUTOSDETALHESPrUnEmbalagem: TFloatField
      FieldName = 'PrUnEmbalagem'
    end
    object QRYPRODUTOSDETALHEScProdANP: TStringField
      FieldName = 'cProdANP'
      Size = 9
    end
    object QRYPRODUTOSDETALHESQtdFiscal: TFloatField
      FieldName = 'QtdFiscal'
    end
    object QRYPRODUTOSDETALHESNCM: TStringField
      FieldName = 'NCM'
      Size = 8
    end
    object QRYPRODUTOSDETALHESLkGrade: TIntegerField
      FieldName = 'LkGrade'
    end
    object QRYPRODUTOSDETALHESLkSubGrupo: TIntegerField
      FieldName = 'LkSubGrupo'
    end
    object QRYPRODUTOSDETALHESLkGradeCor: TIntegerField
      FieldName = 'LkGradeCor'
    end
    object QRYPRODUTOSDETALHESLkGradeTam: TIntegerField
      FieldName = 'LkGradeTam'
    end
    object QRYPRODUTOSDETALHESLkTpAgregado: TIntegerField
      FieldName = 'LkTpAgregado'
    end
    object QRYPRODUTOSDETALHESLkCor: TIntegerField
      FieldName = 'LkCor'
    end
    object QRYPRODUTOSDETALHESLkVasilhame: TIntegerField
      FieldName = 'LkVasilhame'
    end
    object QRYPRODUTOSDETALHESQtdVazio: TFloatField
      FieldName = 'QtdVazio'
    end
    object QRYPRODUTOSDETALHESAliq_ICMS_Cred_Pressumido: TFloatField
      FieldName = 'Aliq_ICMS_Cred_Pressumido'
    end
    object QRYPRODUTOSDETALHESCEST: TStringField
      FieldName = 'CEST'
      Size = 10
    end
    object QRYPRODUTOSDETALHESLkDescPromocao: TIntegerField
      FieldName = 'LkDescPromocao'
    end
    object QRYPRODUTOSDETALHESQtdMinPrAtacado: TFloatField
      FieldName = 'QtdMinPrAtacado'
    end
    object QRYPRODUTOSDETALHESLerPesoBalanca: TBooleanField
      FieldName = 'LerPesoBalanca'
    end
    object QRYPRODUTOSDETALHESLkVenPersonalizada: TIntegerField
      FieldName = 'LkVenPersonalizada'
    end
    object QRYPRODUTOSDETALHESLkImprimeSetor: TIntegerField
      FieldName = 'LkImprimeSetor'
    end
    object QRYPRODUTOSDETALHESLkPrecoPorTamanho: TIntegerField
      FieldName = 'LkPrecoPorTamanho'
    end
    object QRYPRODUTOSDETALHESPrAtacado1Un: TFloatField
      FieldName = 'PrAtacado1Un'
    end
    object QRYPRODUTOSDETALHESPrAtacado2Un: TFloatField
      FieldName = 'PrAtacado2Un'
    end
    object QRYPRODUTOSDETALHESPrAtacado3Un: TFloatField
      FieldName = 'PrAtacado3Un'
    end
    object QRYPRODUTOSDETALHESPrAtacado4Un: TFloatField
      FieldName = 'PrAtacado4Un'
    end
    object QRYPRODUTOSDETALHESLkTipoProd: TIntegerField
      FieldName = 'LkTipoProd'
    end
    object QRYPRODUTOSDETALHESLkFabricante: TIntegerField
      FieldName = 'LkFabricante'
    end
    object QRYPRODUTOSDETALHESfar_GrpAnatomico: TIntegerField
      FieldName = 'far_GrpAnatomico'
    end
    object QRYPRODUTOSDETALHESfar_GrpFarma: TIntegerField
      FieldName = 'far_GrpFarma'
    end
    object QRYPRODUTOSDETALHESfar_GrpQuimico: TIntegerField
      FieldName = 'far_GrpQuimico'
    end
    object QRYPRODUTOSDETALHESfar_GrpTerap: TIntegerField
      FieldName = 'far_GrpTerap'
    end
    object QRYPRODUTOSDETALHESfar_CodGuia: TIntegerField
      FieldName = 'far_CodGuia'
    end
    object QRYPRODUTOSDETALHESfar_CodAnvisa: TStringField
      FieldName = 'far_CodAnvisa'
      Size = 18
    end
    object QRYPRODUTOSDETALHESfar_RegMS: TStringField
      FieldName = 'far_RegMS'
      Size = 18
    end
    object QRYPRODUTOSDETALHESfar_ATC: TStringField
      FieldName = 'far_ATC'
      Size = 12
    end
    object QRYPRODUTOSDETALHESfar_Hospitalar: TStringField
      FieldName = 'far_Hospitalar'
      Size = 1
    end
    object QRYPRODUTOSDETALHESTipoLista: TStringField
      FieldName = 'TipoLista'
      Size = 1
    end
    object QRYPRODUTOSDETALHESTipo: TStringField
      FieldName = 'Tipo'
      Size = 2
    end
    object QRYPRODUTOSDETALHESCodGrade: TIntegerField
      FieldName = 'CodGrade'
    end
    object QRYPRODUTOSDETALHESCodFornecedor: TStringField
      FieldName = 'CodFornecedor'
    end
    object QRYPRODUTOSDETALHESLkFotoPrincipal: TIntegerField
      FieldName = 'LkFotoPrincipal'
    end
    object QRYPRODUTOSDETALHESDtUltAtualizacao: TDateTimeField
      FieldName = 'DtUltAtualizacao'
      Required = True
    end
  end
end
