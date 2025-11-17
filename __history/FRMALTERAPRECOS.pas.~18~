unit FRMALTERAPRECOS;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Mask,
  RxToolEdit, RxCurrEdit,Math, MemDS, DBAccess, Uni;

type
  TFormalterapreco = class(TForm)
    MENUPRECOS: TPageControl;
    TabSheet10: TTabSheet;
   
    Label76: TLabel;
    Panel31: TPanel;
    Label77: TLabel;
    Panel35: TPanel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    CEPERCENTUALATACADO4: TCurrencyEdit;
    CEPERCENTUALATACADO3: TCurrencyEdit;
    CEPERCENTUALATACADO2: TCurrencyEdit;
    Panel47: TPanel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    CEPERCENTUALVAREJO4: TCurrencyEdit;
    CEPERCENTUALVAREJO3: TCurrencyEdit;
    CEPERCENTUALVAREJO2: TCurrencyEdit;
    Panel34: TPanel;
    Label85: TLabel;
    Label81: TLabel;
    CEPERCENTUALVAREJO1: TCurrencyEdit;
    CEPERCENTUALATACADO1: TCurrencyEdit;
    btnatualizaprecos: TBitBtn;
    Button1: TCheckBox;
    DBGRIDPRODUTOSBASE: TDBGrid;
    TabSheet6: TTabSheet;
    Labelproduto: TLabel;
    Label109: TLabel;
    Panel55: TPanel;
    Panel57: TPanel;
    Label95: TLabel;
    editcodfornecedor: TEdit;
    Panel58: TPanel;
    Label96: TLabel;
    editcodbarra: TEdit;
    Panel59: TPanel;
    Label97: TLabel;
    editcodinterno: TEdit;
    Panel61: TPanel;
    Label99: TLabel;
    editcodorigem: TEdit;
    RadioGroup1: TRadioGroup;
    Panel74: TPanel;
    Label101: TLabel;
    Editlocalizacao: TEdit;
    Panel76: TPanel;
    Label98: TLabel;
    Editfornecedor: TEdit;
    Panel77: TPanel;
    Label107: TLabel;
    editmarca: TEdit;
    Panel78: TPanel;
    Label108: TLabel;
    Editgrupo: TEdit;
    btnconsultaprodutos: TBitBtn;
    Panel64: TPanel;
    Panel66: TPanel;
    Label105: TLabel;
    Panel70: TPanel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label123: TLabel;
    Label100: TLabel;
    editprecoatacado1: TCurrencyEdit;
    editprecoatacado2: TCurrencyEdit;
    editprecoatacado3: TCurrencyEdit;
    editprecoatacado4: TCurrencyEdit;
    editqtdembalagem: TEdit;
    Panel69: TPanel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    editmargematacado1: TCurrencyEdit;
    editmargematacado2: TCurrencyEdit;
    editmargematacado3: TCurrencyEdit;
    editmargematacado4: TCurrencyEdit;
    Panel68: TPanel;
    Label104: TLabel;
    Label110: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label141: TLabel;
    Label94: TLabel;
    editprecounatacado1: TCurrencyEdit;
    editprecounatacado2: TCurrencyEdit;
    editprecounatacado3: TCurrencyEdit;
    editprecounatacado4: TCurrencyEdit;
    editqtdminatacado: TEdit;
    Panel67: TPanel;
    Label111: TLabel;
    Label114: TLabel;
    Label106: TLabel;
    Editprcustomedio: TCurrencyEdit;
    Editprcusto: TCurrencyEdit;
    Panel65: TPanel;
    Label135: TLabel;
    Panel71: TPanel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label129: TLabel;
    editprecovarejo1: TCurrencyEdit;
    editprecovarejo2: TCurrencyEdit;
    editprecovarejo3: TCurrencyEdit;
    editprecovarejo4: TCurrencyEdit;
    Panel72: TPanel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    editmargemvarejo1: TCurrencyEdit;
    editmargemvarejo2: TCurrencyEdit;
    editmargemvarejo3: TCurrencyEdit;
    editmargemvarejo4: TCurrencyEdit;
    Panel73: TPanel;
    Label102: TLabel;
    DBTextestoquedeposito: TDBText;
    Label103: TLabel;
    DBTexestoqueloja: TDBText;
    Label136: TLabel;
    DBTextestoquetotal: TDBText;
    Label137: TLabel;
    DBTextestoquefiscal: TDBText;
    Label138: TLabel;
    DBTextestoqueminino: TDBText;
    Label143: TLabel;
    Panel56: TPanel;
    Panel75: TPanel;
    Label139: TLabel;
    Label146: TLabel;
    dtultvenda: TDateTimePicker;
    dtultcompra: TDateTimePicker;
    Panel60: TPanel;
    Label144: TLabel;
    Label145: TLabel;
    dtultalteracao: TDateTimePicker;
    dtdatacastro: TDateTimePicker;
    Panel63: TPanel;
    Label142: TLabel;
    Label149: TLabel;
    dtultalteracaopreco: TDateTimePicker;
    editdiasnaoalterapreco: TEdit;
    Panel30: TPanel;
    Label140: TLabel;
    Label147: TLabel;
    Editultalterar: TEdit;
    editusuariomudoupreco: TEdit;
    Panel48: TPanel;
    Btnconsultaaberto: TBitBtn;
    btnconsultamov: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    cmbgrupo: TComboBox;
    cmbfornecedor: TComboBox;
    cmbmarca: TComboBox;
    btnconsultar: TBitBtn;
    Editlocal: TEdit;
    qrycarregaprodutos: TUniQuery;
    qrycarregadetalhes: TUniQuery;
    procedure CEPERCENTUALATACADO1Change(Sender: TObject);
    procedure DBGRIDPRODUTOSBASEDblClick(Sender: TObject);
    procedure CarregarListaBaseProdutos;
    procedure btnconsultarClick(Sender: TObject);
    procedure AtualizarDiasSemAlteracao;





    procedure ConsultarMovimentoProdutoBase;
    procedure DefinirPercentuaisPadrao;
    procedure AplicarAjusteDePrecosEmMassa;
     procedure CarregarGrupos;
     procedure CarregarMarcas;
     procedure CarregarFornecedores;
    procedure FormShow(Sender: TObject);
    procedure btnconsultaprodutosClick(Sender: TObject);
    procedure BtnconsultaabertoClick(Sender: TObject);
    procedure btnconsultamovClick(Sender: TObject);
    procedure CarregarUltimoUsuarioAlteracao;


  private
    { Private declarations }
  public
    { Public declarations }


       procedure Estoque_RegistrarMovimentoPreco(sCodInterno: string; iLkUsuario: Integer; iLkItem: Integer;
    fCustoAnt, fVendaAnt, fMargemVarejoAnt, fPrPrazoAnt, fPerPrazoAnt, fPrAtacadoVarejoAnt, fPerAtacadoVarejoAnt,
    fPrMinimoAnt, fPerMinimoAnt, fPrAtacado1Ant, fPerAtacado1Ant: Extended;
    fCustoNovo, fVendaNovo, fMargemVarejoNovo, fPrPrazoNovo, fPerPrazoNovo, fPrAtacadoVarejoNovo, fPerAtacadoVarejoNovo,
    fPrMinimoNovo, fPerMinimoNovo, fPrAtacado1Novo, fPerAtacado1Novo: Extended);


  end;

