unit FRMPOSICAOESTOQUE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, MemDS, DBAccess, Uni, Vcl.DBCGrids, Vcl.DBCtrls;

type
  TFormposicaoest = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    QRYPRODUTOSABERTOS: TUniQuery;
    DSQRYPRODUTOSABERTOS: TDataSource;
    QRYPEDIDOS: TUniQuery;
    DSQRYPEDIDOS: TDataSource;
    QRYCODINTERNO: TUniQuery;
    DBGridprodutos: TDBCtrlGrid;
    DBGridpedidos: TDBCtrlGrid;
    Panel3: TPanel;
    DBText2: TDBText;
    Label4: TLabel;
    Panel4: TPanel;
    DBText1: TDBText;
    Label3: TLabel;
    Panel5: TPanel;
    DBText3: TDBText;
    Label5: TLabel;
    QRYPRODUTOSABERTOSLkProduto: TIntegerField;
    QRYPRODUTOSABERTOSCodInterno: TStringField;
    QRYPRODUTOSABERTOSProduto: TStringField;
    QRYPRODUTOSABERTOSCodBarra: TStringField;
    QRYPRODUTOSABERTOSCodFornecedor: TStringField;
    QRYPRODUTOSABERTOSLocalizacao: TStringField;
    QRYPRODUTOSABERTOSGrupo: TStringField;
    QRYPRODUTOSABERTOSMarca: TStringField;
    QRYPRODUTOSABERTOSFornecedor: TStringField;
    QRYPRODUTOSABERTOSQtdEstoque: TFloatField;
    QRYPRODUTOSABERTOSQtdReserva: TFloatField;
    QRYPRODUTOSABERTOSNumPedidos: TIntegerField;
    Label6: TLabel;
    DBText4: TDBText;
    Label7: TLabel;
    DBText5: TDBText;
    Label8: TLabel;
    DBText6: TDBText;
    Label9: TLabel;
    DBText7: TDBText;
    Panel6: TPanel;
    DBText8: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    DBText9: TDBText;
    Label12: TLabel;
    DBText10: TDBText;
    DBText11: TDBText;
    Label13: TLabel;
    Panel7: TPanel;
    Label15: TLabel;
    DBText13: TDBText;
    Label16: TLabel;
    DBText14: TDBText;
    Panel8: TPanel;
    DBText15: TDBText;
    Label17: TLabel;
    Label18: TLabel;
    Panel9: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    DBText16: TDBText;
    Panel10: TPanel;
    Label23: TLabel;
    DBText20: TDBText;
    Label14: TLabel;
    DBText12: TDBText;
    DBText18: TDBText;
    QRYPEDIDOSControle: TIntegerField;
    QRYPEDIDOSData: TDateTimeField;
    QRYPEDIDOSStatus: TStringField;
    QRYPEDIDOSPedido: TIntegerField;
    QRYPEDIDOSCliente: TStringField;
    QRYPEDIDOSVendedor: TStringField;
    QRYPEDIDOSQuantidadeItem: TFloatField;
    QRYPEDIDOSTotal: TFloatField;
    QRYPEDIDOSSituacao: TStringField;
    DBText19: TDBText;
    procedure CarregarPosicaocodinternovendas;
    procedure CarregarPosicaodecodinternocadastro;
    procedure CarregarProdutosEmAbertoEExibir;

    procedure QRYPRODUTOSABERTOSAfterScroll(DataSet: TDataSet);
    procedure Label1Click(Sender: TObject);private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formposicaoest: TFormposicaoest;

implementation

{$R *.dfm}

uses CONEXAOBD, FRMCONTARESTOQUE, FRMMOVIMENTO, FRMSelectproduto, FRMSENHA,
  FRM_MENU, FRMALTERAPRECOS;



procedure TFormposicaoest.CarregarPosicaocodinternovendas;
var
  sCodInterno: string;
  iLkProduto: Integer;
  sNomeProduto: string;
