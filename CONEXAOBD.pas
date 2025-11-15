unit CONEXAOBD;

interface

uses
  System.SysUtils, System.Classes,MidasLib, Uni, UniProvider, SQLServerUniProvider, UniDacVcl, System.IniFiles,
  DBAccess, Data.DB, MemDS,   windows , forms,
    Vcl.Dialogs,  System.IOUtils, DASQLMonitor, UniSQLMonitor, Datasnap.DBClient,
  frxClass, frxDBSet;

    const
  ARQUIVO_CONEXAO = 'Servcom.dll';

type
  TDataModule1 = class(TDataModule)
    ConDados: TUniConnection; // Componente de conexão

    SQLServerUniProvider1: TSQLServerUniProvider;
    UniSQLMonitor1: TUniSQLMonitor;
    UniConnectDialog1: TUniConnectDialog;
    QRYUPDATE: TUniQuery;
    QRYCRIATABELAS: TUniQuery;
    QRYSEQ: TUniQuery;
    QRYHIS_CAB: TUniQuery;
    QRYHIS_ITENS: TUniQuery;
    CDSPRODUTOS: TClientDataSet;
    CDSPRODUTOSCodInterno: TStringField;
    CDSPRODUTOSProduto: TStringField;
    CDSPRODUTOSGrupo: TStringField;
    CDSPRODUTOSMarca: TStringField;
    CDSPRODUTOSFornecedor: TStringField;
    CDSPRODUTOSPeriodo: TStringField;
    CDSPRODUTOSLocalizacao: TStringField;
    CDSPRODUTOSprecocusto: TCurrencyField;
    CDSPRODUTOScustototal: TCurrencyField;
    CDSPRODUTOSCodFornecedor: TStringField;
    CDSPRODUTOSValorDiferenca: TCurrencyField;
    CDSPRODUTOSEstoque: TFloatField;
    CDSPRODUTOSCodbarra: TStringField;
    CDSPRODUTOSQuantidadeVendida: TFloatField;
    CDSPRODUTOSContagem: TFloatField;
    CDSPRODUTOSDiferenca: TFloatField;
    CDSPRODUTOSID_ORDEM: TIntegerField;
    DSCDSPRODUTOS: TDataSource;
    DSCDSTOTAIS: TDataSource;
    CDSTOTAIS: TClientDataSet;
    CDSTOTAISTOTALCUSTO: TCurrencyField;
    CDSTOTAISTOTALDIFERENCA: TCurrencyField;
    QRYPRODUTOSBASE: TUniQuery;
    DSQRYPRODUTOSBASE: TDataSource;
    qryTabest1mov: TUniQuery;
    DSqryTabest1mov: TDataSource;
    QRYPRODUTOSCONTADOS: TUniQuery;
    QRYPRODUTOSCONTADOSID_ITEM: TIntegerField;
    QRYPRODUTOSCONTADOSNUMRELATORIO: TIntegerField;
    QRYPRODUTOSCONTADOSCODINTERNO: TStringField;
    QRYPRODUTOSCONTADOSPRODUTO_DESCRICAO: TStringField;
    QRYPRODUTOSCONTADOSGRUPO: TStringField;
    QRYPRODUTOSCONTADOSMARCA: TStringField;
    QRYPRODUTOSCONTADOSFORNECEDOR: TStringField;
    QRYPRODUTOSCONTADOSCODFORNECEDOR: TStringField;
    QRYPRODUTOSCONTADOSCODBARRA: TStringField;
    QRYPRODUTOSCONTADOSQTD_VENDIDA: TFloatField;
    QRYPRODUTOSCONTADOSLOCALIZACAO: TStringField;
    QRYPRODUTOSCONTADOSCUSTO_TOTAL: TCurrencyField;
    QRYPRODUTOSCONTADOSESTOQUE_ANTERIOR: TFloatField;
    QRYPRODUTOSCONTADOSCONTAGEM_FINAL: TFloatField;
    QRYPRODUTOSCONTADOSDIFERENCA: TFloatField;
    QRYPRODUTOSCONTADOSPRECO_CUSTO: TCurrencyField;
    QRYPRODUTOSCONTADOSVALOR_DIFERENCA: TCurrencyField;
    QRYPEDIDOS: TUniQuery;
    DSQRYPEDIDOS: TDataSource;
    DSQRYPRODUTOSCONTADOS: TDataSource;
    QRYITENSHIST: TUniQuery;
    DSQRYITENSHIST: TDataSource;
    QRYMARCA: TUniQuery;
    QRYGRUPOS: TUniQuery;
    QRYFORNECEDOR: TUniQuery;
    QRYUPDATETABEST1: TUniQuery;
    QRYUPDATETABESTMOV: TUniQuery;
    QryBuscaLkItem: TUniQuery;
    DBPRODUTOS: TfrxDBDataset;
    DBTOTAIS: TfrxDBDataset;
    frxDBCAB: TfrxDBDataset;
    frxRelatorio: TfrxReport;
    QRYSELECIONAPRODUTOS: TUniQuery;
    DSQRYSELECIONAPRODUTO: TDataSource;
    QRYALTERAPRECOS: TUniQuery;
    QRYPRODUTOSDETALHES: TUniQuery;
    QRYPRODUTOSDETALHESControle: TIntegerField;
    QRYPRODUTOSDETALHESCodigo: TStringField;
    QRYPRODUTOSDETALHESCodInterno: TStringField;
    QRYPRODUTOSDETALHESCodORIGEM: TStringField;
    QRYPRODUTOSDETALHESProduto: TStringField;
    QRYPRODUTOSDETALHESLkSetor: TIntegerField;
    QRYPRODUTOSDETALHESFabricante: TStringField;
    QRYPRODUTOSDETALHESLkFornec: TIntegerField;
    QRYPRODUTOSDETALHESPrecoCompra: TFloatField;
    QRYPRODUTOSDETALHESPrecoCusto: TFloatField;
    QRYPRODUTOSDETALHESCustoMedio: TFloatField;
    QRYPRODUTOSDETALHESPrecoVenda: TFloatField;
    QRYPRODUTOSDETALHESQuantidade: TFloatField;
    QRYPRODUTOSDETALHESEstMinimo: TFloatField;
    QRYPRODUTOSDETALHESUnidade: TStringField;
    QRYPRODUTOSDETALHESLucro: TFloatField;
    QRYPRODUTOSDETALHESMoeda: TStringField;
    QRYPRODUTOSDETALHESUltReaj: TDateTimeField;
    QRYPRODUTOSDETALHESObs: TStringField;
    QRYPRODUTOSDETALHESNaoSaiTabela: TBooleanField;
    QRYPRODUTOSDETALHESInativo: TBooleanField;
    QRYPRODUTOSDETALHESCodIPI: TStringField;
    QRYPRODUTOSDETALHESIPI: TFloatField;
    QRYPRODUTOSDETALHESCST: TStringField;
    QRYPRODUTOSDETALHESICMS: TFloatField;
    QRYPRODUTOSDETALHESBaseCalculo: TFloatField;
    QRYPRODUTOSDETALHESPerPrazo: TFloatField;
    QRYPRODUTOSDETALHESPrPrazo: TFloatField;
    QRYPRODUTOSDETALHESPerAtacado: TFloatField;
    QRYPRODUTOSDETALHESPrAtacado: TFloatField;
    QRYPRODUTOSDETALHESQtdMedia: TFloatField;
    QRYPRODUTOSDETALHESUltVenda: TDateTimeField;
    QRYPRODUTOSDETALHESQtdDepos: TFloatField;
    QRYPRODUTOSDETALHESQtdCompra: TFloatField;
    QRYPRODUTOSDETALHESTamanho: TStringField;
    QRYPRODUTOSDETALHESCor: TStringField;
    QRYPRODUTOSDETALHESDESCRICAO: TStringField;
    QRYPRODUTOSDETALHESHORAINI: TStringField;
    QRYPRODUTOSDETALHESHORAFIM: TStringField;
    QRYPRODUTOSDETALHESPERMINIMO: TFloatField;
    QRYPRODUTOSDETALHESPRMINIMO: TFloatField;
    QRYPRODUTOSDETALHESPeso: TFloatField;
    QRYPRODUTOSDETALHESTempo: TStringField;
    QRYPRODUTOSDETALHESValidade: TDateTimeField;
    QRYPRODUTOSDETALHESComissao: TFloatField;
    QRYPRODUTOSDETALHESLkGuiche: TIntegerField;
    QRYPRODUTOSDETALHESPrecoPDV: TFloatField;
    QRYPRODUTOSDETALHESlkSClasse: TIntegerField;
    QRYPRODUTOSDETALHESlkPAtivo: TIntegerField;
    QRYPRODUTOSDETALHESGenerico: TStringField;
    QRYPRODUTOSDETALHESTipoPreco: TStringField;
    QRYPRODUTOSDETALHESDtAtualiza: TDateTimeField;
    QRYPRODUTOSDETALHESApresenta: TStringField;
    QRYPRODUTOSDETALHESprazoValidade: TIntegerField;
    QRYPRODUTOSDETALHESDescPromocao: TFloatField;
    QRYPRODUTOSDETALHESLkClasse: TIntegerField;
    QRYPRODUTOSDETALHESLkControlado: TIntegerField;
    QRYPRODUTOSDETALHESUnAtacado: TStringField;
    QRYPRODUTOSDETALHESQtdAtacado: TFloatField;
    QRYPRODUTOSDETALHESLkItemVInc: TIntegerField;
    QRYPRODUTOSDETALHESQtdItemVinc: TFloatField;
    QRYPRODUTOSDETALHESidEmpresa: TIntegerField;
    QRYPRODUTOSDETALHESCodConvenio: TIntegerField;
    QRYPRODUTOSDETALHESTrb_Origem: TIntegerField;
    QRYPRODUTOSDETALHESTrb_ICMS_CST: TIntegerField;
    QRYPRODUTOSDETALHESTrb_PICMS: TFloatField;
    QRYPRODUTOSDETALHESTrb_PReducao: TFloatField;
    QRYPRODUTOSDETALHESTrb_PIVA: TFloatField;
    QRYPRODUTOSDETALHESTrb_IPI_CST: TIntegerField;
    QRYPRODUTOSDETALHESTrb_PIPI: TFloatField;
    QRYPRODUTOSDETALHESTrb_ModBC: TIntegerField;
    QRYPRODUTOSDETALHESTrb_ModBCST: TIntegerField;
    QRYPRODUTOSDETALHESTrb_NCM: TIntegerField;
    QRYPRODUTOSDETALHESTrb_PIS_CST: TIntegerField;
    QRYPRODUTOSDETALHESTrb_PPIS: TFloatField;
    QRYPRODUTOSDETALHESTrb_COFINS_CST: TIntegerField;
    QRYPRODUTOSDETALHESTrb_PCOFINS: TFloatField;
    QRYPRODUTOSDETALHESPerAtacado1: TFloatField;
    QRYPRODUTOSDETALHESPerAtacado2: TFloatField;
    QRYPRODUTOSDETALHESPerAtacado3: TFloatField;
    QRYPRODUTOSDETALHESPerAtacado4: TFloatField;
    QRYPRODUTOSDETALHESPrAtacado1: TFloatField;
    QRYPRODUTOSDETALHESPrAtacado2: TFloatField;
    QRYPRODUTOSDETALHESPrAtacado3: TFloatField;
    QRYPRODUTOSDETALHESPrAtacado4: TFloatField;
    QRYPRODUTOSDETALHESData: TDateTimeField;
    QRYPRODUTOSDETALHESLkVinculado: TIntegerField;
    QRYPRODUTOSDETALHESPrAtualizavel: TIntegerField;
    QRYPRODUTOSDETALHESCodBarra: TStringField;
    QRYPRODUTOSDETALHESCodBarraCx: TStringField;
    QRYPRODUTOSDETALHESSD_IndProp: TIntegerField;
    QRYPRODUTOSDETALHESSD_CodCta: TStringField;
    QRYPRODUTOSDETALHESSD_IDENT_MERC: TIntegerField;
    QRYPRODUTOSDETALHESDtAlteracao: TDateTimeField;
    QRYPRODUTOSDETALHESLkUsuario: TIntegerField;
    QRYPRODUTOSDETALHESCFOP: TIntegerField;
    QRYPRODUTOSDETALHESCFOPEnt: TIntegerField;
    QRYPRODUTOSDETALHESComissaoVlFixo: TFloatField;
    QRYPRODUTOSDETALHESPrConvenio: TFloatField;
    QRYPRODUTOSDETALHESQtdEmbalagem: TFloatField;
    QRYPRODUTOSDETALHESUnEmbalagem: TStringField;
    QRYPRODUTOSDETALHESQtdUsoDia: TFloatField;
    QRYPRODUTOSDETALHESLkConvenio: TIntegerField;
    QRYPRODUTOSDETALHESGarantia: TFloatField;
    QRYPRODUTOSDETALHESTipoGarantia: TStringField;
    QRYPRODUTOSDETALHESPrUnEmbalagem: TFloatField;
    QRYPRODUTOSDETALHEScProdANP: TStringField;
    QRYPRODUTOSDETALHESQtdFiscal: TFloatField;
    QRYPRODUTOSDETALHESNCM: TStringField;
    QRYPRODUTOSDETALHESLkGrade: TIntegerField;
    QRYPRODUTOSDETALHESLkSubGrupo: TIntegerField;
    QRYPRODUTOSDETALHESLkGradeCor: TIntegerField;
    QRYPRODUTOSDETALHESLkGradeTam: TIntegerField;
    QRYPRODUTOSDETALHESLkTpAgregado: TIntegerField;
    QRYPRODUTOSDETALHESLkCor: TIntegerField;
    QRYPRODUTOSDETALHESLkVasilhame: TIntegerField;
    QRYPRODUTOSDETALHESQtdVazio: TFloatField;
    QRYPRODUTOSDETALHESAliq_ICMS_Cred_Pressumido: TFloatField;
    QRYPRODUTOSDETALHESCEST: TStringField;
    QRYPRODUTOSDETALHESLkDescPromocao: TIntegerField;
    QRYPRODUTOSDETALHESQtdMinPrAtacado: TFloatField;
    QRYPRODUTOSDETALHESLerPesoBalanca: TBooleanField;
    QRYPRODUTOSDETALHESLkVenPersonalizada: TIntegerField;
    QRYPRODUTOSDETALHESLkImprimeSetor: TIntegerField;
    QRYPRODUTOSDETALHESLkPrecoPorTamanho: TIntegerField;
    QRYPRODUTOSDETALHESPrAtacado1Un: TFloatField;
    QRYPRODUTOSDETALHESPrAtacado2Un: TFloatField;
    QRYPRODUTOSDETALHESPrAtacado3Un: TFloatField;
    QRYPRODUTOSDETALHESPrAtacado4Un: TFloatField;
    QRYPRODUTOSDETALHESLkTipoProd: TIntegerField;
    QRYPRODUTOSDETALHESLkFabricante: TIntegerField;
    QRYPRODUTOSDETALHESfar_GrpAnatomico: TIntegerField;
    QRYPRODUTOSDETALHESfar_GrpFarma: TIntegerField;
    QRYPRODUTOSDETALHESfar_GrpQuimico: TIntegerField;
    QRYPRODUTOSDETALHESfar_GrpTerap: TIntegerField;
    QRYPRODUTOSDETALHESfar_CodGuia: TIntegerField;
    QRYPRODUTOSDETALHESfar_CodAnvisa: TStringField;
    QRYPRODUTOSDETALHESfar_RegMS: TStringField;
    QRYPRODUTOSDETALHESfar_ATC: TStringField;
    QRYPRODUTOSDETALHESfar_Hospitalar: TStringField;
    QRYPRODUTOSDETALHESTipoLista: TStringField;
    QRYPRODUTOSDETALHESTipo: TStringField;
    QRYPRODUTOSDETALHESCodGrade: TIntegerField;
    QRYPRODUTOSDETALHESCodFornecedor: TStringField;
    QRYPRODUTOSDETALHESLkFotoPrincipal: TIntegerField;
    QRYPRODUTOSDETALHESDtUltAtualizacao: TDateTimeField;
    qryTabest1movidControle: TIntegerField;
    qryTabest1movIdEmpresa: TIntegerField;
    qryTabest1movData: TDateTimeField;
    qryTabest1movPedido: TIntegerField;
    qryTabest1movLkItem: TIntegerField;
    qryTabest1movCodInterno: TStringField;
    qryTabest1movQuantidade: TFloatField;
    qryTabest1movSaldoAnterior: TFloatField;
    qryTabest1movSaldo: TFloatField;
    qryTabest1movLkOperacao: TIntegerField;
    qryTabest1movLkVarejo: TIntegerField;
    qryTabest1movLkUsuario: TIntegerField;
    qryTabest1movLkTipo: TIntegerField;
    qryTabest1movHora: TStringField;
    qryTabest1movTerminal: TStringField;
    qryTabest1movLkCliFor: TIntegerField;
    qryTabest1movPrecoCustoAnterior: TCurrencyField;
    qryTabest1movPrecoCustoNovo: TCurrencyField;
    qryTabest1movPrecoVendaAnterior: TCurrencyField;
    qryTabest1movPrecoVendaNovo: TCurrencyField;
    qryTabest1movMargemVarejoAnterior: TFloatField;
    qryTabest1movMargemVarejoNova: TFloatField;
    qryTabest1movPrPrazoAnterior: TCurrencyField;
    qryTabest1movPrPrazoNovo: TCurrencyField;
    qryTabest1movPerPrazoAnterior: TFloatField;
    qryTabest1movPerPrazoNovo: TFloatField;
    qryTabest1movPrAtacadoVarejoAnterior: TCurrencyField;
    qryTabest1movPrAtacadoVarejoNovo: TCurrencyField;
    qryTabest1movPerAtacadoVarejoAnterior: TFloatField;
    qryTabest1movPerAtacadoVarejoNovo: TFloatField;
    qryTabest1movPrMinimoAnterior: TCurrencyField;
    qryTabest1movPrMinimoNovo: TCurrencyField;
    qryTabest1movPerMinimoAnterior: TFloatField;
    qryTabest1movPerMinimoNovo: TFloatField;
    qryTabest1movPrAtacado1Anterior: TCurrencyField;
    qryTabest1movPrAtacado1Novo: TCurrencyField;
    qryTabest1movPerAtacado1Anterior: TFloatField;
    qryTabest1movPerAtacado1Novo: TFloatField;
    qryTabest1movPrAtacado2Anterior: TCurrencyField;
    qryTabest1movPrAtacado2Novo: TCurrencyField;
    qryTabest1movPerAtacado2Anterior: TFloatField;
    qryTabest1movPerAtacado2Novo: TFloatField;
    qryTabest1movPrAtacado3Anterior: TCurrencyField;
    qryTabest1movPrAtacado3Novo: TCurrencyField;
    qryTabest1movPerAtacado3Anterior: TFloatField;
    qryTabest1movPerAtacado3Novo: TFloatField;
    qryTabest1movPrAtacado4Anterior: TCurrencyField;
    qryTabest1movPrAtacado4Novo: TCurrencyField;
    qryTabest1movPerAtacado4Anterior: TFloatField;
    qryTabest1movPerAtacado4Novo: TFloatField;


