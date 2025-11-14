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

uses CONEXAOBD, FRMAGESTOQUE;


procedure TSelectProduto.LimparFormulario;
begin
  Editselectproduto.Text := ''; // Limpa o campo de pesquisa
  DBGridProdutos.DataSource := nil; // Remove a fonte de dados temporariamente
  DataModule1.QRYSELECIONAPRODUTOS.Close; // Fecha a query
  DataModule1.QRYSELECIONAPRODUTOS.SQL.Text := 'SELECT * FROM tabest1 WHERE 1=0'; // Query vazia
  DataModule1.QRYSELECIONAPRODUTOS.Open; // Reabre a query vazia
end;

procedure TSelectProduto.DBGridprodutosDblClick(Sender: TObject);
begin
  if not DataModule1.qrySelecionaProdutos.IsEmpty then
  begin
    frmmenu.labelproduto.caption := DataModule1.qrySelecionaProdutos.FieldByName('PRODUTO').AsString;
   // FRMSvEtiqueta.svetiquetas.Editquantidade.Text := DataModule1.qrySelecionaProdutos.FieldByName('QUANTIDADE').AsString;

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
begin
  with DataModule1.qrySelecionaProdutos do
  begin
    Close;
    SQL.Text := 'SELECT CODIGO, CODINTERNO, PRODUTO, QUANTIDADE,UNIDADE, PRECOVENDA, PRPRAZO FROM TABEST1 ' +
                'WHERE CODIGO LIKE ' + QuotedStr('%' + EditSelectProduto.Text + '%') +
                ' OR CODINTERNO LIKE ' + QuotedStr('%' + EditSelectProduto.Text + '%') +
                ' OR PRODUTO LIKE ' + QuotedStr('%' + EditSelectProduto.Text + '%');
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
