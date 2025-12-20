unit FRMSelectproduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TSelectProduto = class(TForm)
    Panel1: TPanel;
    Editselectproduto: TEdit;
    Label1: TLabel;
    DBGridprodutos: TDBGrid;
    Label2: TLabel;
    procedure LimparFormulario;
    procedure EditselectprodutoChange(Sender: TObject);
    procedure DBGridprodutosDblClick(Sender: TObject);
    procedure DBGridprodutosKeyPress(Sender: TObject; var Key: Char);
    procedure EditselectprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SelectProduto: TSelectProduto;

implementation

{$R *.dfm}

uses CONEXAOBD, FRMCONTARESTOQUE, FRM_MENU, FRMALTERAPRECOS, FRMMOVIMENTO,
  FRMPOSICAOESTOQUE, FRMSENHA;


procedure TSelectProduto.LimparFormulario;
begin
  Editselectproduto.Text := ''; // Limpa o campo de pesquisa
  DBGridProdutos.DataSource := nil; // Remove a fonte de dados temporariamente
  DataModule1.QRYSELECIONAPRODUTOS.Close; // Fecha a query
  DataModule1.QRYSELECIONAPRODUTOS.SQL.Text := 'SELECT * FROM tabest1 WHERE 1=0'; // Query vazia
  DataModule1.QRYSELECIONAPRODUTOS.Open; // Reabre a query vazia
end;

procedure TSelectProduto.DBGridprodutosDblClick(Sender: TObject);
var
  sCodInterno: string;
  iNaoSaiTabela: Integer; // << Variável local para capturar o código do produto
begin
  if not DataModule1.qrySelecionaProdutos.IsEmpty then
  begin
    // Opção 1: Lê como booleano e converte (False=0, True=1)