procedure DataModuleCreate(Sender: TObject); // DataSource para grid
  private
    procedure CarregarConexao(const NomeConnection: string;
      UniConnectDialog: TUniConnectDialog);

    function LerArqCfg(Topico, variavel, sNomeArquivo: string): string;
    function Alltrim(const Search: string): string;
    function LerArquivoConteudo(sNomeArquivo: String): WideString;
    { Private declarations }
  public
      procedure ConectaBanco(bAbre: Boolean=true);
    { Public declarations }

  end;

var
  DataModule1: TDataModule1; // Instância global do DataModule

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses FRMAGESTOQUE, FRMSENHA;






{$R *.dfm}

 function TDataModule1.LerArqCfg(Topico, variavel, sNomeArquivo: string): string;
var
  ArquivoINI: TIniFile;
  ArquivoTXT: TextFile;
  sArquivo: WideString;
  sLinha: string;
  iPos, iTam, iTamLinha: Integer;
begin
  if Pos(':', sNomeArquivo) > 0 then
    sArquivo := PChar(sNomeArquivo)
  else
    sArquivo := PChar(ExtractFilePath(Application.ExeName) + sNomeArquivo);

  // Caso seja um Arquivo sem SESSÃO [] OU SEJA UM TXT
  if Topico <= ' ' then
  begin
    iPos := 0;
    iTam := Length(variavel + '=');
    iTamLinha := 0;
    AssignFile(ArquivoTXT, sArquivo);

    Reset(ArquivoTXT);
    While not Eoln(ArquivoTXT) do
    begin
      Readln(ArquivoTXT, sLinha);
      iPos := Pos(UpperCase(variavel) + '=', UpperCase(sLinha));
      if iPos > 0 then
      begin
        // iTamLinha := Length(sLinha);
        sLinha := Alltrim(Copy(sLinha, (iPos + iTam), 100));
        // Ler Até a Posição Ponto e Virgula (;)
        iPos := Pos(';', UpperCase(sLinha));
        if iPos > 0 then
        begin
          sLinha := Alltrim(Copy(sLinha, 1, iPos - 1));
        end;

        Result := sLinha;
        Break;
      end;
    end;
    CloseFile(ArquivoTXT); // Fecha o Arquivo
  end;
  IF iPos > 0 then
    Exit;

  ArquivoINI := TIniFile.Create(sArquivo);
  ArquivoINI.ReadString(Topico, variavel, '');
  Result := ArquivoINI.ReadString(Topico, variavel, '');
  ArquivoINI.Free;