var
  Formalterapreco: TFormalterapreco;

implementation

{$R *.dfm}

uses CONEXAOBD, FRM_MENU, FRMCONTARESTOQUE, FRMMOVIMENTO, FRMPOSICAOESTOQUE,
  FRMSelectproduto, FRMSENHA;



procedure Tformalterapreco.CarregarFornecedores;
begin
  // Garante que a conexão do componente QRYFORNECEDOR está ativa
  if not datamodule1.qryfornecedor.Connection.Connected then
    datamodule1.qryfornecedor.Connection.Connected := True;

  // Limpa o ComboBox
  cmbfornecedor.Items.Clear;

  // Adiciona a opção "Todos" com o valor 0
  cmbfornecedor.Items.AddObject('Todos', TObject(0));

  // Define a consulta SQL do seu QRYFORNECEDOR
  // A propriedade 'Sql.Text' do seu QRYFORNECEDOR deve ser configurada da seguinte forma:
  // 'SELECT Controle, Empresa FROM tabfor ORDER BY Empresa'
  // Abre a query para carregar os dados
  datamodule1.qryfornecedor.Open;
  try
    // Popula o ComboBox com os dados
    while not datamodule1.qryfornecedor.Eof do
    begin
      // Adiciona o nome da empresa (texto visível) e guarda o controle (objeto)
      cmbfornecedor.Items.AddObject(datamodule1.qryfornecedor.FieldByName('Empresa').AsString, TObject(datamodule1.qryfornecedor.FieldByName('Controle').AsInteger));
      datamodule1.qryfornecedor.Next;
    end;
  finally
    // Fecha a query para liberar recursos
    datamodule1.qryfornecedor.Close;
  end;

  // Seleciona a primeira opção ("Todos") por padrão
  cmbfornecedor.ItemIndex := 0;
end;

  procedure Tformalterapreco.CarregarGrupos;
begin
  // Garante que a conexão do componente QRYGRUPOS está ativa
  if not datamodule1.qrygrupos.Connection.Connected then
    datamodule1.qrygrupos.Connection.Connected := True;

  // Limpa o ComboBox
  cmbgrupo.Items.Clear;

  // Adiciona a opção "Todos" com o valor 0
  cmbgrupo.Items.AddObject('Todos', TObject(0));

  // Abre a query para carregar os dados
  datamodule1.qrygrupos.Open;
  try
    // Popula o ComboBox com os dados
    while not datamodule1.qrygrupos.Eof do
    begin
      // Adiciona o nome do setor (texto visível) e guarda o controle (objeto)
      cmbgrupo.Items.AddObject(datamodule1.qrygrupos.FieldByName('Setor').AsString, TObject(datamodule1.qrygrupos.FieldByName('Controle').AsInteger));
      datamodule1.qrygrupos.Next;
    end;
  finally
    // Fecha a query para liberar recursos
    datamodule1.qrygrupos.Close;
  end;

  // Seleciona a primeira opção ("Todos") por padrão
  cmbgrupo.ItemIndex := 0;
end;


procedure Tformalterapreco.CarregarMarcas;
var
  Marca: string;
begin
  // Garante que a conexão do componente QRYMARCA está ativa
  if not datamodule1.qrymarca.Connection.Connected then
    datamodule1.qrymarca.Connection.Connected := True;

  // Limpa o ComboBox
  cmbmarca.Items.Clear;

  // Adiciona a opção "Todos"
  cmbmarca.Items.AddObject('Todos', TObject(0));

  // Define a consulta SQL para buscar fabricantes únicos e não nulos
  // A propriedade 'Sql.Text' do seu QRYMARCA deve ser configurada da seguinte forma:
  // 'SELECT DISTINCT FABRICANTE FROM tabest1 WHERE FABRICANTE IS NOT NULL AND FABRICANTE <> '' ORDER BY FABRICANTE'
  // Abre a query para carregar os dados
  datamodule1.qrymarca.Open;
  try
    // Popula o ComboBox com os dados
    while not datamodule1.qrymarca.Eof do
    begin
      Marca := datamodule1.qrymarca.FieldByName('FABRICANTE').AsString;
      // Adiciona a marca (texto visível) e guarda a mesma string como objeto
      cmbmarca.Items.AddObject(Marca, TObject(Marca));
      datamodule1.qrymarca.Next;
    end;
  finally
    // Fecha a query para liberar recursos
    datamodule1.qrymarca.Close;
  end;

  // Seleciona a primeira opção ("Todos") por padrão
  cmbmarca.ItemIndex := 0;
end;















procedure TFormalterapreco.CEPERCENTUALATACADO1Change(Sender: TObject);
var
  fNovoPercentual: Extended;
begin
  // 1. Coleta o novo valor do campo 1 (CEPERCENTUALATACADO1)
  // O valor é lido diretamente do TCurrencyEdit.
  fNovoPercentual := TCurrencyEdit(Sender).Value;

  // 2. Propaga o valor para os demais campos de Atacado (2, 3 e 4)
  if Assigned(CEPERCENTUALATACADO2) then
    CEPERCENTUALATACADO2.Value := fNovoPercentual;

  if Assigned(CEPERCENTUALATACADO3) then
    CEPERCENTUALATACADO3.Value := fNovoPercentual;

  if Assigned(CEPERCENTUALATACADO4) then
    CEPERCENTUALATACADO4.Value := fNovoPercentual;

  // Nota: Não é necessário chamar a rotina de ajuste em massa aqui.
  // A rotina AplicarAjusteDePrecosEmMassa lerá esses valores já ajustados quando for executada.
end;



procedure TFormalterapreco.DBGRIDPRODUTOSBASEDblClick(Sender: TObject);
var
  QRY_BASE_LOCAL: TUniQuery;    // QRYCARREGAPRODUTOS (Base)
  QRY_DETALHES_LOCAL: TUniQuery; // QRYCARREGADETALHES (Detalhe)
  iLkProduto: Integer;
  fEstoque, fQtdDepos: Extended;