begin
  // 1. COLETA DO CÓDIGO INTERNO DO PRODUTO ATIVO NO FRMMENU (DBText50)
  if not Assigned(formcontaestoque) or not Assigned(formcontaestoque.DBText50) or (Trim(formcontaestoque.DBText50.Caption) = '') then
  begin
    ShowMessage('Nenhum produto selecionado (Código Interno está vazio).');
    Exit;
  end;

  sCodInterno := Trim(formcontaestoque.DBText50.Caption);

  // 2. BUSCA O LKPRODUTO (Controle) DO PRODUTO NA TABEST1
  with DataModule1.QRYSEQ do
  begin
    Close;
    SQL.Text := 'SELECT Controle, Produto FROM TABEST1 WITH (NOLOCK) WHERE CodInterno = :CodInterno';
    ParamByName('CodInterno').AsString := sCodInterno;
    Open;

    if IsEmpty then
    begin
      ShowMessage(Format('Produto com Cod. Interno %s não encontrado na base TABEST1.', [sCodInterno]));
      Close;
      Exit;
    end;
    iLkProduto := FieldByName('Controle').AsInteger;
    sNomeProduto := FieldByName('Produto').AsString;
    Close;
  end;



  with QRYPRODUTOSABERTOS do
  begin
    Close;
    SQL.Text :=
        'SELECT ' +
        '    B.LkProduto AS LkProduto, P.CodInterno, P.Produto, P.CodBarra, P.CodFornecedor, P.Moeda AS Localizacao, ' +
        '    G.Setor AS Grupo, P.Fabricante AS Marca, F.Empresa AS Fornecedor, P.Quantidade AS QtdEstoque, ' +
        '    CAST(SUM(B.Qtdreal) AS NUMERIC(12, 2)) AS QtdReserva, COUNT(DISTINCT A.Pedido) AS NumPedidos ' +
        'FROM TabEst3B B WITH (NOLOCK) ' +
        'INNER JOIN TabEst3A A WITH (NOLOCK) ON A.Pedido = B.PEDIDO ' +
        'INNER JOIN TABEST1 P WITH (NOLOCK) ON P.Controle = B.LkProduto ' +
        'LEFT JOIN TabEst8 G WITH (NOLOCK) ON P.LkSetor = G.Controle ' +
        'LEFT JOIN TabFor F WITH (NOLOCK) ON P.LkFornec = F.Controle ' +
        'WHERE A.Cancelada <> 1 AND A.VENDA <> 1 AND A.STATUS IN (''P'',''O'') ' + // Filtro de Status Aberto
        '  AND P.Controle = :LkProduto ' +
        'GROUP BY B.LkProduto, P.CodInterno, P.Produto, P.Quantidade, P.CodFornecedor, P.Moeda, G.Setor, P.Fabricante, F.Empresa, P.CodBarra ' +
        'ORDER BY P.Produto';

    ParamByName('LkProduto').AsInteger := iLkProduto;
    Open;
  end;


  

end;






procedure TFormposicaoest.CarregarPosicaodecodinternocadastro;
var
  sCodInterno: string;
  iLkProduto: Integer;
  sNomeProduto: string;
begin
  // 1. COLETA DO CÓDIGO INTERNO DO PRODUTO ATIVO NO FRMMENU (DBText50)
  if not Assigned(formalterapreco.editcodinterno) or not Assigned(formalterapreco.editcodinterno) or (Trim(formalterapreco.editcodinterno.text) = '') then
  begin
    ShowMessage('Nenhum produto selecionado (Código Interno está vazio).');
    Exit;
  end;

  sCodInterno := Trim(formalterapreco.editcodinterno.text);

  // 2. BUSCA O LKPRODUTO (Controle) DO PRODUTO NA TABEST1
  with DataModule1.QRYSEQ do
  begin
    Close;
    SQL.Text := 'SELECT Controle, Produto FROM TABEST1 WITH (NOLOCK) WHERE CodInterno = :CodInterno';
    ParamByName('CodInterno').AsString := sCodInterno;
    Open;

    if IsEmpty then
    begin
      ShowMessage(Format('Produto com Cod. Interno %s não encontrado na base TABEST1.', [sCodInterno]));
      Close;
      Exit;
    end;
    iLkProduto := FieldByName('Controle').AsInteger;
    sNomeProduto := FieldByName('Produto').AsString;
    Close;
  end;



  with QRYPRODUTOSABERTOS do
  begin
    Close;
    SQL.Text :=
        'SELECT ' +
        '    B.LkProduto AS LkProduto, P.CodInterno, P.Produto, P.CodBarra, P.CodFornecedor, P.Moeda AS Localizacao, ' +
        '    G.Setor AS Grupo, P.Fabricante AS Marca, F.Empresa AS Fornecedor, P.Quantidade AS QtdEstoque, ' +
        '    CAST(SUM(B.Qtdreal) AS NUMERIC(12, 2)) AS QtdReserva, COUNT(DISTINCT A.Pedido) AS NumPedidos ' +
        'FROM TabEst3B B WITH (NOLOCK) ' +
        'INNER JOIN TabEst3A A WITH (NOLOCK) ON A.Pedido = B.PEDIDO ' +
        'INNER JOIN TABEST1 P WITH (NOLOCK) ON P.Controle = B.LkProduto ' +
        'LEFT JOIN TabEst8 G WITH (NOLOCK) ON P.LkSetor = G.Controle ' +
        'LEFT JOIN TabFor F WITH (NOLOCK) ON P.LkFornec = F.Controle ' +
        'WHERE A.Cancelada <> 1 AND A.VENDA <> 1 AND A.STATUS IN (''P'',''O'') ' + // Filtro de Status Aberto
        '  AND P.Controle = :LkProduto ' +
        'GROUP BY B.LkProduto, P.CodInterno, P.Produto, P.Quantidade, P.CodFornecedor, P.Moeda, G.Setor, P.Fabricante, F.Empresa, P.CodBarra ' +
        'ORDER BY P.Produto';

    ParamByName('LkProduto').AsInteger := iLkProduto;
    Open;
  end;




end;