end;


procedure TDataModule1.CarregarConexao(const NomeConnection: string; UniConnectDialog: TUniConnectDialog);
var
  CaminhoArquivo: string;
  ConnStr: string;
  Connection: TUniConnection;
begin
  CaminhoArquivo := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0))) + ARQUIVO_CONEXAO;

  // Obtem o componente dinamicamente
  Connection := TUniConnection(FindComponent(NomeConnection));
  if not Assigned(Connection) then
  begin
    ShowMessage('Componente ' + NomeConnection + ' não encontrado!');
    Exit;
  end;

  // Verifica se o arquivo de conexão existe
  if FileExists(CaminhoArquivo) then
  begin
    ConnStr := Trim(TFile.ReadAllText(CaminhoArquivo, TEncoding.UTF8));
    Connection.Connected := False;
    Connection.ConnectString := ConnStr;
    try
      Connection.Connected := True;
    except
      on E: Exception do
      begin
        ShowMessage('Erro ao conectar: ' + E.Message);
        if Assigned(UniConnectDialog) then
        begin
          if UniConnectDialog.Execute then
          begin
            Connection.Connected := True;
            TFile.WriteAllText(CaminhoArquivo, Connection.ConnectString, TEncoding.UTF8);
          end;
        end;
      end;
    end;
  end
  else
  begin
    // Se não existe, abre o diálogo de conexão
    if Assigned(UniConnectDialog) and UniConnectDialog.Execute then
    begin
      Connection.Connected := True;
      TFile.WriteAllText(CaminhoArquivo, Connection.ConnectString, TEncoding.UTF8);
    end
    else
      ShowMessage('Arquivo de conexão não encontrado e usuário cancelou a configuração.');
  end;
