unit FRMMOVIMENTO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  Tformmov = class(TForm)
    Panel2: TPanel;
    DBGridmovestoque: TDBGrid;
    Labelprod: TLabel;
    procedure CarregaMovProdutosContados;
    procedure CarregaMovalterapreco;
    procedure CarregarMovimentoParaProduto(const ACodInterno: string);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formmov: Tformmov;

implementation

{$R *.dfm}

uses CONEXAOBD, FRMCONTARESTOQUE, FRMSelectproduto, FRMSENHA, FRM_MENU,
  FRMALTERAPRECOS, FRMPOSICAOESTOQUE;


procedure Tformmov.CarregaMovProdutosContados;
var
  sCodInterno: string;
begin
  // 1. Validação e Captura do CodInterno do formulário principal (frmmenu)
  if not Assigned(formcontaestoque) or not Assigned(formcontaestoque.DBText45) or (Trim(formcontaestoque.DBText45.Caption) = '') then
  begin
    ShowMessage('O Código Interno do produto não está disponível no formulário principal.');
    Exit;
  end;

  sCodInterno := Trim(formcontaestoque.DBText45.Caption);

  // 1.5. CAPTURA O NOME DO PRODUTO E EXIBE NA LABEL DO NOVO FORMULÁRIO
  if Assigned(formcontaestoque.DBText14) then
    LabelProd.Caption := formcontaestoque.DBText14.Caption
  else
    LabelProd.Caption := 'Produto não carregado';

  // Verifica se o DBGrid tem o DataSource antes de tentar abrir
  if not Assigned(DBGridmovestoque.DataSource) then
  begin
    // Você precisa de um TDataSource associado à qryTabest1mov no DataModule1
    // Supondo que você criou: DataModule1.DSqryTabest1mov
    DBGridmovestoque.DataSource := DataModule1.DSqryTabest1mov;
  end;

  try
    // 2. Define e executa o SQL para consultar a TabEst1Mov
    with DataModule1.qryTabest1mov do
    begin
      Close;

      SQL.Clear;
      SQL.Add('SELECT top 50');
      SQL.Add('    M.*, T.*, U.USUARIO AS NomeUsuario');

      SQL.Add('FROM');
      SQL.Add('    TabEst1Mov M WITH (NOLOCK)');
      SQL.Add('INNER JOIN SERV U ON U.Controle = M.LkUsuario');
      SQL.Add('INNER JOIN TabEstMovTipo T ON T.Controle = M.LkTipo');

      // Filtro pelo CodInterno
      SQL.Add('WHERE M.CodInterno = :CodInterno');
      SQL.Add('ORDER BY M.Data DESC');

      // Define o parâmetro antes de abrir
      ParamByName('CodInterno').AsString := sCodInterno;

      // 3. Abre a Query
      Open;
    end;

    // 4. Exibe o formulário modalmente
    Self.ShowModal;

  except
    on E: Exception do
    begin
      ShowMessage('Erro ao consultar movimentação: ' + E.Message);
    end;
  end;
end;


procedure Tformmov.CarregaMovalterapreco;
var
  sCodInterno: string;
begin
  // 1. Validação e Captura do CodInterno do formulário principal (frmmenu)
  if not Assigned(Formalterapreco) or not Assigned(Formalterapreco.Editcodinterno) or (Trim(Formalterapreco.Editcodinterno.text) = '') then
  begin
    ShowMessage('O Código Interno do produto não está disponível no formulário principal.');
    Exit;
  end;

  sCodInterno := Trim(Formalterapreco.Editcodinterno.text);

  // 1.5. CAPTURA O NOME DO PRODUTO E EXIBE NA LABEL DO NOVO FORMULÁRIO
  if Assigned(Formalterapreco.Editcodinterno) then
    LabelProd.Caption := Formalterapreco.Editcodinterno.text
  else
    LabelProd.Caption := 'Produto não carregado';

  // Verifica se o DBGrid tem o DataSource antes de tentar abrir
  if not Assigned(DBGridmovestoque.DataSource) then
  begin
    // Você precisa de um TDataSource associado à qryTabest1mov no DataModule1
    // Supondo que você criou: DataModule1.DSqryTabest1mov
    DBGridmovestoque.DataSource := DataModule1.DSqryTabest1mov;
  end;

  try
    // 2. Define e executa o SQL para consultar a TabEst1Mov
    with DataModule1.qryTabest1mov do
    begin
      Close;

      SQL.Clear;
      SQL.Add('SELECT top 50');
      SQL.Add('    M.*, T.*, U.USUARIO AS NomeUsuario');

      SQL.Add('FROM');
      SQL.Add('    TabEst1Mov M WITH (NOLOCK)');
      SQL.Add('INNER JOIN SERV U ON U.Controle = M.LkUsuario');
      SQL.Add('INNER JOIN TabEstMovTipo T ON T.Controle = M.LkTipo');

      // Filtro pelo CodInterno
      SQL.Add('WHERE M.CodInterno = :CodInterno');
      SQL.Add('ORDER BY M.Data DESC');

      // Define o parâmetro antes de abrir
      ParamByName('CodInterno').AsString := sCodInterno;

      // 3. Abre a Query
      Open;
    end;

    // 4. Exibe o formulário modalmente
    Self.ShowModal;

  except
    on E: Exception do
    begin
      ShowMessage('Erro ao consultar movimentação: ' + E.Message);
    end;
  end;
end;



procedure Tformmov.CarregarMovimentoParaProduto(const ACodInterno: string);
var
  sCodInterno: string;
begin
  sCodInterno := ACodInterno;

  if (Trim(sCodInterno) = '') then
  begin
    ShowMessage('O Código Interno do produto não foi informado para a consulta de movimento.');
    Exit;
  end;

  // 1. Definição da Conexão e Execução da Query
  // Assumindo que DataModule1.qryTabest1mov existe e está configurada
  try
    with DataModule1.qryTabest1mov do
    begin
      Close;

      // O SQL deve ser o mesmo usado na sua rotina original (com filtro WHERE)
      // Exemplo do filtro:
      // SQL.Add('WHERE M.CodInterno = :CodInterno');

      ParamByName('CodInterno').AsString := sCodInterno;
      Open;

      // 2. Atualiza a label do produto (Busca o nome para exibir no cabeçalho)
      with DataModule1.QRYPRODUTOSBASE do // QRYPRODUTOSBASE é uma query auxiliar
      begin
        Close;
        SQL.Text := 'SELECT PRODUTO FROM TABEST1 WITH (NOLOCK) WHERE CodInterno = :Cod';
        ParamByName('Cod').AsString := sCodInterno;
        Open;
        if not IsEmpty then
          LabelProd.Caption := 'Movimentação do Produto: ' + FieldByName('PRODUTO').AsString
        else
          LabelProd.Caption := 'Movimentação (Cod: ' + sCodInterno + ')';
      end;
    end;

    // 3. Exibe o formulário
    Self.ShowModal;
  except
    on E: Exception do
      ShowMessage('Erro ao carregar movimentação: ' + E.Message);
  end;
end;







end.