begin
  // 1. REFERENCIA AS QUERIES LOCAIS CRIADAS NO FORMULÁRIO
  QRY_BASE_LOCAL := QRYCARREGAPRODUTOS; // QRYCARREGAPRODUTOS aponta para o grid
  QRY_DETALHES_LOCAL := QRYCARREGADETALHES;

  // É fundamental garantir que QRYCARREGADETALHES esteja conectada:
  if not QRY_DETALHES_LOCAL.Connection.Connected then
    QRY_DETALHES_LOCAL.Connection := DataModule1.ConDados;


  if not QRY_BASE_LOCAL.IsEmpty then
  begin
    // 1.1. OBTÉM A CHAVE (LkProduto/Controle)
    iLkProduto := QRY_BASE_LOCAL.FieldByName('LkProduto').AsInteger;

    // 1.2. Executa a consulta detalhada na TabEst1 (usando a Query LOCAL)
    with QRY_DETALHES_LOCAL do
    begin
      Close;
      SQL.Text := 'SELECT * FROM TabEst1 WITH (NOLOCK) WHERE Controle = :LkProduto';
      ParamByName('LkProduto').AsInteger := iLkProduto;
      Open;
    end;

    if QRY_DETALHES_LOCAL.IsEmpty then Exit; // Sai se não achou o produto


    // =========================================================================
    // 2. CARREGAMENTO DOS CÓDIGOS E IDENTIFICAÇÃO (QRY_DETALHES_LOCAL)
    // =========================================================================

    // Produto
    if Assigned(labelproduto) then
      labelproduto.caption := QRY_BASE_LOCAL.FieldByName('PRODUTO').AsString;

    // Códigos (vindos da QRY_DETALHES_LOCAL)
    if Assigned(Editcodinterno) then
      Editcodinterno.Text := QRY_DETALHES_LOCAL.FieldByName('CodInterno').AsString;
    if Assigned(Editcodbarra) then
      Editcodbarra.Text := QRY_DETALHES_LOCAL.FieldByName('CodBarra').AsString;
    if Assigned(Editcodfornecedor) then
      Editcodfornecedor.Text := QRY_DETALHES_LOCAL.FieldByName('CodFornecedor').AsString;
    if Assigned(Editcodorigem) then
      Editcodorigem.Text := QRY_DETALHES_LOCAL.FieldByName('CodORIGEM').AsString;

    // Filtros de Localização (vindos da QRY_BASE_LOCAL)
    // NOTA: Estes campos Grupo/Marca/Fornecedor não existem na TabEst1, mas sim na QRY_BASE (que faz o JOIN)
    if Assigned(Editgrupo) and (QRY_BASE_LOCAL.FindField('Grupo') <> nil) then
      Editgrupo.Text := QRY_BASE_LOCAL.FieldByName('Grupo').AsString;
    if Assigned(Editmarca) and (QRY_BASE_LOCAL.FindField('Marca') <> nil) then
      Editmarca.Text := QRY_BASE_LOCAL.FieldByName('Marca').AsString;
    if Assigned(Editfornecedor) and (QRY_BASE_LOCAL.FindField('Fornecedor') <> nil) then
      Editfornecedor.Text := QRY_BASE_LOCAL.FieldByName('Fornecedor').AsString;
    if Assigned(Editlocalizacao) and (QRY_BASE_LOCAL.FindField('Localizacao') <> nil) then
      Editlocalizacao.Text := QRY_BASE_LOCAL.FieldByName('Localizacao').AsString;


    // =========================================================================
    // 3. CARREGAMENTO DAS QUANTIDADES DE ESTOQUE (QRY_DETALHES_LOCAL)
    // =========================================================================
    fEstoque := QRY_DETALHES_LOCAL.FieldByName('Quantidade').AsFloat;
    fQtdDepos := QRY_DETALHES_LOCAL.FieldByName('QtdDepos').AsFloat;

    // Estoques:
    if Assigned(DBTexestoqueloja) then
      DBTexestoqueloja.caption := FormatFloat('0.00', fEstoque);
    if Assigned(DBTextestoquedeposito) then
      DBTextestoquedeposito.caption := FormatFloat('0.00', fQtdDepos);
    if Assigned(DBTextestoquetotal) then
      DBTextestoquetotal.Caption := FormatFloat('0.00', fEstoque + fQtdDepos);

    // Estoques Adicionais
    if Assigned(DBTextestoquefiscal) and (QRY_DETALHES_LOCAL.FindField('QtdFiscal') <> nil) then
      DBTextestoquefiscal.caption := FormatFloat('0.00', QRY_DETALHES_LOCAL.FieldByName('QtdFiscal').AsFloat);
    if Assigned(DBTextestoqueminino) and (QRY_DETALHES_LOCAL.FindField('EstMinimo') <> nil) then
      DBTextestoqueminino.caption := FormatFloat('0.00', QRY_DETALHES_LOCAL.FieldByName('EstMinimo').AsFloat);


    // =========================================================================
    // 4. CARREGAMENTO DE PREÇOS E MARGENS (QRY_DETALHES_LOCAL)
    // =========================================================================

    // CUSTOS
    if Assigned(Editprcusto) then
      Editprcusto.Value := QRY_DETALHES_LOCAL.FieldByName('PrecoCusto').AsCurrency;
    if Assigned(Editprcustomedio) and (QRY_DETALHES_LOCAL.FindField('CustoMedio') <> nil) then
      Editprcustomedio.Value := QRY_DETALHES_LOCAL.FieldByName('CustoMedio').AsCurrency;

    // VAREJO 1 (PrecoVenda / Lucro)
    if Assigned(editmargemvarejo1) then
      editmargemvarejo1.Value := QRY_DETALHES_LOCAL.FieldByName('Lucro').AsFloat;
    if Assigned(editprecovarejo1) then
      editprecovarejo1.Value := QRY_DETALHES_LOCAL.FieldByName('PrecoVenda').AsFloat;

    // VAREJO 2, 3, 4 (Prazo, Atacado, Mínimo)
    if Assigned(editmargemvarejo2) and (QRY_DETALHES_LOCAL.FindField('PerPrazo') <> nil) then
      editmargemvarejo2.Value := QRY_DETALHES_LOCAL.FieldByName('PerPrazo').AsFloat;
    if Assigned(editprecovarejo2) and (QRY_DETALHES_LOCAL.FindField('PrPrazo') <> nil) then
      editprecovarejo2.Value := QRY_DETALHES_LOCAL.FieldByName('PrPrazo').AsFloat;

    if Assigned(editmargemvarejo3) and (QRY_DETALHES_LOCAL.FindField('PerAtacado') <> nil) then
      editmargemvarejo3.Value := QRY_DETALHES_LOCAL.FieldByName('PerAtacado').AsFloat;
    if Assigned(editprecovarejo3) and (QRY_DETALHES_LOCAL.FindField('PrAtacado') <> nil) then
      editprecovarejo3.Value := QRY_DETALHES_LOCAL.FieldByName('PrAtacado').AsFloat;

    if Assigned(editmargemvarejo4) and (QRY_DETALHES_LOCAL.FindField('PerMinimo') <> nil) then
      editmargemvarejo4.Value := QRY_DETALHES_LOCAL.FieldByName('PerMinimo').AsFloat;
    if Assigned(editprecovarejo4) and (QRY_DETALHES_LOCAL.FindField('PrMinimo') <> nil) then
      editprecovarejo4.Value := QRY_DETALHES_LOCAL.FieldByName('PrMinimo').AsFloat;

    // ATACADO 1 a 4 (Margens e Preços)
    if Assigned(editmargematacado1) and (QRY_DETALHES_LOCAL.FindField('PerAtacado1') <> nil) then
      editmargematacado1.Value := QRY_DETALHES_LOCAL.FieldByName('PerAtacado1').AsFloat;
    if Assigned(editprecoatacado1) and (QRY_DETALHES_LOCAL.FindField('PrAtacado1') <> nil) then
      editprecoatacado1.Value := QRY_DETALHES_LOCAL.FieldByName('PrAtacado1').AsFloat;

    if Assigned(editmargematacado2) and (QRY_DETALHES_LOCAL.FindField('PerAtacado2') <> nil) then
      editmargematacado2.Value := QRY_DETALHES_LOCAL.FieldByName('PerAtacado2').AsFloat;
    if Assigned(editprecoatacado2) and (QRY_DETALHES_LOCAL.FindField('PrAtacado2') <> nil) then
      editprecoatacado2.Value := QRY_DETALHES_LOCAL.FieldByName('PrAtacado2').AsFloat;

    if Assigned(editmargematacado3) and (QRY_DETALHES_LOCAL.FindField('PerAtacado3') <> nil) then
      editmargematacado3.Value := QRY_DETALHES_LOCAL.FieldByName('PerAtacado3').AsFloat;
    if Assigned(editprecoatacado3) and (QRY_DETALHES_LOCAL.FindField('PrAtacado3') <> nil) then
      editprecoatacado3.Value := QRY_DETALHES_LOCAL.FieldByName('PrAtacado3').AsFloat;

    if Assigned(editmargematacado4) and (QRY_DETALHES_LOCAL.FindField('PerAtacado4') <> nil) then
      editmargematacado4.Value := QRY_DETALHES_LOCAL.FieldByName('PerAtacado4').AsFloat;
    if Assigned(editprecoatacado4) and (QRY_DETALHES_LOCAL.FindField('PrAtacado4') <> nil) then
      editprecoatacado4.Value := QRY_DETALHES_LOCAL.FieldByName('PrAtacado4').AsFloat;

    // Preços Atacado Unitário (com lógica de fallback)
    if Assigned(editprecounatacado1) and (QRY_DETALHES_LOCAL.FindField('PrAtacado1Un') <> nil) then
      editprecounatacado1.Value := QRY_DETALHES_LOCAL.FieldByName('PrAtacado1Un').AsFloat
    else if Assigned(editprecounatacado1) then
      editprecounatacado1.Value := QRY_DETALHES_LOCAL.FieldByName('PrAtacado1').AsFloat;

    if Assigned(editprecounatacado2) and (QRY_DETALHES_LOCAL.FindField('PrAtacado2Un') <> nil) then
      editprecounatacado2.Value := QRY_DETALHES_LOCAL.FieldByName('PrAtacado2Un').AsFloat
    else if Assigned(editprecounatacado2) then
      editprecounatacado2.Value := QRY_DETALHES_LOCAL.FieldByName('PrAtacado2').AsFloat;

    if Assigned(editprecounatacado3) and (QRY_DETALHES_LOCAL.FindField('PrAtacado3Un') <> nil) then
      editprecounatacado3.Value := QRY_DETALHES_LOCAL.FieldByName('PrAtacado3Un').AsFloat
    else if Assigned(editprecounatacado3) then
      editprecounatacado3.Value := QRY_DETALHES_LOCAL.FieldByName('PrAtacado3').AsFloat;

    if Assigned(editprecounatacado4) and (QRY_DETALHES_LOCAL.FindField('PrAtacado4Un') <> nil) then
      editprecounatacado4.Value := QRY_DETALHES_LOCAL.FieldByName('PrAtacado4Un').AsFloat
    else if Assigned(editprecounatacado4) then
      editprecounatacado4.Value := QRY_DETALHES_LOCAL.FieldByName('PrAtacado4').AsFloat;


    // Quantidades Atacado/Embalagem
    if Assigned(editqtdembalagem) and (QRY_DETALHES_LOCAL.FindField('QtdAtacado') <> nil) then
      editqtdembalagem.text := QRY_DETALHES_LOCAL.FieldByName('QtdAtacado').Asstring;
    if Assigned(editqtdminatacado) and (QRY_DETALHES_LOCAL.FindField('QtdMinPrAtacado') <> nil) then
      editqtdminatacado.text := QRY_DETALHES_LOCAL.FieldByName('QtdMinPrAtacado').Asstring;


    // =========================================================================
    // 5. CARREGAMENTO DAS DATAS E USUÁRIO (QRY_DETALHES_LOCAL)
    // =========================================================================

    if Assigned(dtdatacastro) then
      dtdatacastro.Date := QRY_DETALHES_LOCAL.FieldByName('Data').AsDateTime;

    if Assigned(dtultvenda) and (QRY_DETALHES_LOCAL.FindField('UltVenda') <> nil) then
      dtultvenda.Date := QRY_DETALHES_LOCAL.FieldByName('UltVenda').AsDateTime;

    if Assigned(dtultalteracao) then
      dtultalteracao.Date := QRY_DETALHES_LOCAL.FieldByName('DtAlteracao').AsDateTime;

    if Assigned(dtultcompra) and (QRY_DETALHES_LOCAL.FindField('UltReaj') <> nil) then
      dtultcompra.Date := QRY_DETALHES_LOCAL.FieldByName('UltReaj').AsDateTime;

    if Assigned(Editultalterar) then
      Editultalterar.text := QRY_DETALHES_LOCAL.FieldByName('LkUsuario').Asstring;


    // 6. MUDANÇA DE ABA PARA VISUALIZAÇÃO
    if Assigned(MENUPRECOS) then
        MENUPRECOS.ActivePage := TabSheet6;
  end;