end;

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin

  try
      //CarregarConexao('UniConnection1',UniConnectDialog1);
//      ConectaBanco(false);
      ConectaBanco(true);
  finally

  end;

end;



procedure TDataModule1.ConectaBanco(bAbre: Boolean=true);
var
  sParamServer, sParamDataBase, sParamUser, sParamPassWord: string;
  sParamProvider: string;
  bDeletaArqConexao: Boolean;

   sArqConexao : string;
  cfg_PathSistema: string;
  sConfiguracao: TStringlist;
begin

  If bAbre = FALSE then
  begin
    conDados.Close;
    Exit;
  end;

  try
    sConfiguracao := TStringlist.Create;
    cfg_PathSistema := ExtractFilePath(Application.ExeName);
    // BuscaPrimeiro Arquivo Raiz do ServSic, caso não exista, então usa do Raiz NFetop
    // sArqConexao := cfg_PathSistema + 'Servcom.dll';

    sArqConexao := '..\Servsicx\ServCom.dll';

    if not FileExists(sArqConexao) then
      sArqConexao := '..\Servsic\ServCom.dll';

    if not FileExists(sArqConexao) then
      sArqConexao := cfg_PathSistema + 'Servcom.dll';


    // uniSQLMonitor1.Active := (LerSys('DATABASE', 'DBMONITOR') = 'S');

    IF bAbre then
    begin

      bDeletaArqConexao := FALSE;

      If (not FileExists(sArqConexao)) then
      begin
        if not conDados.ConnectDialog.Execute then
        begin
          ShowMessage
            ('Configuração da conexão com Banco de Dados SQL "CANCELADA PELO USUARIO"!');
          Application.Terminate;
          Exit;
        end;

        if conDados.Connected then
        BEGIN
          Exit;
        end
        ELSE
        begin
          ShowMessage
            ('FALHA na Configuração da conexão com Banco de Dados SQL!');
          Application.Terminate;
        end;

      end;

      // Carrega Parametros
      sParamServer := LerArqCfg('', 'SERVER NAME', sArqConexao);
      if sParamServer <= ' ' then
        sParamServer := LerArqCfg('', 'Data Source', sArqConexao);

      sParamDataBase := LerArqCfg('', 'DATABASE NAME', sArqConexao);
      if sParamDataBase <= ' ' then
        sParamDataBase := LerArqCfg('', 'Initial Catalog', sArqConexao);

      sParamUser := LerArqCfg('', 'USER NAME', sArqConexao);
      if sParamUser <= ' ' then
        sParamUser := LerArqCfg('', 'User ID', sArqConexao);

      sParamPassWord := LerArqCfg('', 'PASSWORD', sArqConexao);

      IF Length(sParamProvider) <= 1 then
      begin
        sParamProvider := 'prSQL';

      end;

      // Conexão SDac
      if sParamServer > ' ' then
      begin
        conDados.Server := sParamServer;
        conDados.Database := sParamDataBase;
        conDados.Username := sParamUser;
        conDados.Password := sParamPassWord;
        bDeletaArqConexao := True;
      end
      else
      begin
        conDados.ConnectString := LerArquivoConteudo(sArqConexao);
      end;

      conDados.Connected := True;

    end
    else
    begin
      conDados.Connected := FALSE;
      conDados.Close;
    end;

  finally
    if conDados.Connected then
    begin
      sConfiguracao.Text := conDados.ConnectString;
      sConfiguracao.SaveToFile(sArqConexao);
    end;

    FreeAndNil(sConfiguracao);
  end;
end;


function TDataModule1.LerArquivoConteudo(sNomeArquivo : String): WideString ;
var
  sConfig : TStringList;
  sConteudo : WideString;

begin
  try

    sConfig := TStringList.Create;
    if FileExists(sNomeArquivo) then
    begin
      sConfig.LoadFromFile(sNomeArquivo);
      sConteudo := sConfig.Text;
    end;
    Result := sConteudo;

   except
    Result := '';
   end;
end;






function TDataModule1.Alltrim(const Search: string): string;
const
  BlackSpace = [#33 .. #126];
var

  Index: byte;

begin
  Index := 1;
  while (Index <= Length(Search)) and not(Search[Index] in BlackSpace) do
  begin
    Index := Index + 1;
  end;
  Result := Copy(Search, Index, 255);
  Index := Length(Result);
  while (Index > 0) and not(Result[Index] in BlackSpace) do
  begin
    Index := Index - 1;
  end;
  Result := Copy(Result, 1, Index);
end;








end.