iNaoSaiTabela := Integer(DataModule1.qrySelecionaProdutos.FieldByName('NAOSAITABELA').AsBoolean);
    Formalterapreco.labelproduto.caption := DataModule1.qrySelecionaProdutos.FieldByName('PRODUTO').AsString;

    if Assigned(Formalterapreco.Editcodinterno) then
      Formalterapreco.Editcodinterno.Text := DataModule1.qrySelecionaProdutos.FieldByName('CODINTERNO').AsString;

    if Assigned(Formalterapreco.Editcodbarra) then
      Formalterapreco.Editcodbarra.Text := DataModule1.qrySelecionaProdutos.FieldByName('CODBARRA').AsString;

    if Assigned(Formalterapreco.Editcodfornecedor) then
      Formalterapreco.Editcodfornecedor.Text := DataModule1.qrySelecionaProdutos.FieldByName('CODFORNECEDOR').AsString;

    if Assigned(Formalterapreco.Editcodorigem) then
      Formalterapreco.Editcodorigem.Text := DataModule1.qrySelecionaProdutos.FieldByName('CODorigem').AsString;

    if Assigned(Formalterapreco.Editgrupo) then
      Formalterapreco.Editgrupo.Text := DataModule1.qrySelecionaProdutos.FieldByName('lksetor').AsString;

    if Assigned(Formalterapreco.Editmarca) then
      Formalterapreco.Editmarca.Text := DataModule1.qrySelecionaProdutos.FieldByName('fabricante').AsString;

    if Assigned(Formalterapreco.Editfornecedor) then
      Formalterapreco.Editfornecedor.Text := DataModule1.qrySelecionaProdutos.FieldByName('lkfornec').AsString;

    if Assigned(Formalterapreco.Editlocalizacao) then
      Formalterapreco.Editlocalizacao.Text := DataModule1.qrySelecionaProdutos.FieldByName('moeda').AsString;


    if Assigned(Formalterapreco.DBTexestoqueloja) then
      Formalterapreco.DBTexestoqueloja.caption := FormatFloat('0.00', DataModule1.qrySelecionaProdutos.FieldByName('quantidade').AsFloat);

    if Assigned(Formalterapreco.DBTextestoquedeposito) then
      Formalterapreco.DBTextestoquedeposito.caption := FormatFloat('0.00', DataModule1.qrySelecionaProdutos.FieldByName('qtddepos').AsFloat);

    if Assigned(Formalterapreco.DBTextestoquefiscal) then
      Formalterapreco.DBTextestoquefiscal.caption := FormatFloat('0.00', DataModule1.qrySelecionaProdutos.FieldByName('qtdfiscal').AsFloat);

    if Assigned(Formalterapreco.DBTextestoqueminino) then
      Formalterapreco.DBTextestoqueminino.caption := FormatFloat('0.00', DataModule1.qrySelecionaProdutos.FieldByName('estminimo').AsFloat);

    // DBTextestoquetotal deve ser verificado se é um TDBText (propriedade Caption) ou TDBEdit (propriedade Text)
    if Assigned(Formalterapreco.DBTextestoquetotal) then
      Formalterapreco.DBTextestoquetotal.Caption := FormatFloat('0.00', DataModule1.qrySelecionaProdutos.FieldByName('quantidade').AsFloat + DataModule1.qrySelecionaProdutos.FieldByName('qtddepos').AsFloat);


    // INFORMAÇAO DE PREÇOS

    // preço custo
    if Assigned(Formalterapreco.Editprcusto) then
      Formalterapreco.Editprcusto.Value := DataModule1.qrySelecionaProdutos.FieldByName('PrecoCusto').AsCurrency;

    // Customedio
    if Assigned(Formalterapreco.Editprcustomedio) then
      Formalterapreco.Editprcustomedio.Value := DataModule1.qrySelecionaProdutos.FieldByName('CustoMedio').AsCurrency;


    // Margem de Lucro Varejo 1
    if Assigned(Formalterapreco.editmargemvarejo1) then
      Formalterapreco.editmargemvarejo1.Value := DataModule1.qrySelecionaProdutos.FieldByName('Lucro').AsFloat;

    // Margem de Lucro Varejo 2
    if Assigned(Formalterapreco.editmargemvarejo2) then
      Formalterapreco.editmargemvarejo2.Value := DataModule1.qrySelecionaProdutos.FieldByName('perprazo').AsFloat;


    // Margem de Lucro Varejo 3
    if Assigned(Formalterapreco.editmargemvarejo3) then
      Formalterapreco.editmargemvarejo3.Value := DataModule1.qrySelecionaProdutos.FieldByName('peratacado').AsFloat;

    // Margem de Lucro Varejo 4
    if Assigned(Formalterapreco.editmargemvarejo4) then
      Formalterapreco.editmargemvarejo4.Value := DataModule1.qrySelecionaProdutos.FieldByName('perminimo').AsFloat;


    // PRECO VAREJO 1
    if Assigned(Formalterapreco.editprecovarejo1) then
      Formalterapreco.editprecovarejo1.Value := DataModule1.qrySelecionaProdutos.FieldByName('precovenda').AsFloat;

    // PRECO VAREJO 2
    if Assigned(Formalterapreco.editprecovarejo2) then
      Formalterapreco.editprecovarejo2.Value := DataModule1.qrySelecionaProdutos.FieldByName('prprazo').AsFloat;


    // PRECO VAREJO 3
    if Assigned(Formalterapreco.editprecovarejo3) then
      Formalterapreco.editprecovarejo3.Value := DataModule1.qrySelecionaProdutos.FieldByName('pratacado').AsFloat;

    // PRECO VAREJO 4
    if Assigned(Formalterapreco.editprecovarejo4) then
      Formalterapreco.editprecovarejo4.Value := DataModule1.qrySelecionaProdutos.FieldByName('prminimo').AsFloat;


    // Margem de Lucro atacado 1
    if Assigned(Formalterapreco.editmargematacado1) then
      Formalterapreco.editmargematacado1.Value := DataModule1.qrySelecionaProdutos.FieldByName('peratacado1').AsFloat;

    // Margem de Lucro atacado 2
    if Assigned(Formalterapreco.editmargematacado2) then
      Formalterapreco.editmargematacado2.Value := DataModule1.qrySelecionaProdutos.FieldByName('peratacado2').AsFloat;

    // Margem de Lucro atacado 3
    if Assigned(Formalterapreco.editmargematacado3) then
      Formalterapreco.editmargematacado3.Value := DataModule1.qrySelecionaProdutos.FieldByName('peratacado3').AsFloat;

    // Margem de Lucro atacado 4
    if Assigned(Formalterapreco.editmargematacado4) then
      Formalterapreco.editmargematacado4.Value := DataModule1.qrySelecionaProdutos.FieldByName('peratacado4').AsFloat;

    // preço atacado 1
    if Assigned(Formalterapreco.editprecoatacado1) then
      Formalterapreco.editprecoatacado1.Value := DataModule1.qrySelecionaProdutos.FieldByName('pratacado1').AsFloat;

    // preço atacado 2
    if Assigned(Formalterapreco.editprecoatacado2) then
      Formalterapreco.editprecoatacado2.Value := DataModule1.qrySelecionaProdutos.FieldByName('pratacado2').AsFloat;

    // preço atacado 3
    if Assigned(Formalterapreco.editprecoatacado3) then
      Formalterapreco.editprecoatacado3.Value := DataModule1.qrySelecionaProdutos.FieldByName('pratacado3').AsFloat;

    // preço atacado 4
    if Assigned(Formalterapreco.editprecoatacado4) then
      Formalterapreco.editprecoatacado4.Value := DataModule1.qrySelecionaProdutos.FieldByName('pratacado4').AsFloat;


    // preço atacado unitario 1
    if Assigned(Formalterapreco.editprecounatacado1) then
      Formalterapreco.editprecounatacado1.Value := DataModule1.qrySelecionaProdutos.FieldByName('pratacado1').AsFloat;

    // preço atacado unitario 2
    if Assigned(Formalterapreco.editprecounatacado2) then
      Formalterapreco.editprecounatacado2.Value := DataModule1.qrySelecionaProdutos.FieldByName('pratacado2').AsFloat;

    // preço atacado unitario 3
    if Assigned(Formalterapreco.editprecounatacado3) then
      Formalterapreco.editprecounatacado3.Value := DataModule1.qrySelecionaProdutos.FieldByName('pratacado3').AsFloat;

    // preço atacado unitario 4
    if Assigned(Formalterapreco.editprecounatacado4) then
      Formalterapreco.editprecounatacado4.Value := DataModule1.qrySelecionaProdutos.FieldByName('pratacado4').AsFloat;

    // quantidade na embalagem
    if Assigned(Formalterapreco.editqtdembalagem) then
      Formalterapreco.editqtdembalagem.text := DataModule1.qrySelecionaProdutos.FieldByName('qtdatacado').Asstring;

    // quantidade mimina para atacado
    if Assigned(Formalterapreco.editqtdminatacado) then
      Formalterapreco.editqtdminatacado.text := DataModule1.qrySelecionaProdutos.FieldByName('qtdminpratacado').Asstring;


    // data cadastro
    if Assigned(Formalterapreco.dtdatacastro) then
      Formalterapreco.dtdatacastro.Date := DataModule1.qrySelecionaProdutos.FieldByName('Data').AsDateTime; // Data de Cadastro

    // data da última venda
    if Assigned(Formalterapreco.dtultvenda) then
      Formalterapreco.dtultvenda.Date := DataModule1.qrySelecionaProdutos.FieldByName('ultvenda').AsDateTime;

    // data da última alteração geral
    if Assigned(Formalterapreco.dtultalteracao) then
      Formalterapreco.dtultalteracao.Date := DataModule1.qrySelecionaProdutos.FieldByName('DtAlteracao').AsDateTime;

    // data da última compra/reajuste
    if Assigned(Formalterapreco.dtultcompra) then
      Formalterapreco.dtultcompra.Date := DataModule1.qrySelecionaProdutos.FieldByName('ultreaj').AsDateTime;

    // usuarios que fizeram alteraçao
    if Assigned(Formalterapreco.Editultalterar) then
      Formalterapreco.Editultalterar.text := DataModule1.qrySelecionaProdutos.FieldByName ('lkusuario').Asstring;

    if not DataModule1.qrySelecionaProdutos.IsEmpty then

    // 1. CAPTURA o CodInterno do produto selecionado
    // Este é o único dado necessário para o próximo passo.
    sCodInterno := DataModule1.qrySelecionaProdutos.FieldByName('CODINTERNO').AsString;

    if Assigned(Formalterapreco.RadioGroup1) then
        begin
            // 0 (Produto, não sai da tabela) ou 1 (Serviço, sai da tabela/não conta estoque)
            Formalterapreco.RadioGroup1.ItemIndex := iNaoSaiTabela;
        end;

        Formalterapreco.AtualizarDiasSemAlteracao;
        Formalterapreco. CarregarUltimoUsuarioAlteracao;

    // 2. CRIA E ABRE o Formulário de Movimento (Tformmov)

    // Cria a instância se ela não existir

    Close;


























  end;