end;



procedure TFormalterapreco.BtnconsultaabertoClick(Sender: TObject);
begin
Formposicaoest.CarregarPosicaodecodinternocadastro;
end;

procedure TFormalterapreco.btnconsultamovClick(Sender: TObject);
begin
formmov.CarregaMovalterapreco;
end;

procedure TFormalterapreco.btnconsultaprodutosClick(Sender: TObject);
begin
  // 1. Cria ou exibe a instância do novo formulário
  if not Assigned(Formposicaoest) then
    selectproduto := Tselectproduto.Create(Application);

  // 2. Chama a procedure para carregar a posição, passando as datas como parâmetro


  // 3. Exibe o formulário
  selectproduto.ShowModal;
end;

procedure TFormalterapreco.btnconsultarClick(Sender: TObject);
begin
CarregarListaBaseProdutos;
end;

procedure Tformalterapreco.CarregarListaBaseProdutos;
var
  SQLText: TStringList;
begin
  // 1. Validação dos componentes
  if not Assigned(datamodule1.QRYPRODUTOSBASE) or not Assigned(datamodule1.DSQRYPRODUTOSBASE) or not Assigned(DBGRIDPRODUTOSBASE) then
  begin
    ShowMessage('Erro: Os componentes QRYPRODUTOSBASE, DSQRYPRODUTOSBASE ou DBGRIDPRODUTOSBASE não foram criados ou atribuídos.');
    Exit;
  end;

  SQLText := TStringList.Create;
  try
    SQLText.Add('SELECT');
    SQLText.Add('  P.Controle AS LkProduto,');
    SQLText.Add('  P.CodInterno,');
    SQLText.Add('  P.Produto,');

    // =========================================================
    // COLUNAS DE PREÇO E MARGEM (TODAS DE TABEST1)
    // =========================================================
    SQLText.Add('  P.PrecoCusto,');
    SQLText.Add('  P.Lucro AS MargemVarejo,');
    SQLText.Add('  P.PrecoVenda AS PrecoVarejo,');

    SQLText.Add('  P.PerPrazo AS PerPrazo,');
    SQLText.Add('  P.PrPrazo AS PrPrazo,');
    SQLText.Add('  P.PerAtacado AS PerAtacado,');
    SQLText.Add('  P.PrAtacado AS PrAtacado,');
    SQLText.Add('  P.PerMinimo AS PerMinimo,');
    SQLText.Add('  P.PrMinimo AS PrMinimo,');

    // Níveis de Atacado (Preços)
    SQLText.Add('  P.PrAtacado1 AS PrAtacado1,');
    SQLText.Add('  P.PrAtacado2 AS PrAtacado2,');
    SQLText.Add('  P.PrAtacado3 AS PrAtacado3,');
    SQLText.Add('  P.PrAtacado4 AS PrAtacado4,');

    // Níveis de Atacado (Margens)
    SQLText.Add('  P.PerAtacado1 AS PerAtacado1,');
    SQLText.Add('  P.PerAtacado2 AS PerAtacado2,');
    SQLText.Add('  P.PerAtacado3 AS PerAtacado3,');
    SQLText.Add('  P.PerAtacado4 AS PerAtacado4');


    SQLText.Add('FROM tabest1 P WITH (NOLOCK)');
    // JOINS removidos, filtros aplicados diretamente na TABEST1

    // Filtros de Inatividade e Visibilidade (Padrão)
    SQLText.Add('WHERE P.Inativo <> 1');
    SQLText.Add('  AND P.NaoSaiTabela = 0');

    // =========================================================
    // APLICAÇÃO DOS FILTROS DA TELA (Diretos na TABEST1)
    // =========================================================
    if cmbgrupo.ItemIndex > 0 then
      SQLText.Add('  AND P.LkSetor = :Grupo');

    if cmbfornecedor.ItemIndex > 0 then
      SQLText.Add('  AND P.LkFornec = :Fornecedor');

    if cmbmarca.ItemIndex > 0 then
      SQLText.Add('  AND P.Fabricante = :Marca');

    if Trim(Editlocal.Text) <> '' then
      SQLText.Add('  AND P.Moeda = :Localizacao');

    SQLText.Add('ORDER BY P.Produto ASC');

    // =========================================================
    // EXECUÇÃO E LIGAÇÃO DO GRID
    // =========================================================
    datamodule1.QRYPRODUTOSBASE.Close;
    datamodule1.QRYPRODUTOSBASE.Params.Clear;
    datamodule1.QRYPRODUTOSBASE.SQL.Text := SQLText.Text;
    datamodule1.QRYPRODUTOSBASE.Connection := DataModule1.ConDados;

    if cmbgrupo.ItemIndex > 0 then
      datamodule1.QRYPRODUTOSBASE.ParamByName('Grupo').AsInteger := Integer(cmbgrupo.Items.Objects[cmbgrupo.ItemIndex]);

    if cmbfornecedor.ItemIndex > 0 then
      datamodule1.QRYPRODUTOSBASE.ParamByName('Fornecedor').AsInteger := Integer(cmbfornecedor.Items.Objects[cmbfornecedor.ItemIndex]);

    if cmbmarca.ItemIndex > 0 then
      datamodule1.QRYPRODUTOSBASE.ParamByName('Marca').AsString := cmbmarca.Items[cmbmarca.ItemIndex];

    if Trim(Editlocal.Text) <> '' then
      datamodule1.QRYPRODUTOSBASE.ParamByName('Localizacao').AsString := Trim(Editlocal.Text);

    try
      datamodule1.QRYPRODUTOSBASE.Open;

      datamodule1.DSQRYPRODUTOSBASE.DataSet := datamodule1.QRYPRODUTOSBASE;
      DBGRIDPRODUTOSBASE.DataSource := datamodule1.DSQRYPRODUTOSBASE;


    except
      on E: Exception do
        ShowMessage('Erro ao carregar lista base de produtos: ' + E.Message);
    end;
  finally
    SQLText.Free;
  end;
