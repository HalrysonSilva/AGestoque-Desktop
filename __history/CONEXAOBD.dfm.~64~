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
end