end;



procedure TSelectProduto.DBGridprodutosKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then // Código para tecla Enter
  begin
    DBGridProdutosDblClick(Sender); // Chama o evento de duplo clique
    Close; // Fecha o formulário de seleção
  end;
end;


procedure TSelectProduto.EditSelectProdutoChange(Sender: TObject);
var
  sFiltro: string;
  sTextoBusca: string;
begin
  // Texto a ser buscado (usado apenas uma vez para o QuotedStr)
  sTextoBusca := QuotedStr('%' + EditSelectProduto.Text + '%');

  // 1. Constrói a cláusula WHERE com todos os campos solicitados
  sFiltro :=
    'WHERE CODIGO LIKE ' + sTextoBusca +
    ' OR CODINTERNO LIKE ' + sTextoBusca +
    ' OR PRODUTO LIKE ' + sTextoBusca +
    ' OR CODBARRA LIKE ' + sTextoBusca +          // << NOVO
    ' OR CODFORNECEDOR LIKE ' + sTextoBusca +    // << NOVO
    ' OR CODORIGEM LIKE ' + sTextoBusca +        // << NOVO
    ' OR MOEDA LIKE ' + sTextoBusca;             // << NOVO (Localização)

  with DataModule1.qrySelecionaProdutos do
  begin
    Close;

    // NOTA: Usar 'SELECT *' pressupõe que a Query está configurada
    // para buscar todos os campos necessários (incluindo NAOSAITABELA).
    SQL.Text := 'SELECT * FROM TABEST1 ' + sFiltro;

    Open;
  end;

  // Associa a query ao DBGrid
  DBGridProdutos.DataSource := DataModule1.DSQRYSELECIONAPRODUTO;
end;



procedure TSelectProduto.EditselectprodutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DOWN then // Tecla para baixo
  begin
    DBGridProdutos.SetFocus; // Move o foco para o DBGrid
    SendMessage(DBGridProdutos.Handle, WM_KEYDOWN, VK_DOWN, 0); // Simula a tecla para baixo
  end
  else if Key = VK_UP then // Tecla para cima
  begin
    DBGridProdutos.SetFocus; // Move o foco para o DBGrid
    SendMessage(DBGridProdutos.Handle, WM_KEYDOWN, VK_UP, 0); // Simula a tecla para cima
  end;
end;

procedure TSelectProduto.FormShow(Sender: TObject);
begin
EditSelectProduto.SetFocus;
end;

end.