end;



procedure tformalterapreco.Estoque_RegistrarMovimentoPreco(sCodInterno: string; iLkUsuario: Integer; iLkItem: Integer;
    fCustoAnt, fVendaAnt, fMargemVarejoAnt, fPrPrazoAnt, fPerPrazoAnt, fPrAtacadoVarejoAnt, fPerAtacadoVarejoAnt,
    fPrMinimoAnt, fPerMinimoAnt, fPrAtacado1Ant, fPerAtacado1Ant: Extended;
    fCustoNovo, fVendaNovo, fMargemVarejoNovo, fPrPrazoNovo, fPerPrazoNovo, fPrAtacadoVarejoNovo, fPerAtacadoVarejoNovo,
    fPrMinimoNovo, fPerMinimoNovo, fPrAtacado1Novo, fPerAtacado1Novo: Extended);
const
  LK_TIPO_ALTERACAO_PRECO = 7;
  LK_OPERACAO_INTERNA = 1;
var
  sTerminal: string;
  iTamanhoTerminal: DWord;
begin
  // 1. OBTENÇÃO DO NOME DO COMPUTADOR (TERMINAL)
  sTerminal := '';
  iTamanhoTerminal := MAX_COMPUTERNAME_LENGTH + 1;
  SetLength(sTerminal, iTamanhoTerminal);

  if Winapi.Windows.GetComputerName(PChar(sTerminal), iTamanhoTerminal) then
    SetLength(sTerminal, iTamanhoTerminal);

  sTerminal := Trim(sTerminal);

  // 2. EXECUÇÃO DO INSERT na TABEST1MOV com TODOS os campos de PREÇO
  with DataModule1.QRYUPDATETABESTMOV do
  begin
    Close;
    SQL.Text :=
      'INSERT INTO TabEst1Mov ' +
      ' (Data, CodInterno, Quantidade, SaldoAnterior, Saldo, LkOperacao, LkUsuario, LkItem, LkTipo, Terminal, ' +
      // CAMPOS ANTERIORES
      ' PrecoCustoAnterior, PrecoVendaAnterior, MargemVarejoAnterior, PrPrazoAnterior, PerPrazoAnterior, ' +
      ' PrAtacadoVarejoAnterior, PerAtacadoVarejoAnterior, PrMinimoAnterior, PerMinimoAnterior, PrAtacado1Anterior, PerAtacado1Anterior, ' +
      // CAMPOS NOVOS
      ' PrecoCustoNovo, PrecoVendaNovo, MargemVarejoNova, PrPrazoNovo, PerPrazoNovo, ' +
      ' PrAtacadoVarejoNovo, PerAtacadoVarejoNovo, PrMinimoNovo, PerMinimoNovo, PrAtacado1Novo, PerAtacado1Novo) ' +
      'VALUES (GETDATE(), :CodInt, :QtdMov, :SaldoAnt, :SaldoAtual, :LkOp, :LkUser, :LkItem, :LkTipo, :Terminal, ' +
      // VALORES ANTERIORES
      ' :CustoAnt, :VendaAnt, :MargemAnt, :PrPrazoAnt, :PerPrazoAnt, :PrAtacadoVarejoAnt, :PerAtacadoVarejoAnt, :PrMinimoAnt, :PerMinimoAnt, :PrAtacado1Ant, :PerAtacado1Ant, ' +
      // VALORES NOVOS
      ' :CustoNovo, :VendaNovo, :MargemNovo, :PrPrazoNovo, :PerPrazoNovo, :PrAtacadoVarejoNovo, :PerAtacadoVarejoNovo, :PrMinimoNovo, :PerMinimoNovo, :PrAtacado1Novo, :PerAtacado1Novo)';

    // Parâmetros de Estoque (Zerados)
    ParamByName('CodInt').AsString := sCodInterno;
    ParamByName('QtdMov').AsFloat := 0.0;
    ParamByName('SaldoAnt').AsFloat := 0.0;
    ParamByName('SaldoAtual').AsFloat := 0.0;

    ParamByName('LkOp').AsInteger := LK_OPERACAO_INTERNA;
    ParamByName('LkUser').AsInteger := iLkUsuario;
    ParamByName('LkItem').AsInteger := iLkItem;
    ParamByName('LkTipo').AsInteger := LK_TIPO_ALTERACAO_PRECO;
    ParamByName('Terminal').AsString := sTerminal;

    // 3. ATRIBUIÇÃO DOS VALORES ANTERIORES (Extended/Float -> Currency/Float)
    ParamByName('CustoAnt').AsCurrency := fCustoAnt;
    ParamByName('VendaAnt').AsCurrency := fVendaAnt;
    ParamByName('MargemAnt').AsFloat := fMargemVarejoAnt;
    ParamByName('PrPrazoAnt').AsCurrency := fPrPrazoAnt;
    ParamByName('PerPrazoAnt').AsFloat := fPerPrazoAnt;
    ParamByName('PrAtacadoVarejoAnt').AsCurrency := fPrAtacadoVarejoAnt;
    ParamByName('PerAtacadoVarejoAnt').AsFloat := fPerAtacadoVarejoAnt;
    ParamByName('PrMinimoAnt').AsCurrency := fPrMinimoAnt;
    ParamByName('PerMinimoAnt').AsFloat := fPerMinimoAnt;
    ParamByName('PrAtacado1Ant').AsCurrency := fPrAtacado1Ant;
    ParamByName('PerAtacado1Ant').AsFloat := fPerAtacado1Ant;

    // 4. ATRIBUIÇÃO DOS VALORES NOVOS (Extended/Float -> Currency/Float)
    ParamByName('CustoNovo').AsCurrency := fCustoNovo;
    ParamByName('VendaNovo').AsCurrency := fVendaNovo;
    ParamByName('MargemNovo').AsFloat := fMargemVarejoNovo;
    ParamByName('PrPrazoNovo').AsCurrency := fPrPrazoNovo;
    ParamByName('PerPrazoNovo').AsFloat := fPerPrazoNovo;
    ParamByName('PrAtacadoVarejoNovo').AsCurrency := fPrAtacadoVarejoNovo;
    ParamByName('PerAtacadoVarejoNovo').AsFloat := fPerAtacadoVarejoNovo;
    ParamByName('PrMinimoNovo').AsCurrency := fPrMinimoNovo;
    ParamByName('PerMinimoNovo').AsFloat := fPerMinimoNovo;
    ParamByName('PrAtacado1Novo').AsCurrency := fPrAtacado1Novo;
    ParamByName('PerAtacado1Novo').AsFloat := fPerAtacado1Novo;

    Execute;
  end;