procedure TFormposicaoest.CarregarProdutosEmAbertoEExibir;
begin
  // 1. Definição da SQL
  with QRYPRODUTOSABERTOS do
  begin
    Close;
    SQL.Text :=
        'SELECT ' +
        '    B.LkProduto AS LkProduto, P.CodInterno, P.Produto, P.CodBarra, P.CodFornecedor, P.Moeda AS Localizacao, ' +
        '    G.Setor AS Grupo, P.Fabricante AS Marca, F.Empresa AS Fornecedor, P.Quantidade AS QtdEstoque, ' +
        '    CAST(SUM(B.Qtdreal) AS NUMERIC(12, 2)) AS QtdReserva, COUNT(DISTINCT A.Pedido) AS NumPedidos ' +
        'FROM TabEst3B B WITH (NOLOCK) ' +
        'INNER JOIN TabEst3A A WITH (NOLOCK) ON A.Pedido = B.PEDIDO ' +
        'INNER JOIN TABEST1 P WITH (NOLOCK) ON P.Controle = B.LkProduto ' +
        'LEFT JOIN TabEst8 G WITH (NOLOCK) ON P.LkSetor = G.Controle ' +
        'LEFT JOIN TabFor F WITH (NOLOCK) ON P.LkFornec = F.Controle ' +
        // IMPORTANTE: Filtrar P e O para carregar todos os "abertos"
        'WHERE A.Cancelada <> 1 AND A.VENDA <> 1 AND A.STATUS IN (''P'', ''O'') ' +
        'GROUP BY B.LkProduto, P.CodInterno, P.Produto, P.Quantidade, P.CodFornecedor, P.Moeda, G.Setor, P.Fabricante, F.Empresa, P.CodBarra ' +
        'ORDER BY P.Produto';

    // 2. Abre a consulta
    try
      // Não utilizamos filtros de Data ou LkProduto aqui, pois queremos TODOS.
      Open;
    except
      on E: Exception do
      begin
        ShowMessage('Erro ao consultar produtos em aberto: ' + E.Message);
      end;
    end;
  end;

  // 3. Liga o DataSet ao DBGrid Mestre, se necessário (para exibir a lista)
  // Assumindo que você tem um DBGrid para a lista de produtos (ex: DBGridprodutos)
  // DSQRYPRODUTOSABERTOS é o DataSource da QRYPRODUTOSABERTOS
  DSQRYPRODUTOSABERTOS.DataSet := QRYPRODUTOSABERTOS;
  DBGridprodutos.DataSource := DSQRYPRODUTOSABERTOS;


end;












procedure TFormposicaoest.Label1Click(Sender: TObject);
begin
CarregarProdutosEmAbertoEExibir;
end;

// unit FRMPOSICAOESTOQUE.pas
procedure TFormposicaoest.QRYPRODUTOSABERTOSAfterScroll(DataSet: TDataSet);
var
  LkProduto: Integer;
begin
  if (DataSet.Active) and (not DataSet.IsEmpty) then
  begin
    LkProduto := DataSet.FieldByName('LkProduto').AsInteger;
    QRYPEDIDOS.Close;
    QRYPEDIDOS.SQL.Clear;
    // 3. Define a SQL (com Status Legível E Quantidade do Item)
    QRYPEDIDOS.SQL.Add(
      'SELECT ' +
      '  A.Controle, ' +
      '  A.Data, ' +
      '  A.Pedido, ' +
      '  A.Cliente, ' +
      '  A.Vendedor, ' +
      '  A.Total, ' +
      '  B.Qtdreal AS QuantidadeItem, ' + // <-- COLUNA INCLUÍDA NOVAMENTE
      '  CASE ' +
      '    WHEN A.STATUS = ''P'' THEN ''PRÉ-VENDA'' ' +
      '    WHEN A.STATUS = ''O'' THEN ''ORÇAMENTO'' ' +
      '    ELSE ''OUTROS'' ' +
      '  END AS Status, ' +
      '  CASE ' +
      '    WHEN A.STATUS = ''P'' THEN ''PRÉ-VENDA'' ' +
      '    WHEN A.STATUS = ''O'' THEN ''ORÇAMENTO'' ' +
      '    ELSE ''OUTROS'' ' +
      '  END AS Situacao ' +
      'FROM TabEst3A A WITH (NOLOCK) ' +
      'INNER JOIN TabEst3B B WITH (NOLOCK) ON A.Pedido = B.PEDIDO ' +
      'WHERE A.Cancelada <> 1 ' +
      '  AND A.VENDA <> 1 ' +
      '  AND A.STATUS IN (''P'', ''O'') ' +
      '  AND B.LkProduto = :LkProduto ' +
      'ORDER BY A.Pedido DESC'
    );
    // 4. Aplica o parâmetro
    QRYPEDIDOS.ParamByName('LkProduto').AsInteger := LkProduto;
    // 5. Abre a consulta detalhe
    QRYPEDIDOS.Open;
    // 6. Liga a fonte de dados (se não estiver configurada no design)
    DSQRYPEDIDOS.DataSet := QRYPEDIDOS;
    DBGridpedidos.DataSource := DSQRYPEDIDOS;
  end
  else
  begin
    QRYPEDIDOS.Close;
  end;
end;



end.