end;


procedure Tformalterapreco.ConsultarMovimentoProdutoBase;
var
  sCodInterno: string;
begin
  // 1. Validação e Captura do CodInterno do Edit
  if not Assigned(Editcodinterno) or (Trim(Editcodinterno.Text) = '') then
  begin
    ShowMessage('O campo "Código Interno" (Editcodinterno) está vazio. Por favor, carregue um produto.');
    Exit;
  end;

  sCodInterno := Trim(Editcodinterno.Text);

  try
    // 2. Define e executa o SQL para consultar a TabEst1Mov
    with DataModule1.qryTabest1mov do
    begin
      Close;

      SQL.Clear;
      SQL.Add('SELECT top 50');

      // M.*: Seleciona todos os campos da TabEst1Mov (incluindo todos os campos de preço/margem)
      // T.*: Seleciona todos os campos da TabEstMovTipo (incluindo Tipo e LkOperacao)
      // U.USUARIO: Seleciona o nome do usuário
      SQL.Add('    M.*, T.*, U.USUARIO AS NomeUsuario');

      SQL.Add('FROM');
      SQL.Add('TabEst1Mov M WITH (NOLOCK)');
      SQL.Add('INNER JOIN SERV U ON U.Controle = M.LkUsuario');
      SQL.Add('INNER JOIN TabEstMovTipo T ON T.Controle = M.LkTipo');

      // Filtro pelo CodInterno do produto selecionado
      SQL.Add('WHERE M.CodInterno = :CodInterno');
      SQL.Add('ORDER BY M.Data DESC');

      // Define o parâmetro antes de abrir
      ParamByName('CodInterno').AsString := sCodInterno;

      // 3. Abre a Query
      Open;
    end;



  except
    on E: Exception do
    begin
      ShowMessage('Erro ao consultar movimentação do produto: ' + E.Message);
    end;
  end;
end;

procedure Tformalterapreco.DefinirPercentuaisPadrao;
begin
  // =========================================================
  // MARGENS DE VAREJO
  // As margens de 2 a 4 são descontos, por isso usamos valores negativos.
  // =========================================================
  if Assigned(CEPERCENTUALVAREJO1) then
    CEPERCENTUALVAREJO1.Value := 10.00; // 10% (Margem de lucro base)

  if Assigned(CEPERCENTUALVAREJO2) then
    CEPERCENTUALVAREJO2.Value := -3.00; // -3% (Desconto/Nível 2)

  if Assigned(CEPERCENTUALVAREJO3) then
    CEPERCENTUALVAREJO3.Value := -6.00; // -6% (Desconto/Nível 3)

  if Assigned(CEPERCENTUALVAREJO4) then
    CEPERCENTUALVAREJO4.Value := -9.00; // -9% (Desconto/Nível 4)


  // =========================================================
  // MARGENS DE ATACADO
  // Todos os níveis de atacado têm 10% (Margem de lucro)
  // =========================================================
  if Assigned(CEPERCENTUALATACADO1) then
    CEPERCENTUALATACADO1.Value := 10.00;

  if Assigned(CEPERCENTUALATACADO2) then
    CEPERCENTUALATACADO2.Value := 10.00;

  if Assigned(CEPERCENTUALATACADO3) then
    CEPERCENTUALATACADO3.Value := 10.00;

  if Assigned(CEPERCENTUALATACADO4) then
    CEPERCENTUALATACADO4.Value := 10.00;
end;




procedure TFormalterapreco.FormShow(Sender: TObject);
begin
    CarregarGrupos;
    CarregarMarcas;
    CarregarFornecedores;
end;

procedure Tformalterapreco.AplicarAjusteDePrecosEmMassa;
const
  // Constante base para divisão por 100
  PERC_BASE = 100.00;
  // Margens fixas de DESCONTO (negativo) para Varejo 2, 3 e 4
  DESCONTO_VAREJO_2 = -3.00;
  DESCONTO_VAREJO_3 = -6.00;
  DESCONTO_VAREJO_4 = -9.00;
var
  iContador: Integer;
  iLkUsuario: Integer;
  fPrecoCusto: Extended;
  fNovoPreco: Extended;
  fPrecoVarejoBase: Extended;

  // Variáveis de Coleta de Percentuais (Inputs)
  fPerVarejo1: Extended;
  fPerAtacado1, fPerAtacado2, fPerAtacado3, fPerAtacado4: Extended;

  // Variáveis ANTERIORES (11 campos lidos da QRYPRODUTOSBASE)
  fCustoAnterior, fVendaAnterior, fMargemVarejoAnterior, fPrPrazoAnterior, fPerPrazoAnterior: Extended;
  fPrAtacadoVarejoAnterior, fPerAtacadoVarejoAnterior, fPrMinimoAnterior, fPerMinimoAnterior: Extended;
  fPrAtacado1Anterior, fPerAtacado1Anterior: Extended;

  // Variáveis NOVAS (11 campos calculados para Log)
  fPrecoCustoNovo, fPrecoVendaNovo, fMargemVarejoNova, fPrPrazoNovo, fPerPrazoNovo: Extended;
  fPrAtacadoVarejoNovo, fPerAtacadoVarejoNovo, fPrMinimoNovo, fPerMinimoNovo: Extended;
  fPrAtacado1Novo, fPerAtacado1Novo: Extended;

begin
  // 1. Validação
  if datamodule1.QRYPRODUTOSBASE.IsEmpty then
  begin
    ShowMessage('A lista de produtos para ajuste está vazia. Use "Consultar Produtos" primeiro.');
    Exit;
  end;

  if MessageDlg('Confirma a aplicação dos novos percentuais de preço para TODOS os produtos da lista?',
    mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  // 2. Coleta dos Percentuais (Inputs)
  fPerVarejo1  := CEPERCENTUALVAREJO1.Value;
  fPerAtacado1 := CEPERCENTUALATACADO1.Value;
  fPerAtacado2 := CEPERCENTUALATACADO2.Value;
  fPerAtacado3 := CEPERCENTUALATACADO3.Value;
  fPerAtacado4 := CEPERCENTUALATACADO4.Value;

  // Propagação do Percentual de Atacado 1 para os demais
  if fPerAtacado1 <> 0 then
  begin
      fPerAtacado2 := fPerAtacado1;
      fPerAtacado3 := fPerAtacado1;
      fPerAtacado4 := fPerAtacado1;
  end;

  // 3. Coleta do LkUsuario
  if Assigned(FRMSEN) then
    iLkUsuario := FRMSEN.UsuarioControle
  else
    iLkUsuario := 0;

  // 4. Início da Transação
  DataModule1.ConDados.StartTransaction;
  datamodule1.QRYPRODUTOSBASE.DisableControls;
  iContador := 0;

  try
    datamodule1.QRYPRODUTOSBASE.First;
    while not datamodule1.QRYPRODUTOSBASE.Eof do
    begin
      // 5. COLETA DOS VALORES ANTERIORES (Lidos da QRYPRODUTOSBASE antes do UPDATE)
      fPrecoCusto             := datamodule1.QRYPRODUTOSBASE.FieldByName('PrecoCusto').AsFloat;
      fCustoAnterior          := fPrecoCusto;
      fVendaAnterior          := datamodule1.QRYPRODUTOSBASE.FieldByName('PrecoVarejo').AsFloat;
      fMargemVarejoAnterior   := datamodule1.QRYPRODUTOSBASE.FieldByName('MargemVarejo').AsFloat;
      fPrPrazoAnterior        := datamodule1.QRYPRODUTOSBASE.FieldByName('PrPrazo').AsFloat;
      fPerPrazoAnterior       := datamodule1.QRYPRODUTOSBASE.FieldByName('PerPrazo').AsFloat;
      fPrAtacadoVarejoAnterior:= datamodule1.QRYPRODUTOSBASE.FieldByName('PrAtacado').AsFloat;
      fPerAtacadoVarejoAnterior:= datamodule1.QRYPRODUTOSBASE.FieldByName('PerAtacado').AsFloat;
      fPrMinimoAnterior       := datamodule1.QRYPRODUTOSBASE.FieldByName('PrMinimo').AsFloat;
      fPerMinimoAnterior      := datamodule1.QRYPRODUTOSBASE.FieldByName('PerMinimo').AsFloat;
      fPrAtacado1Anterior     := datamodule1.QRYPRODUTOSBASE.FieldByName('PrAtacado1').AsFloat;
      fPerAtacado1Anterior    := datamodule1.QRYPRODUTOSBASE.FieldByName('PerAtacado1').AsFloat;

      // =========================================================
      // 6. CÁLCULO DOS PREÇOS NOVOS E PREENCHIMENTO DOS PARÂMETROS
      // =========================================================

      // Armazena Custo Novo (neste caso, é igual ao anterior, mas o registramos)
      fPrecoCustoNovo := fPrecoCusto;

      // --- CÁLCULO VAREJO 1 (PrecoVenda / Lucro) ---
      fPrecoVarejoBase := RoundTo(fPrecoCusto * (1 + (fPerVarejo1 / PERC_BASE)), -2);
      fPrecoVendaNovo := fPrecoVarejoBase;
      fMargemVarejoNova := fPerVarejo1;

      DataModule1.QRYALTERAPRECOS.ParamByName('PrVarejo1').AsFloat := fPrecoVendaNovo;
      DataModule1.QRYALTERAPRECOS.ParamByName('PerVarejo1').AsFloat := fMargemVarejoNova;

      // --- CÁLCULO VAREJO 2 (PrPrazo / PerPrazo) - Desconto fixo ---
      fNovoPreco := RoundTo(fPrecoVarejoBase * (1 + (DESCONTO_VAREJO_2 / PERC_BASE)), -2);
      fPrPrazoNovo := fNovoPreco;
      fPerPrazoNovo := DESCONTO_VAREJO_2;
      DataModule1.QRYALTERAPRECOS.ParamByName('PrVarejo2').AsFloat := fPrPrazoNovo;
      DataModule1.QRYALTERAPRECOS.ParamByName('PerVarejo2').AsFloat := fPerPrazoNovo;

      // --- CÁLCULO VAREJO 3 (PrAtacado / PerAtacado) - Desconto fixo ---
      fNovoPreco := RoundTo(fPrecoVarejoBase * (1 + (DESCONTO_VAREJO_3 / PERC_BASE)), -2);
      fPrAtacadoVarejoNovo := fNovoPreco;
      fPerAtacadoVarejoNovo := DESCONTO_VAREJO_3;
      DataModule1.QRYALTERAPRECOS.ParamByName('PrVarejo3').AsFloat := fPrAtacadoVarejoNovo;
      DataModule1.QRYALTERAPRECOS.ParamByName('PerVarejo3').AsFloat := fPerAtacadoVarejoNovo;

      // --- CÁLCULO VAREJO 4 (PrMinimo / PerMinimo) - Desconto fixo ---
      fNovoPreco := RoundTo(fPrecoVarejoBase * (1 + (DESCONTO_VAREJO_4 / PERC_BASE)), -2);
      fPrMinimoNovo := fNovoPreco;
      fPerMinimoNovo := DESCONTO_VAREJO_4;
      DataModule1.QRYALTERAPRECOS.ParamByName('PrVarejo4').AsFloat := fPrMinimoNovo;
      DataModule1.QRYALTERAPRECOS.ParamByName('PerVarejo4').AsFloat := fPerMinimoNovo;

      // --- CÁLCULO ATACADO 1 (PrAtacado1 / PerAtacado1) ---
      fNovoPreco := RoundTo(fPrecoCusto * (1 + (fPerAtacado1 / PERC_BASE)), -2);
      fPrAtacado1Novo := fNovoPreco;
      fPerAtacado1Novo := fPerAtacado1;
      DataModule1.QRYALTERAPRECOS.ParamByName('PrAtacado1').AsFloat := fPrAtacado1Novo;
      DataModule1.QRYALTERAPRECOS.ParamByName('PerAtacado1').AsFloat := fPerAtacado1Novo;

      // O restante dos cálculos Atacado 2, 3 e 4 usa as variáveis fPerAtacadoX já ajustadas (fPerAtacado1)

      // ATACADO 2
      fNovoPreco := RoundTo(fPrecoCusto * (1 + (fPerAtacado2 / PERC_BASE)), -2);
      DataModule1.QRYALTERAPRECOS.ParamByName('PrAtacado2').AsFloat := fNovoPreco;
      DataModule1.QRYALTERAPRECOS.ParamByName('PerAtacado2').AsFloat := fPerAtacado2;

      // ATACADO 3
      fNovoPreco := RoundTo(fPrecoCusto * (1 + (fPerAtacado3 / PERC_BASE)), -2);
      DataModule1.QRYALTERAPRECOS.ParamByName('PrAtacado3').AsFloat := fNovoPreco;
      DataModule1.QRYALTERAPRECOS.ParamByName('PerAtacado3').AsFloat := fPerAtacado3;

      // ATACADO 4
      fNovoPreco := RoundTo(fPrecoCusto * (1 + (fPerAtacado4 / PERC_BASE)), -2);
      DataModule1.QRYALTERAPRECOS.ParamByName('PrAtacado4').AsFloat := fNovoPreco;
      DataModule1.QRYALTERAPRECOS.ParamByName('PerAtacado4').AsFloat := fPerAtacado4;

      // 7. Execução do UPDATE na TABEST1
      DataModule1.QRYALTERAPRECOS.Close;
      DataModule1.QRYALTERAPRECOS.ParamByName('Controle').AsInteger := datamodule1.QRYPRODUTOSBASE.FieldByName('LkProduto').AsInteger;
      DataModule1.QRYALTERAPRECOS.ParamByName('LkUsuario').AsInteger := iLkUsuario;
      DataModule1.QRYALTERAPRECOS.Execute;

      // 8. REGISTRO DO MOVIMENTO DE ALTERAÇÃO DE PREÇO
      // Chamada usando os 22 valores ANTERIOR e NOVO
      Estoque_RegistrarMovimentoPreco(
          datamodule1.QRYPRODUTOSBASE.FieldByName('CodInterno').AsString,
          iLkUsuario,
          datamodule1.QRYPRODUTOSBASE.FieldByName('LkProduto').AsInteger, // LkItem

          // VALORES ANTERIORES (11 campos)
          fCustoAnterior, fVendaAnterior, fMargemVarejoAnterior, fPrPrazoAnterior, fPerPrazoAnterior,
          fPrAtacadoVarejoAnterior, fPerAtacadoVarejoAnterior, fPrMinimoAnterior, fPerMinimoAnterior,
          fPrAtacado1Anterior, fPerAtacado1Anterior,

          // VALORES NOVOS (11 campos)
          fPrecoCustoNovo, fPrecoVendaNovo, fMargemVarejoNova, fPrPrazoNovo, fPerPrazoNovo,
          fPrAtacadoVarejoNovo, fPerAtacadoVarejoNovo, fPrMinimoNovo, fPerMinimoNovo,
          fPrAtacado1Novo, fPerAtacado1Novo
      );

      Inc(iContador);
      datamodule1.QRYPRODUTOSBASE.Next;
    end;

    // 9. Commit e Sucesso
    DataModule1.ConDados.Commit;
    ShowMessage(Format('Ajuste de preços concluído com sucesso! %d produtos atualizados.', [iContador]));

  except
    on E: Exception do
    begin
      DataModule1.ConDados.Rollback;
      ShowMessage('ERRO CRÍTICO ao aplicar ajustes. Transação CANCELADA. Detalhes: ' + E.Message);
    end;
  end;

  datamodule1.QRYPRODUTOSBASE.EnableControls;
  datamodule1.QRYPRODUTOSBASE.Refresh;
end;


procedure TFormalterapreco.AtualizarDiasSemAlteracao;
var
  DataUltimaAlteracao: TDateTime;
  DataAtual: TDateTime;
  DiasDiferenca: Extended; // Usar Extended para precisão no cálculo
begin
  // 1. Coleta a Data da Última Alteração de Preço
  // Checagem de segurança se o componente existe e se a data é válida (> 0)
  if Assigned(dtultalteracaopreco) and (dtultalteracaopreco.Date > 0) then
  begin
    DataUltimaAlteracao := dtultalteracaopreco.Date;
  end
  else
  begin
    // Caso a data seja inválida (nunca alterado), exibe N/D
    if Assigned(editdiasnaoalterapreco) then
      editdiasnaoalterapreco.Text := 'N/D';
    Exit;
  end;

  // 2. Coleta a Data Atual (Apenas a data, sem a hora)
  DataAtual := Date;

  // 3. Calcula a Diferença em Dias
  // A diferença entre duas TDateTime é dada em dias (Extended).
  // Usamos Trunc para pegar apenas a parte inteira (o número de dias completos).
  DiasDiferenca := Trunc(DataAtual - DataUltimaAlteracao);

  // 4. Exibe o resultado no TEdit
  if Assigned(editdiasnaoalterapreco) then
  begin
    // Usa FormatFloat para garantir que o número seja exibido corretamente
    editdiasnaoalterapreco.Text := FormatFloat('0', DiasDiferenca);
  end;
end;




procedure TFormalterapreco.CarregarUltimoUsuarioAlteracao;
var
  sCodInterno: string;
  sNomeUsuario: string;
begin
  // 1. Pega o código interno do produto (deve ser o mesmo que você preenche na DBLClick)
  if not Assigned(Editcodinterno) or (Trim(Editcodinterno.Text) = '') then
  begin
    editusuariomudoupreco.Text := 'N/D';
    Exit;
  end;
  sCodInterno := Trim(Editcodinterno.Text);

  // 2. Prepara e executa a consulta
  try
    // Usamos QRYUPDATE como query auxiliar temporária do DataModule1
    with DataModule1.QRYUPDATE do
    begin
      Close;

      SQL.Clear;
      SQL.Add('SELECT TOP 1');
      SQL.Add('    T2.USUARIO');
      SQL.Add('FROM');
      SQL.Add('    TabEst1Mov T1 WITH (NOLOCK)');
      SQL.Add('INNER JOIN');
      SQL.Add('    SERV T2 ON T2.Controle = T1.LkUsuario');
      SQL.Add('WHERE');
      SQL.Add('    T1.CodInterno = :CodInterno');

      // RECOMENDADO: Adicionar filtro de Tipo de Movimento (LkTipo)
      // se houver um tipo específico para 'Alteração de Preço' (Ex: LkTipo = 5)
      // Se não souber o LkTipo, esta query pega o último movimento de qualquer tipo.

      SQL.Add('ORDER BY');
      SQL.Add('    T1.Data DESC, T1.Hora DESC');

      ParamByName('CodInterno').AsString := sCodInterno;

      Open;

      // 3. Exibe o resultado
      if not IsEmpty then
      begin
        sNomeUsuario := FieldByName('USUARIO').AsString;

        // Exibe o nome do usuário no Edit
        if Assigned(editusuariomudoupreco) then
          editusuariomudoupreco.Text := sNomeUsuario;
      end
      else
      begin
        if Assigned(editusuariomudoupreco) then
          editusuariomudoupreco.Text := 'Não Encontrado';
      end;
      Close;
    end;
  except
    on E: Exception do
    begin
      // Em caso de erro na consulta
      if Assigned(editusuariomudoupreco) then
        editusuariomudoupreco.Text := 'Erro: ' + E.Message;
    end;
  end;
end;



end.
