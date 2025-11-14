unit FRMAGESTOQUE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, frxClass,
  frxDBSet, MemDS, DBAccess, Uni, Vcl.ComCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.DBCGrids, Datasnap.DBClient, Data.DB,
  Vcl.Touch.GestureMgr, Vcl.Mask, RxToolEdit, RxCurrEdit;






type



  Tfrmmenu = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cmbgrupo: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    cmbfornecedor: TComboBox;
    Label4: TLabel;
    cmbmarca: TComboBox;
    Label6: TLabel;
    dtfim: TDateTimePicker;
    dtinicio: TDateTimePicker;
    Label10: TLabel;
    Label8: TLabel;
    btnconsultar: TBitBtn;
    Editlocal: TEdit;
    Label5: TLabel;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    Labelitensvendidos: TLabel;
    dbgridprodutos: TDBCtrlGrid;
    Panel5: TPanel;
    DBText9: TDBText;
    Label19: TLabel;
    DBText10: TDBText;
    Label20: TLabel;
    Panel6: TPanel;
    DBText4: TDBText;
    Label14: TLabel;
    DBText5: TDBText;
    Label15: TLabel;
    Panel7: TPanel;
    Label16: TLabel;
    DBText6: TDBText;
    Label17: TLabel;
    DBText7: TDBText;
    Panel8: TPanel;
    DBText3: TDBText;
    Label13: TLabel;
    DBText1: TDBText;
    Label11: TLabel;
    Label24: TLabel;
    DBText50: TDBText;
    Panel9: TPanel;
    DBText2: TDBText;
    Label12: TLabel;
    Label18: TLabel;
    DBText8: TDBText;
    Panel10: TPanel;
    Label21: TLabel;
    Labeldiferença: TLabel;
    Label23: TLabel;
    DBTextquantidade: TDBText;
    Label22: TLabel;
    btnconsultprevenda: TButton;
    btnconfirma: TBitBtn;
    Editcontagem: TEdit;
    Panel14: TPanel;
    Pnproduto: TPanel;
    Labelinfor: TLabel;
    Label1: TLabel;
    DBTextproduto: TDBText;
    TabSheet2: TTabSheet;
    Panel22: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    Panel16: TPanel;
    Label26: TLabel;
    DBTextcod: TDBText;
    DBText22: TDBText;
    Label72: TLabel;
    DBText49: TDBText;
    Label73: TLabel;
    Panel17: TPanel;
    DBTextdif: TDBText;
    Label27: TLabel;
    DBText25: TDBText;
    Label71: TLabel;
    Panel18: TPanel;
    DBTextqtd: TDBText;
    Label28: TLabel;
    DBText24: TDBText;
    Label69: TLabel;
    Panel19: TPanel;
    Label29: TLabel;
    DBText11: TDBText;
    Panel20: TPanel;
    Label30: TLabel;
    DBTextest: TDBText;
    DBText23: TDBText;
    Label63: TLabel;
    Panel21: TPanel;
    Label31: TLabel;
    DBTextprod: TDBText;
    DBText26: TDBText;
    Label62: TLabel;
    Panel23: TPanel;
    btnsalvaprog: TBitBtn;
    btnatualizahist: TBitBtn;
    btnlimpalista: TBitBtn;
    btnapagar: TBitBtn;
    Panel26: TPanel;
    LabelStatusConferencia: TLabel;
    TabSheet4: TTabSheet;
    Panel46: TPanel;
    DBCtrlGridprodabertos: TDBCtrlGrid;
    Panel33: TPanel;
    Label34: TLabel;
    DBText27: TDBText;
    Label40: TLabel;
    DBText28: TDBText;
    Panel38: TPanel;
    DBText29: TDBText;
    Label41: TLabel;
    Label42: TLabel;
    DBText30: TDBText;
    Panel39: TPanel;
    Label43: TLabel;
    DBText31: TDBText;
    Label44: TLabel;
    DBText32: TDBText;
    Panel40: TPanel;
    DBText33: TDBText;
    Label45: TLabel;
    DBText34: TDBText;
    Label46: TLabel;
    Panel41: TPanel;
    DBText35: TDBText;
    Label47: TLabel;
    DBText36: TDBText;
    Label48: TLabel;
    Panel49: TPanel;
    btnconsultartodos: TBitBtn;
    Panel11: TPanel;
    Label75: TLabel;
    DBCtrlGridpedidos: TDBCtrlGrid;
    Panel42: TPanel;
    DBText39: TDBText;
    Label51: TLabel;
    Panel43: TPanel;
    DBText41: TDBText;
    Label53: TLabel;
    DBText42: TDBText;
    Label54: TLabel;
    Panel44: TPanel;
    DBText43: TDBText;
    Label55: TLabel;
    DBText44: TDBText;
    Label56: TLabel;
    Panel45: TPanel;
    DBText40: TDBText;
    Label52: TLabel;
    DBText37: TDBText;
    Panel32: TPanel;
    DBText38: TDBText;
    Label50: TLabel;
    TabSheet3: TTabSheet;
    Panel37: TPanel;
    btnRetomarProgresso: TButton;
    btnapagahistorico: TButton;
    btnrelatpositivo: TBitBtn;
    btnrelatnegativo: TBitBtn;
    btnrelacorreto: TBitBtn;
    btnatualizaestoque: TBitBtn;
    btnmovimento: TButton;
    Panel12: TPanel;
    Panel13: TPanel;
    Label9: TLabel;
    DBGridprodcontados: TDBCtrlGrid;
    Panel24: TPanel;
    Label32: TLabel;
    DBText14: TDBText;
    DBText15: TDBText;
    Label58: TLabel;
    Panel25: TPanel;
    Label33: TLabel;
    DBText16: TDBText;
    DBText17: TDBText;
    Label59: TLabel;
    Panel27: TPanel;
    DBText18: TDBText;
    Label35: TLabel;
    DBText19: TDBText;
    Label60: TLabel;
    Panel28: TPanel;
    DBText20: TDBText;
    Label36: TLabel;
    DBText21: TDBText;
    Label61: TLabel;
    Panel15: TPanel;
    DBText12: TDBText;
    Label25: TLabel;
    DBText13: TDBText;
    Label37: TLabel;
    DBText45: TDBText;
    Label38: TLabel;
    Panel29: TPanel;
    Label7: TLabel;
    DBGRIDHISTORICO: TDBGrid;
    TabSheet5: TTabSheet;
    Panel50: TPanel;
    Panel51: TPanel;
    DBText51: TDBText;
    Label64: TLabel;
    DBText52: TDBText;
    Label65: TLabel;
    DBText53: TDBText;
    Label74: TLabel;
    Panel52: TPanel;
    DBText54: TDBText;
    Label66: TLabel;
    Label67: TLabel;
    DBText55: TDBText;
    Panel53: TPanel;
    Label68: TLabel;
    DBText56: TDBText;
    DBText46: TDBText;
    Label39: TLabel;
    Label49: TLabel;
    DBText47: TDBText;
    Panel54: TPanel;
    DBText57: TDBText;
    Label70: TLabel;
    Label57: TLabel;
    DBText48: TDBText;
    DBGridmovestoque: TDBGrid;
    TabSheet8: TTabSheet;
    dsQRYRKVEND: TDataSource;
    QRYRKVEND: TUniQuery;
    QRYPRODUTOSABERTOS: TUniQuery;
    DSQRYPRODUTOSABERTOS: TDataSource;
    QRYHISTORICO: TUniQuery;
    QRYHISTORICONUMRELATORIO: TIntegerField;
    QRYHISTORICODATA_AJUSTE: TDateTimeField;
    QRYHISTORICOUSUARIO: TStringField;
    QRYHISTORICOLKUSUARIO: TIntegerField;
    QRYHISTORICOTOTAL_CUSTO_DIF: TCurrencyField;
    QRYHISTORICOPERIODO_INICIO: TDateField;
    QRYHISTORICOPERIODO_FIM: TDateField;
    QRYHISTORICOGRUPO_FILTRO: TStringField;
    QRYHISTORICOMARCA_FILTRO: TStringField;
    QRYHISTORICOFORNECEDOR_FILTRO: TStringField;
    QRYHISTORICOLOCALIZACAO_FILTRO: TStringField;
    QRYHISTORICOSTATUS: TBooleanField;
    DSQRYHISTORICO: TDataSource;
    PageControl3: TPageControl;
    TabSheet6: TTabSheet;
    Panel30: TPanel;
    btnconsultaprodutos: TButton;
    Labelproduto: TLabel;
    Panel55: TPanel;
    Panel56: TPanel;
    Label94: TLabel;
    Edit1: TEdit;
    Panel57: TPanel;
    Label95: TLabel;
    Edit2: TEdit;
    Panel58: TPanel;
    Label96: TLabel;
    Edit3: TEdit;
    Panel59: TPanel;
    Label97: TLabel;
    Edit4: TEdit;
    Panel60: TPanel;
    Label98: TLabel;
    Edit5: TEdit;
    Panel61: TPanel;
    Label99: TLabel;
    Edit6: TEdit;
    Panel62: TPanel;
    Label100: TLabel;
    Edit7: TEdit;
    Panel63: TPanel;
    Label101: TLabel;
    Edit8: TEdit;
    RadioGroup1: TRadioGroup;
    Label102: TLabel;
    TabSheet10: TTabSheet;
    Label76: TLabel;
    Panel31: TPanel;
    Label77: TLabel;
    Panel34: TPanel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    CEPRECOATACADO4: TCurrencyEdit;
    CEPRECOATACADO3: TCurrencyEdit;
    CEPRECOATACADO2: TCurrencyEdit;
    CEPRECOATACADO1: TCurrencyEdit;
    Panel35: TPanel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    CEPERCENTUALATACADO4: TCurrencyEdit;
    CEPERCENTUALATACADO3: TCurrencyEdit;
    CEPERCENTUALATACADO2: TCurrencyEdit;
    CEPERCENTUALATACADO1: TCurrencyEdit;
    Panel36: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel47: TPanel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    CEPERCENTUALVAREJO4: TCurrencyEdit;
    CEPERCENTUALVAREJO3: TCurrencyEdit;
    CEPERCENTUALVAREJO2: TCurrencyEdit;
    CEPERCENTUALVAREJO1: TCurrencyEdit;
    Panel48: TPanel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    CEPRECOVAREJO4: TCurrencyEdit;
    CEPRECOVAREJO3: TCurrencyEdit;
    CEPRECOVAREJO2: TCurrencyEdit;
    CEPRECOVAREJO1: TCurrencyEdit;
    DBGRIDPRODUTOSBASE: TDBGrid;
    Panel64: TPanel;
    Panel65: TPanel;
    Panel66: TPanel;
    Panel67: TPanel;
    Panel68: TPanel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    DBText58: TDBText;
    Label108: TLabel;
    DBText59: TDBText;
    Label109: TLabel;
    DBText60: TDBText;
    Label110: TLabel;
    DBText61: TDBText;
    Label111: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label112: TLabel;
    Label113: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    Label114: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    CurrencyEdit5: TCurrencyEdit;
    Label115: TLabel;
    CurrencyEdit6: TCurrencyEdit;
    Label116: TLabel;
    CurrencyEdit7: TCurrencyEdit;
    Label117: TLabel;
    CurrencyEdit8: TCurrencyEdit;
    Label118: TLabel;
    CurrencyEdit9: TCurrencyEdit;
    Label119: TLabel;
    CurrencyEdit10: TCurrencyEdit;
    Label120: TLabel;
    CurrencyEdit11: TCurrencyEdit;
    Label121: TLabel;
    CurrencyEdit12: TCurrencyEdit;
    Label122: TLabel;
   
    procedure CarregarGrupos;
    procedure CarregarMarcas;
    procedure CarregarFornecedores;

    procedure CriarEstruturaManualCDS;
    procedure FormShow(Sender: TObject);
    procedure btnconsultarClick(Sender: TObject);
    procedure EditcontagemChange(Sender: TObject);

    procedure btnrelatpositivoClick(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure CDSPRODUTOSCalcFields(DataSet: TDataSet);
    procedure btnrelatnegativoClick(Sender: TObject);
    procedure CalcularETotalizar;
    procedure btnrelacorretoClick(Sender: TObject);
  
  



    procedure EditcontagemKeyPress(Sender: TObject; var Key: Char);
    procedure btnconfirmaClick(Sender: TObject);
 
    procedure btnupClick(Sender: TObject);
    procedure BtndownClick(Sender: TObject);

    procedure TeclaClick(Sender: TObject);

    procedure btnprodconfClick(Sender: TObject);
    procedure btnprodvendClick(Sender: TObject);

    procedure btnsalvaprogClick(Sender: TObject);
    procedure CarregarHistorico;
    procedure movimentojacontado;


    procedure btnRetomarProgressoClick(Sender: TObject);
    procedure CarregarItensProgresso(NumRelatorio: Integer);
    procedure AplicarPeriodoEExecutarRelatorio(NumRelatorio: Integer);
    procedure btnatualizahistClick(Sender: TObject);
    procedure btnlimpalistaClick(Sender: TObject);
    procedure btnapagahistoricoClick(Sender: TObject);
    procedure AtualizarContadores;
    procedure LocalizarProximoNaoConferido;
    procedure AtualizarBotoesRelatorio;
    procedure DBTextprodutoClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure CarregarProdutosEmAberto;
    procedure QRYPRODUTOSABERTOSAfterScroll(DataSet: TDataSet);
    procedure btnqryprodupClick(Sender: TObject);
    procedure btnqryproddownClick(Sender: TObject);
    procedure btnqrypedidoupClick(Sender: TObject);
    procedure btnqrypedidodownClick(Sender: TObject);

    procedure QRYPRODUTOSABERTOSAfterClose(DataSet: TDataSet);

    procedure BuscarProdutoPreVendaPorCodInterno;
    procedure LabelinforClick(Sender: TObject);
    procedure CarregarPedidosDoProdutoAtual;
    procedure btnconsultartodosClick(Sender: TObject);
    procedure btnconsultprevendaClick(Sender: TObject);

    procedure btnatualizaestoqueClick(Sender: TObject);
    procedure AjustarEstoqueEAtualizarMovimento(Sender: TObject);





     procedure Estoque_AjustarSaldo(sCodInterno: string; fNovaQuantidade: Extended; iLkUsuario: Integer);
     procedure Estoque_RegistrarMovimento(sCodInterno: string; fDiferenca: Extended; fEstoqueAnterior: Extended; fNovaQuantidade: Extended; iLkUsuario: Integer; iLkItem: Integer);
    procedure DBGRIDHISTORICODrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);

    procedure btnmovimentoClick(Sender: TObject);
    procedure CarregarListaBaseProdutos;
    procedure BitBtn3Click(Sender: TObject);
    procedure QRYRKVENDAfterScroll(DataSet: TDataSet);
    procedure QRYHISTORICOAfterScroll(DataSet: TDataSet);
    procedure btnconsultaprodutosClick(Sender: TObject);
  







  



   
  

  private

    procedure RelatorioManual;
  public
    { Public declarations }
    FNumRelatorioAtual: Integer;
    function VerificarConferenciaCompleta: Boolean;
  end;

var
  frmmenu: Tfrmmenu;

implementation

{$R *.dfm}

uses CONEXAOBD, FRMSENHA, FRMSelectproduto;






function Tfrmmenu.VerificarConferenciaCompleta: Boolean;
var
  BM: TBookmark;
  CodInterno: string;
begin
  Result := True; // Assume que está completo por padrão

  if not QRYRKVEND.Active or QRYRKVEND.IsEmpty then
    Exit; // Se a lista de produtos a conferir está vazia, considera completo.

  // 1. Salva a posição atual do QRYRKVEND
  BM := QRYRKVEND.GetBookmark;

  try
    // 2. Navega por todos os registros da lista de produtos a conferir
    QRYRKVEND.DisableControls; // Evita piscar
    QRYRKVEND.First;

    while not QRYRKVEND.Eof do
    begin
      CodInterno := QRYRKVEND.FieldByName('CodInterno').AsString;

      // 3. Tenta localizar no CDSPRODUTOS (itens já conferidos)
      if not datamodule1.CDSPRODUTOS.Locate('CodInterno', CodInterno, [loCaseInsensitive]) then
      begin
        // Se encontrou um produto que NÃO está no CDSPRODUTOS
        Result := False; // Conferência Incompleta
        Break;           // Sai do loop imediatamente
      end;

      QRYRKVEND.Next;
    end;
  finally
    // 4. Restaura a posição
    if Assigned(BM) then
      QRYRKVEND.GotoBookmark(BM);

    QRYRKVEND.FreeBookmark(BM);
    QRYRKVEND.EnableControls;
  end;
end;


procedure Tfrmmenu.AtualizarBotoesRelatorio;
var
  ConferenciaCompleta: Boolean;
  ConferenciaIniciada: Boolean;
begin
  // 1. Determina o estado da conferência
  ConferenciaCompleta := VerificarConferenciaCompleta;
  ConferenciaIniciada := not datamodule1.CDSPRODUTOS.IsEmpty;

  // 2. Desabilita todos os botões de relatório por padrão
  btnrelacorreto.Enabled := False;
  btnrelatnegativo.Enabled := False;
  btnrelatpositivo.Enabled := False;

  // 3. Controla a visibilidade da Label e aplica o status
  if Assigned(LabelStatusConferencia) then
  begin
    if not ConferenciaIniciada then
    begin
      // REGRA SOLICITADA: Se CDSPRODUTOS estiver vazio, oculta a Label
      LabelStatusConferencia.Visible := False;
    end
    else
    begin
      // A contagem está em andamento ou completa
      LabelStatusConferencia.Visible := True;

      if ConferenciaCompleta then
      begin
        // ESTADO 1: COMPLETO (OK)
        LabelStatusConferencia.Caption := 'Contagem COMPLETA!';
        LabelStatusConferencia.Color := clGreen;
        LabelStatusConferencia.Font.Color := clwhite;
        btnsalvaprogClick(btnsalvaprog);

        // Habilita os botões somente quando COMPLETO
        btnrelacorreto.Enabled := True;
        btnrelatnegativo.Enabled := True;
        btnrelatpositivo.Enabled := True;
      end
      else
      begin
        // ESTADO 2: INCOMPLETO (Em Andamento)
        LabelStatusConferencia.Caption := 'Contagem EM ANDAMENTO...';
        LabelStatusConferencia.Color := clnavy;
        LabelStatusConferencia.Font.Color := clwhite;
      end;
    end;
  end;
end;

















procedure Tfrmmenu.btnlimpalistaClick(Sender: TObject);
begin
  // 1. Confirmação do Usuário
  if not datamodule1.CDSPRODUTOS.IsEmpty then
  begin
    if MessageDlg('Tem certeza que deseja LIMPAR a lista de contagem e a lista de produtos (se estiver aberta)? Todos os itens não salvos serão perdidos!',
                  mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      Exit;
  end
  else
  begin
    ShowMessage('A lista de contagem já está vazia.');
    Exit;
  end;

  try
    // 2. Limpa o ClientDataSet (Esvazia a lista de produtos em contagem)
    datamodule1.CDSPRODUTOS.EmptyDataSet;

    // 3. Limpa a consulta de produtos (QRYRKVEND)
    if QRYRKVEND.Active then
      QRYRKVEND.Close;

    // 4. Resetar o estado de rastreamento
    FNumRelatorioAtual := 0;

    // 5. Reabilitar os botões de controle de progresso
    btnsalvaprog.Enabled := True;
    btnatualizahist.visible := False;

    // =========================================================
    // HABILITAÇÃO DOS FILTROS E BOTÕES DE CONSULTA
    // =========================================================
    dtinicio.Enabled := True;
    dtfim.Enabled := True;
    cmbgrupo.Enabled := True;
    cmbmarca.Enabled := True;
    cmbfornecedor.Enabled := True;
    btnconsultar.Enabled := True;
    btnsalvaprog.Visible := TRUE; // Habilita o botão de consulta principal

    // Limpa o campo de localização, se necessário
    Editlocal.Clear;

    ShowMessage('Lista de contagem limpa com sucesso. Pronto para um novo inventário.');

  except
    on E: Exception do
    begin
      ShowMessage('Erro ao limpar a lista de contagem: ' + E.Message);
    end;
  end;
  dtinicio.DateTime:=now;
  dtfim.DateTime:=now;
  // 6. Atualização de Foco e Contadores
  PageControl1.ActivePage := TabSheet1;

  // Atualiza contadores (agora 0 de 0)
  AtualizarContadores;

  // Reseta a cor do painel de status do produto ativo


  // Reposiciona o foco para iniciar a próxima ação
  Editcontagem.SetFocus;
end;



procedure Tfrmmenu.btnmovimentoClick(Sender: TObject);
begin
movimentojacontado;
end;

procedure Tfrmmenu.btnprodconfClick(Sender: TObject);
var
  NovoIndice: Integer;
begin
  // 1. Verifica se o PageControl existe
  if Assigned(PageControl1) then
  begin
    // Obtém o índice da página atual
    NovoIndice := PageControl1.ActivePageIndex;

    // 2. Incrementa o índice para ir para a próxima página
    Inc(NovoIndice);

    // 3. Verifica se o novo índice excedeu o número total de páginas
    if NovoIndice >= PageControl1.PageCount then
    begin
      // Se sim, volta para a primeira página (índice 0)
      NovoIndice := 0;
    end;

    // 4. Define a nova página ativa
    PageControl1.ActivePageIndex := NovoIndice;

    // 5. Ajusta o foco
    // Se a página for a TabSheet1 (Contagem), coloca o foco no campo Editcontagem
    if PageControl1.ActivePage = TabSheet1 then
      Editcontagem.SetFocus
    else if PageControl1.ActivePage = TabSheet2 then
      DBCtrlGrid1.SetFocus
    else if PageControl1.ActivePage = TabSheet3 then
      DBGRIDHISTORICO.SetFocus;
      // ... adicione outras abas conforme necessário
 
  end;
end;

procedure Tfrmmenu.btnprodvendClick(Sender: TObject);
var
  NovoIndice: Integer;
begin
  // 1. Verifica se o PageControl existe
  if Assigned(PageControl1) then
  begin
    // Obtém o índice da página atual
    NovoIndice := PageControl1.ActivePageIndex;

    // 2. Decrementa o índice para ir para a página anterior
    Dec(NovoIndice);

    // 3. Verifica se o novo índice é menor que o limite (0)
    if NovoIndice < 0 then
    begin
      // Se sim, volta para a última página
      NovoIndice := PageControl1.PageCount - 1;
    end;

    // 4. Define a nova página ativa
    PageControl1.ActivePageIndex := NovoIndice;

    // 5. Ajusta o foco
    // Implementação básica de foco para as abas conhecidas:
    if PageControl1.ActivePage = TabSheet1 then
      Editcontagem.SetFocus
    else if PageControl1.ActivePage = TabSheet2 then
    begin
      // A lógica original de focar no TabSheet2 também garantia a abertura do CDS
      if not datamodule1.CDSPRODUTOS.Active then
        datamodule1.CDSPRODUTOS.Open;
      if Assigned(DBCtrlGrid1) then
        DBCtrlGrid1.SetFocus;
    end
    else if PageControl1.ActivePage = TabSheet3 then
      DBGRIDHISTORICO.SetFocus;
      // ... adicione outras abas conforme necessário
  
  end;
end;

procedure Tfrmmenu.btnqrypedidodownClick(Sender: TObject);
begin
  // Move para o próximo registro na Query Detalhe (Pedidos de Reserva)
  if datamodule1.QRYPEDIDOS.Active then
  begin
    if not datamodule1.QRYPEDIDOS.Eof then
    begin
      datamodule1.QRYPEDIDOS.Next; // Move para o próximo registro
    end
    // else { Opcional: ShowMessage('Você já está no último pedido.'); }
  end;
end;



procedure Tfrmmenu.btnqrypedidoupClick(Sender: TObject);
begin
  // Move para o registro anterior na Query Detalhe (Pedidos de Reserva)
  if datamodule1.QRYPEDIDOS.Active then
  begin
    if not datamodule1.QRYPEDIDOS.Bof then
    begin
      datamodule1.QRYPEDIDOS.Prior; // Move para o registro anterior
    end
    // else { Opcional: ShowMessage('Você já está no primeiro pedido.'); }
  end;
end;




procedure Tfrmmenu.btnqryproddownClick(Sender: TObject);
begin
  // Move para o próximo registro na Query Mestra (Produtos em Aberto)
  if QRYPRODUTOSABERTOS.Active then
  begin
    if not QRYPRODUTOSABERTOS.Eof then
    begin
      QRYPRODUTOSABERTOS.Next; // Move para o próximo registro
    end
    // else { Opcional: ShowMessage('Você já está no último produto.'); }
  end;
end;



procedure Tfrmmenu.btnqryprodupClick(Sender: TObject);
begin
  // Move para o registro anterior na Query Mestra (Produtos em Aberto)
  if QRYPRODUTOSABERTOS.Active then
  begin
    if not QRYPRODUTOSABERTOS.Bof then
    begin
      QRYPRODUTOSABERTOS.Prior; // Move para o registro anterior
    end
    // else { Opcional: ShowMessage('Você já está no primeiro produto.'); }
  end;
end;






procedure Tfrmmenu.btnapagahistoricoClick(Sender: TObject);
var
  NumRelatorioExcluir: Integer;
  Msg: String;
  ProximoValorIdentity: Integer;
begin
  // 1. Validação: Verifica se há um registro selecionado no histórico
  if not QRYHISTORICO.Active or QRYHISTORICO.IsEmpty then
  begin
    ShowMessage('Selecione um registro de histórico para apagar.');
    Exit;
  end;

  NumRelatorioExcluir := QRYHISTORICO.FieldByName('NUMRELATORIO').AsInteger;

  // **NOVO BLOQUEIO: Verifica se a contagem está concluída (STATUS = TRUE)**
  // O campo STATUS deve estar disponível na QRYHISTORICO, vindo da TAB_HIS_AJUSTE_CAB.
  if QRYHISTORICO.FieldByName('STATUS').AsBoolean then
  begin
    ShowMessage(Format('Não é permitido apagar o progresso No. %d pois ele já está marcado como COMPLETO (finalizado).', [NumRelatorioExcluir]));
    Exit; // Bloqueia a exclusão e sai da procedure
  end;
  // FIM DO BLOQUEIO

  // 2. Confirmação do Usuário (somente se o STATUS for FALSE)
  Msg := Format('Tem certeza que deseja APAGAR o progresso de histórico No. %d e todos os seus itens? Esta ação é IRREVERSÍVEL!', [NumRelatorioExcluir]);
  if MessageDlg(Msg, mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  DataModule1.ConDados.StartTransaction;

  try
    // 3. EXCLUI OS ITENS (Tabela Filha)
    with DataModule1.QRYHIS_ITENS do
    begin
      Close;
      SQL.Text := 'DELETE FROM TAB_HIS_AJUSTE_ITENS WHERE NUMRELATORIO = :NumProgresso';
      ParamByName('NumProgresso').AsInteger := NumRelatorioExcluir;
      Execute;
    end;

    // 4. EXCLUI O CABEÇALHO (Tabela Pai)
    with DataModule1.QRYHIS_CAB do
    begin
      Close;
      SQL.Text := 'DELETE FROM TAB_HIS_AJUSTE_CAB WHERE NUMRELATORIO = :NumProgresso';
      ParamByName('NumProgresso').AsInteger := NumRelatorioExcluir;
      Execute;

      // Resetar o contador IDENTITY (SQL Server DBCC CHECKIDENT)
      // Esta lógica garante que o contador IDENTITY se mantenha alinhado.
      Close;
      SQL.Text := 'SELECT ISNULL(MAX(NUMRELATORIO), 0) + 1 AS NextNum FROM TAB_HIS_AJUSTE_CAB';
      Open;
      ProximoValorIdentity := FieldByName('NextNum').AsInteger;
      Close;

      if ProximoValorIdentity = 1 then
      begin
        // Tabela vazia: resetar o IDENTITY para recomeçar do 1
        SQL.Text := 'DBCC CHECKIDENT(''TAB_HIS_AJUSTE_CAB'', RESEED, 0)';
        Execute;
      end
      else
      begin
        // Tabela não vazia: re-alinhar o contador ao máximo existente
        SQL.Text := Format('DBCC CHECKIDENT(''TAB_HIS_AJUSTE_CAB'', RESEED, %d)', [ProximoValorIdentity - 1]);
        Execute;
      end;

      if QRYRKVEND.Active then
        QRYRKVEND.Close;
    end;

    DataModule1.ConDados.Commit;
    ShowMessage(Format('Progresso No. %d excluído com sucesso. Próximo registro de histórico será o No. %d.', [NumRelatorioExcluir, ProximoValorIdentity]));

  except
    on E: Exception do
    begin
      DataModule1.ConDados.Rollback;
      ShowMessage('ERRO CRÍTICO ao apagar histórico. A transação foi CANCELADA. Detalhes: ' + E.Message);
    end;
  end;

  // 5. Recarrega a lista
  CarregarHistorico;
  btnlimpalistaClick(Sender);
end;



procedure Tfrmmenu.btnapagarClick(Sender: TObject);
begin
  // 1. Verifica se o ClientDataSet está aberto e possui registros
  if not datamodule1.CDSPRODUTOS.Active or datamodule1.CDSPRODUTOS.IsEmpty then
  begin
    ShowMessage('Não há registros de contagem para excluir no momento.');
    Exit;
  end;

  // 2. Confirmação do Usuário
  // Pega o nome do produto selecionado para exibir na mensagem de confirmação
  if MessageDlg('Tem certeza que deseja APAGAR o registro de contagem do produto: ' +
                 datamodule1.CDSPRODUTOS.FieldByName('Produto').AsString + '?',
                 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      // 3. Exclui o registro atual (o que está selecionado no DBCtrlGrid1)
      datamodule1.CDSPRODUTOS.Delete;

      ShowMessage('Registro de contagem excluído com sucesso.');


    except
      on E: Exception do
      begin
        ShowMessage('Erro ao excluir o registro: ' + E.Message);
      end;
    end;
    RELATORIOMANUAL;

    AtualizarContadores;
    AtualizarBotoesRelatorio;
    PageControl1.ActivePage := TabSheet1;
    LocalizarProximoNaoConferido;
  end;

end;


procedure Tfrmmenu.btnatualizaestoqueClick(Sender: TObject);
begin
AjustarEstoqueEAtualizarMovimento(Sender);
end;

procedure Tfrmmenu.btnatualizahistClick(Sender: TObject);
var
  Msg: String;
  ContadorAjustes: Integer;
  CodProdutoAtual, ProdutoDescricaoAtual, GrupoFiltro,
  LocalizacaoAtual, CodFornecedorAtual, CodBarraAtual: String;
  MarcaFiltro, FornecedorFiltro, LocalizacaoFiltro: String;
  ContagemAtual, DiferencaAtual, EstoqueAnterior, QtdVendida: Real;
  ValorDiferencaAtual, TotalCustoDiferenca, CustoTotalEstoque: Currency;
  NumProgresso: Integer;
  bConferenciaCompleta: Boolean;
begin
  // 1. Coleta o Número do Progresso e Validação
  NumProgresso := FNumRelatorioAtual;

  if NumProgresso <= 0 then
  begin
    ShowMessage('Nenhum progresso de contagem em edição. Use o botão de Retomar Histórico ou Salvar Novo Progresso.');
    Exit;
  end;

  if not datamodule1.CDSPRODUTOS.Active or datamodule1.CDSPRODUTOS.IsEmpty then
  begin
    ShowMessage('A lista de contagem está vazia. Não há o que atualizar.');
    Exit;
  end;

  // 2. VERIFICA O STATUS DA CONFERÊNCIA
  bConferenciaCompleta := VerificarConferenciaCompleta;



  // --- COLETANDO TODOS OS FILTROS DA TELA ---
  if cmbgrupo.ItemIndex > 0 then
    GrupoFiltro := cmbgrupo.Items.Strings[cmbgrupo.ItemIndex]
  else
    GrupoFiltro := 'TODOS';
  if cmbmarca.ItemIndex > 0 then
    MarcaFiltro := cmbmarca.Items.Strings[cmbmarca.ItemIndex]
  else
    MarcaFiltro := 'TODOS';
  if cmbfornecedor.ItemIndex > 0 then
    FornecedorFiltro := cmbfornecedor.Items.Strings[cmbfornecedor.ItemIndex]
  else
    FornecedorFiltro := 'TODOS';
  if Trim(Editlocal.Text) <> '' then
    LocalizacaoFiltro := Trim(Editlocal.Text)
  else
    LocalizacaoFiltro := 'TODOS';

  DataModule1.ConDados.StartTransaction;
  datamodule1.CDSPRODUTOS.DisableControls;

  try
    // 3. Calcula o novo total da diferença
    TotalCustoDiferenca := 0;
    datamodule1.CDSPRODUTOS.First;
    while not datamodule1.CDSPRODUTOS.Eof do
    begin
      TotalCustoDiferenca := TotalCustoDiferenca + datamodule1.CDSPRODUTOS.FieldByName('ValorDiferenca').AsCurrency;
      datamodule1.CDSPRODUTOS.Next;
    end;

    // 4. ATUALIZA O CABEÇALHO EXISTENTE
    with DataModule1.QRYHIS_CAB do
    begin
      Close;
      // SQL ATUALIZADO: Incluindo a coluna STATUS no UPDATE
      SQL.Text :=
        'UPDATE TAB_HIS_AJUSTE_CAB SET DATA_AJUSTE = :Data, USUARIO = :Usuario, LKUSUARIO = :LkUsuario, ' +
        'TOTAL_CUSTO_DIF = :TotalCustoDif, PERIODO_INICIO = :DataInicio, PERIODO_FIM = :DataFim, GRUPO_FILTRO = :Grupo, ' +
        'MARCA_FILTRO = :Marca, FORNECEDOR_FILTRO = :Fornecedor, LOCALIZACAO_FILTRO = :Localizacao, STATUS = :Status ' + // Novo campo STATUS
        'WHERE NUMRELATORIO = :NumProgresso';

      ParamByName('Data').AsDateTime := Now;

      if Assigned(FRMSEN) then
        ParamByName('Usuario').AsString := FRMSEN.Cmbusuario.Text
      else
        ParamByName('Usuario').AsString := 'SISTEMA_NAO_LOGADO';

      if Assigned(FRMSEN) then
        ParamByName('LkUsuario').AsInteger := FRMSEN.UsuarioControle
      else
        ParamByName('LkUsuario').AsInteger := 0;

      ParamByName('TotalCustoDif').AsCurrency := TotalCustoDiferenca;
      ParamByName('DataInicio').AsDateTime := dtinicio.Date;
      ParamByName('DataFim').AsDateTime := dtfim.Date;
      ParamByName('Grupo').AsString := GrupoFiltro;
      ParamByName('Marca').AsString := MarcaFiltro;
      ParamByName('Fornecedor').AsString := FornecedorFiltro;
      ParamByName('Localizacao').AsString := LocalizacaoFiltro;

      // NOVO PARÂMETRO: STATUS DA CONFERÊNCIA
      ParamByName('Status').AsBoolean := bConferenciaCompleta;

      ParamByName('NumProgresso').AsInteger := NumProgresso;
      Execute;
    end;

    // 5. LIMPA OS ITENS ANTIGOS
    with DataModule1.QRYHIS_ITENS do
    begin
      Close;
      SQL.Text := 'DELETE FROM TAB_HIS_AJUSTE_ITENS WHERE NUMRELATORIO = :NumProgresso';
      ParamByName('NumProgresso').AsInteger := NumProgresso;
      Execute;
    end;

    // 6. Loop de produtos para REINSERIR os ITENS ATUALIZADOS
    datamodule1.CDSPRODUTOS.First;
    ContadorAjustes := 0;
    while not datamodule1.CDSPRODUTOS.Eof do
    begin
      // COPIA DOS DADOS
      CodProdutoAtual := datamodule1.CDSPRODUTOS.FieldByName('CodInterno').AsString;
      ProdutoDescricaoAtual := datamodule1.CDSPRODUTOS.FieldByName('Produto').AsString;
      EstoqueAnterior := datamodule1.CDSPRODUTOS.FieldByName('Estoque').AsFloat;
      ContagemAtual := datamodule1.CDSPRODUTOS.FieldByName('Contagem').AsFloat;
      DiferencaAtual := datamodule1.CDSPRODUTOS.FieldByName('Diferenca').AsFloat;
      ValorDiferencaAtual := datamodule1.CDSPRODUTOS.FieldByName('ValorDiferenca').AsCurrency;
      CustoTotalEstoque := datamodule1.CDSPRODUTOS.FieldByName('CustoTotal').AsCurrency;
      QtdVendida := datamodule1.CDSPRODUTOS.FieldByName('QuantidadeVendida').AsFloat;
      LocalizacaoAtual := datamodule1.CDSPRODUTOS.FieldByName('Localizacao').AsString;
      CodFornecedorAtual := datamodule1.CDSPRODUTOS.FieldByName('CodFornecedor').AsString;

      if datamodule1.CDSPRODUTOS.FindField('CodBarra') <> nil then
        CodBarraAtual := datamodule1.CDSPRODUTOS.FieldByName('CodBarra').AsString
      else
        CodBarraAtual := '';

      try
        // 7. Insere Item do Progresso na TAB_HIS_AJUSTE_ITENS
        with DataModule1.QRYHIS_ITENS do
        begin
          Close;
          SQL.Text :=
            'INSERT INTO TAB_HIS_AJUSTE_ITENS (' +
            'NUMRELATORIO, CODINTERNO, PRODUTO_DESCRICAO, ESTOQUE_ANTERIOR, CONTAGEM_FINAL, DIFERENCA, ' +
            'PRECO_CUSTO, VALOR_DIFERENCA, GRUPO, MARCA, FORNECEDOR, CODFORNECEDOR, CODBARRA, CUSTO_TOTAL, QTD_VENDIDA, LOCALIZACAO) ' +
            'VALUES (' +
            ':NumRelatorio, :CodInterno, :Descricao, :EstAnterior, :Contagem, :Diferenca, ' +
            ':PrecoCusto, :ValorDiferenca, :Grupo, :Marca, :Fornecedor, :CodFornecedor, :CodBarra, :CustoTotal, :QtdVendida, :Localizacao)';

          ParamByName('NumRelatorio').AsInteger := NumProgresso;
          ParamByName('CodInterno').AsString := CodProdutoAtual;
          ParamByName('Descricao').AsString := ProdutoDescricaoAtual;
          ParamByName('EstAnterior').AsFloat := EstoqueAnterior;
          ParamByName('Contagem').AsFloat := ContagemAtual;
          ParamByName('Diferenca').AsFloat := DiferencaAtual;
          ParamByName('PrecoCusto').AsCurrency := datamodule1.CDSPRODUTOS.FieldByName('PrecoCusto').AsCurrency;
          ParamByName('ValorDiferenca').AsCurrency := ValorDiferencaAtual;
          ParamByName('Grupo').AsString := datamodule1.CDSPRODUTOS.FieldByName('Grupo').AsString;
          ParamByName('Marca').AsString := datamodule1.CDSPRODUTOS.FieldByName('Marca').AsString;
          ParamByName('Fornecedor').AsString := datamodule1.CDSPRODUTOS.FieldByName('Fornecedor').AsString;
          ParamByName('CodFornecedor').AsString := CodFornecedorAtual;
          ParamByName('CodBarra').AsString := CodBarraAtual;
          ParamByName('CustoTotal').AsCurrency := CustoTotalEstoque;
          ParamByName('QtdVendida').AsFloat := QtdVendida;
          ParamByName('Localizacao').AsString := LocalizacaoAtual;
          Execute;
        end;

        Inc(ContadorAjustes);

      except
        on E: Exception do
        begin
          raise Exception.CreateFmt('Erro no produto %s. Transação CANCELADA. Detalhes: %s', [CodProdutoAtual, E.Message]);
        end;
      end;

      datamodule1.CDSPRODUTOS.Next;
    end;

    DataModule1.ConDados.Commit;
    ShowMessage(Format('Progresso No. %d atualizado com sucesso! %d produtos conferidos.', [NumProgresso, ContadorAjustes]));

  except
    on E: Exception do
    begin
      DataModule1.ConDados.Rollback;
      ShowMessage('ERRO CRÍTICO ao atualizar progresso. A transação foi CANCELADA. Detalhes: ' + E.Message);
    end;
  end;

  datamodule1.CDSPRODUTOS.EnableControls;
  CarregarHistorico;
end;





procedure Tfrmmenu.btnconfirmaClick(Sender: TObject);

var
  // MUDANÇA: Usar Extended para aceitar números decimais (melhor precisão que Real/Float)
  Contagem: Extended;
  EstoqueAtual: Extended; // Variável para o Estoque lido da QRY
  PeriodoStr: String;
  CodInternoAtual: String;
  Operacao: String; // Para informar se foi Inserção ou Edição
begin
  // 1. Validação de Dados de Entrada
  if not datamodule1.CDSPRODUTOS.Active then
    datamodule1.CDSPRODUTOS.Open;

  if QRYRKVEND.IsEmpty then
  begin
    ShowMessage('Nenhuma consulta de produtos foi realizada. Clique em Consultar primeiro.');
    Exit;
  end;

  if Trim(Editcontagem.Text) = '' then
  begin
    ShowMessage('A contagem não pode ser vazia.');
    Exit;
  end;

  // TENTA CONVERTER O VALOR DECIMAL
  // Usa TryStrToFloat e muda a mensagem de erro
  if not TryStrToFloat(Editcontagem.Text, Contagem) then
  begin
    ShowMessage('A contagem deve ser um número válido (inteiro ou decimal). Por favor, corrija o valor.');
    Editcontagem.SetFocus;
    Exit;
  end;

  // Lê o estoque atual para o cálculo
  EstoqueAtual := QRYRKVEND.FieldByName('Estoque').AsFloat; // Assume que o campo 'Estoque' do QRY é decimal

  // 2. Identifica o Produto Atual e o Período
  CodInternoAtual := QRYRKVEND.FieldByName('CodInterno').AsString;
  PeriodoStr := FormatDateTime('dd/mm/yyyy', dtinicio.Date) + ' a ' + FormatDateTime('dd/mm/yyyy', dtfim.Date);

  // 3. Tenta Localizar o registro no CDSPRODUTOS pelo CodInterno
  if datamodule1.CDSPRODUTOS.Locate('CodInterno', CodInternoAtual, []) then
  begin
    // =========================================================
    // REGISTRO ENCONTRADO: Entra em Edição (Atualiza a Contagem)
    // =========================================================
    Operacao := 'Atualizado';
    datamodule1.CDSPRODUTOS.Edit;

    // 4A. Atualiza Campos Dinâmicos (Estoque, Vendas, Custos e Info)
    datamodule1.CDSPRODUTOS.FieldByName('Estoque').AsFloat := EstoqueAtual;
    datamodule1.CDSPRODUTOS.FieldByName('QuantidadeVendida').AsFloat := QRYRKVEND.FieldByName('QuantidadeVendida').AsFloat; // Assume ftFloat

    // ... [Atualização dos campos de string e currency] ...
    datamodule1.CDSPRODUTOS.FieldByName('PrecoCusto').AsCurrency := QRYRKVEND.FieldByName('PrecoCusto').AsCurrency;
    datamodule1.CDSPRODUTOS.FieldByName('CustoTotal').AsCurrency := QRYRKVEND.FieldByName('CustoTotal').AsCurrency;

    datamodule1.CDSPRODUTOS.FieldByName('Produto').AsString := QRYRKVEND.FieldByName('Produto').AsString;
    datamodule1.CDSPRODUTOS.FieldByName('Grupo').AsString := QRYRKVEND.FieldByName('Grupo').AsString;
    datamodule1.CDSPRODUTOS.FieldByName('Marca').AsString := QRYRKVEND.FieldByName('Marca').AsString;
    datamodule1.CDSPRODUTOS.FieldByName('Fornecedor').AsString := QRYRKVEND.FieldByName('Fornecedor').AsString;
    datamodule1.CDSPRODUTOS.FieldByName('Localizacao').AsString := QRYRKVEND.FieldByName('Localizacao').AsString;
   datamodule1.CDSPRODUTOS.FieldByName('Periodo').AsString := PeriodoStr;

  end
  else
  begin
    // =========================================================
    // REGISTRO NÃO ENCONTRADO: Entra em Inserção (Cria Novo)
    // =========================================================
    Operacao := 'Inserido';
    datamodule1.CDSPRODUTOS.Append;

    // 4B. Cópia Completa dos Campos

    // ATRIBUIÇÃO DO CAMPO DE ORDENAÇÃO
    datamodule1.CDSPRODUTOS.FieldByName('ID_ORDEM').AsInteger := datamodule1.CDSPRODUTOS.RecordCount + 1; // Incrementa o contador para a ordem de inserção

    datamodule1.CDSPRODUTOS.FieldByName('PrecoCusto').AsCurrency := QRYRKVEND.FieldByName('PrecoCusto').AsCurrency;
    datamodule1.CDSPRODUTOS.FieldByName('CustoTotal').AsCurrency := QRYRKVEND.FieldByName('CustoTotal').AsCurrency;

    datamodule1.CDSPRODUTOS.FieldByName('Estoque').AsFloat := EstoqueAtual;
    datamodule1.CDSPRODUTOS.FieldByName('QuantidadeVendida').AsFloat := QRYRKVEND.FieldByName('QuantidadeVendida').AsFloat; // Assume ftFloat

    // Campos de String (Chaves e Descrições)
    datamodule1.CDSPRODUTOS.FieldByName('CodInterno').AsString := CodInternoAtual;
    datamodule1.CDSPRODUTOS.FieldByName('CodFornecedor').AsString := QRYRKVEND.FieldByName('CodFornecedor').AsString;
   datamodule1.CDSPRODUTOS.FieldByName('CodBarra').AsString := QRYRKVEND.FieldByName('Codbarra').AsString;
   datamodule1.CDSPRODUTOS.FieldByName('Produto').AsString := QRYRKVEND.FieldByName('Produto').AsString;
    datamodule1.CDSPRODUTOS.FieldByName('Grupo').AsString := QRYRKVEND.FieldByName('Grupo').AsString;
    datamodule1.CDSPRODUTOS.FieldByName('Marca').AsString := QRYRKVEND.FieldByName('Marca').AsString;
    datamodule1.CDSPRODUTOS.FieldByName('Fornecedor').AsString := QRYRKVEND.FieldByName('Fornecedor').AsString;
    datamodule1.CDSPRODUTOS.FieldByName('Localizacao').AsString := QRYRKVEND.FieldByName('Localizacao').AsString;
    datamodule1.CDSPRODUTOS.FieldByName('Periodo').AsString := PeriodoStr;
  end;

  try
    // 5. Salva os Campos de Inventário (Comum para Edição e Inserção)
    // MUDANÇA: Atribuição usando AsFloat
    datamodule1.CDSPRODUTOS.FieldByName('Contagem').AsFloat := Contagem;

    // MUDANÇA: Cálculo da Diferença usando AsFloat
    datamodule1.CDSPRODUTOS.FieldByName('Diferenca').AsFloat := Contagem - EstoqueAtual;

    // 6. Finaliza a Operação
    datamodule1.CDSPRODUTOS.Post;

    // ATUALIZA CONTAGEM DE PRODUTOS
    AtualizarBotoesRelatorio;
    AtualizarContadores;


  except
    // 7. Em caso de erro, cancela a operação
    datamodule1.CDSPRODUTOS.Cancel;
    raise;

  end;

  // 8. Preparação para o Próximo Produto
  Editcontagem.Text := '';

  Labeldiferença.Caption := '';


  if Assigned(datamodule1.CDSTOTAIS) then
      CalcularETotalizar;

  Editcontagem.SetFocus;

  QRYRKVEND.Next;

  if QRYRKVEND.Eof then
    ShowMessage('Contagem finalizada. Todos os produtos da lista foram conferidos.');

end;








procedure Tfrmmenu.btnconsultaprodutosClick(Sender: TObject);
begin
  // A forma mais direta para criar, exibir modalmente e destruir o Form
  with TSelectProduto.Create(Application) do
  try
    ShowModal; // Exibe o formulário e pausa a execução do programa até que ele seja fechado
  finally
    Free;      // Libera a memória do formulário
  end;
end;


procedure Tfrmmenu.btnconsultarClick(Sender: TObject);
begin
RelatorioManual;



end;

procedure Tfrmmenu.btnconsultartodosClick(Sender: TObject);
begin
CarregarProdutosEmAberto;
end;

procedure Tfrmmenu.BtndownClick(Sender: TObject);
begin
  // --- ABA 1: PRODUTOS VENDIDOS (QRYRKVEND) ---
  if PageControl1.ActivePage = TabSheet1 then
  begin
    if QRYRKVEND.Active and not QRYRKVEND.Eof then
    QRYRKVEND.Next;
  end

  // --- ABA 2: PRODUTOS CONFERIDOS (CDSPRODUTOS) ---
  else if PageControl1.ActivePage = TabSheet2 then
  begin
    if datamodule1.CDSPRODUTOS.Active and not datamodule1.CDSPRODUTOS.Eof then
      datamodule1.CDSPRODUTOS.Next;
  end

  // --- ABA 3: HISTÓRICO (QRYHISTORICO) ---
  else if PageControl1.ActivePage = TabSheet3 then
  begin
    if QRYHISTORICO.Active and not QRYHISTORICO.Eof then
      QRYHISTORICO.Next;
  end

  // --- ABA 4: PRODUTOS EM ABERTO (QRYPRODUTOSABERTOS - Mestra) ---
  else if PageControl1.ActivePage = TabSheet4 then
  begin
    // Navegação na Query Mestra (Produtos)
    if QRYPRODUTOSABERTOS.Active and not QRYPRODUTOSABERTOS.Eof then
      QRYPRODUTOSABERTOS.Next;
  end

  // --- ABA 5: PEDIDOS EM ABERTO (QRYPEDIDOS - Detalhe) ---
  else if PageControl1.ActivePage = TabSheet4 then // <-- NOVO BLOCO PARA ABA 5
  begin
    // Navegação na Query Detalhe de Pedidos
    if datamodule1.QRYPEDIDOS.Active and not datamodule1.QRYPEDIDOS.Eof then
      datamodule1.QRYPEDIDOS.Next;
  end;


end;





procedure Tfrmmenu.btnRelatPositivoClick(Sender: TObject);
const
  FILTRO_VALOR_POSITIVO = 'DIFERENCA > 0';
begin
  if not QRYHISTORICO.Active or QRYHISTORICO.IsEmpty then
  begin
    ShowMessage('Selecione um registro no "Histórico de Conferência" para gerar o relatório.');
    Exit;
  end;

  if not datamodule1.QRYPRODUTOSCONTADOS.Active then
    QRYHISTORICOAfterScroll(QRYHISTORICO);

  if datamodule1.QRYPRODUTOSCONTADOS.RecordCount = 0 then
  begin
    ShowMessage('O relatório de histórico selecionado não possui produtos conferidos.');
    Exit;
  end;

  if datamodule1.DBPRODUTOS.DataSet <> datamodule1.QRYPRODUTOSCONTADOS then
    datamodule1.DBPRODUTOS.DataSet := datamodule1.QRYPRODUTOSCONTADOS;

  try
    datamodule1.QRYPRODUTOSCONTADOS.DisableControls;

    datamodule1.QRYPRODUTOSCONTADOS.Filter := FILTRO_VALOR_POSITIVO;
   datamodule1. QRYPRODUTOSCONTADOS.Filtered := True;

    if datamodule1.QRYPRODUTOSCONTADOS.RecordCount = 0 then
    begin
      ShowMessage('Não foram encontrados registros com Diferença positiva (sobras) neste relatório.');
      Exit;
    end;

    datamodule1.FRXrelatorio.ShowReport;

  finally
    datamodule1.QRYPRODUTOSCONTADOS.Filtered := False;
    datamodule1.QRYPRODUTOSCONTADOS.Filter := '';
    datamodule1.QRYPRODUTOSCONTADOS.EnableControls;
  end;
end;


procedure Tfrmmenu.btnrelatnegativoClick(Sender: TObject);
const
  FILTRO_VALOR_NEGATIVO = 'DIFERENCA < 0';
begin
  if not QRYHISTORICO.Active or QRYHISTORICO.IsEmpty then
  begin
    ShowMessage('Selecione um registro no "Histórico de Conferência" para gerar o relatório.');
    Exit;
  end;

  if not datamodule1.QRYPRODUTOSCONTADOS.Active then
    QRYHISTORICOAfterScroll(QRYHISTORICO);

  if datamodule1.QRYPRODUTOSCONTADOS.RecordCount = 0 then
  begin
    ShowMessage('O relatório de histórico selecionado não possui produtos conferidos.');
    Exit;
  end;

  if datamodule1.DBPRODUTOS.DataSet <> datamodule1.QRYPRODUTOSCONTADOS then
    datamodule1.DBPRODUTOS.DataSet := datamodule1.QRYPRODUTOSCONTADOS;

  try
    datamodule1.QRYPRODUTOSCONTADOS.DisableControls;

    datamodule1.QRYPRODUTOSCONTADOS.Filter := FILTRO_VALOR_NEGATIVO;
    datamodule1.QRYPRODUTOSCONTADOS.Filtered := True;

    if datamodule1.QRYPRODUTOSCONTADOS.RecordCount = 0 then
    begin
      ShowMessage('Não foram encontrados registros com Diferença negativa (faltas) neste relatório.');
      Exit;
    end;

    datamodule1.FRXrelatorio.ShowReport;

  finally
    datamodule1.QRYPRODUTOSCONTADOS.Filtered := False;
    datamodule1.QRYPRODUTOSCONTADOS.Filter := '';
    datamodule1.QRYPRODUTOSCONTADOS.EnableControls;
  end;
end;


procedure Tfrmmenu.btnrelacorretoClick(Sender: TObject);
const
  FILTRO_DIFERENCA_ZERO = 'DIFERENCA = 0';
begin
  if not QRYHISTORICO.Active or QRYHISTORICO.IsEmpty then
  begin
    ShowMessage('Selecione um registro no "Histórico de Conferência" para gerar o relatório.');
    Exit;
  end;

  if not datamodule1.QRYPRODUTOSCONTADOS.Active then
    QRYHISTORICOAfterScroll(QRYHISTORICO);

  if datamodule1.QRYPRODUTOSCONTADOS.RecordCount = 0 then
  begin
    ShowMessage('O relatório de histórico selecionado não possui produtos conferidos.');
    Exit;
  end;

  if datamodule1.DBPRODUTOS.DataSet <> datamodule1.QRYPRODUTOSCONTADOS then
    datamodule1.DBPRODUTOS.DataSet := datamodule1.QRYPRODUTOSCONTADOS;

  try
    datamodule1.QRYPRODUTOSCONTADOS.DisableControls;

    datamodule1.QRYPRODUTOSCONTADOS.Filter := FILTRO_DIFERENCA_ZERO;
    datamodule1.QRYPRODUTOSCONTADOS.Filtered := True;

    if datamodule1.QRYPRODUTOSCONTADOS.RecordCount = 0 then
    begin
      ShowMessage('Não foram encontrados registros conferidos sem diferença para gerar o relatório.');
      Exit;
    end;

    datamodule1.FRXrelatorio.ShowReport;

  finally
    datamodule1.QRYPRODUTOSCONTADOS.Filtered := False;
   datamodule1. QRYPRODUTOSCONTADOS.Filter := '';
    datamodule1.QRYPRODUTOSCONTADOS.EnableControls;
  end;
end;














procedure Tfrmmenu.btnRetomarProgressoClick(Sender: TObject);
var
  NumRelatorioSelecionado: Integer;
  bConferenciaCompleta: Boolean; // Variável para o Status
begin
  // Validação 1: Há um registro selecionado no histórico?
  if not QRYHISTORICO.Active or QRYHISTORICO.IsEmpty then
  begin
    ShowMessage('Nenhum registro de progresso selecionado no histórico.');
    Exit;
  end;

  NumRelatorioSelecionado := QRYHISTORICO.FieldByName('NUMRELATORIO').AsInteger;

  // **BLOQUEIO 1: Verifica o Status da Conferência**
  // O campo STATUS existe na QRYHISTORICO (selecionado da TAB_HIS_AJUSTE_CAB)
  bConferenciaCompleta := QRYHISTORICO.FieldByName('STATUS').AsBoolean;

  if bConferenciaCompleta then
  begin
    ShowMessage(Format('Atenção: O progresso No. %d está marcado como COMPLETO. Não é permitido retomar ou editar um inventário finalizado.', [NumRelatorioSelecionado]));
    Exit; // Bloqueia o Retorno
  end;

  // Confirmação para retomar
  if MessageDlg(Format('Deseja retomar o progresso No. %d? Isso apagará qualquer contagem não salva.', [NumRelatorioSelecionado]),
                 mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    datamodule1.CDSPRODUTOS.EmptyDataSet;

    // Novo fluxo com procedures separadas
    AplicarPeriodoEExecutarRelatorio(NumRelatorioSelecionado);
    CarregarItensProgresso(NumRelatorioSelecionado);

    AtualizarContadores;
    LocalizarProximoNaoConferido;
    AtualizarBotoesRelatorio;
    BuscarProdutoPreVendaPorCodInterno;
    CarregarPedidosDoProdutoAtual;
    PageControl1.ActivePage := TabSheet2;
  end;
end;






procedure Tfrmmenu.btnupClick(Sender: TObject);
begin
  // --- ABA 1: PRODUTOS VENDIDOS (QRYRKVEND) ---
  if PageControl1.ActivePage = TabSheet1 then
  begin
    if QRYRKVEND.Active and not QRYRKVEND.Bof then
      QRYRKVEND.Prior;
  end

  // --- ABA 2: PRODUTOS CONFERIDOS (CDSPRODUTOS) ---
  else if PageControl1.ActivePage = TabSheet2 then
  begin
    if datamodule1.CDSPRODUTOS.Active and not datamodule1.CDSPRODUTOS.Bof then
      datamodule1.CDSPRODUTOS.Prior;
  end

  // --- ABA 3: HISTÓRICO (QRYHISTORICO) ---
  else if PageControl1.ActivePage = TabSheet3 then
  begin
    if QRYHISTORICO.Active and not QRYHISTORICO.Bof then
      QRYHISTORICO.Prior;
  end

  // --- ABA 4: PRODUTOS EM ABERTO (QRYPRODUTOSABERTOS - Mestra) ---
  else if PageControl1.ActivePage = TabSheet4 then
  begin
    // Navegação na Query Mestra de Produtos em Aberto
    if QRYPRODUTOSABERTOS.Active and not QRYPRODUTOSABERTOS.Bof then
      QRYPRODUTOSABERTOS.Prior
  end

  // --- ABA 5: PEDIDOS EM ABERTO (QRYPEDIDOS - Detalhe) ---
  else if PageControl1.ActivePage = TabSheet4 then // <-- NOVO BLOCO PARA ABA 5
  begin
    // Navegação na Query Detalhe de Pedidos
    if datamodule1.QRYPEDIDOS.Active and not datamodule1.QRYPEDIDOS.Bof then
      datamodule1.QRYPEDIDOS.Prior;
  end;
  
end;




procedure Tfrmmenu.btnsalvaprogClick(Sender: TObject);
var
  Msg: String;
  ContadorAjustes: Integer;
  CodProdutoAtual, ProdutoDescricaoAtual, GrupoFiltro,
  LocalizacaoAtual, CodFornecedorAtual, CodBarraAtual: String;
  MarcaFiltro, FornecedorFiltro, LocalizacaoFiltro: String;
  ContagemAtual, DiferencaAtual, EstoqueAnterior, QtdVendida: Real;
  ValorDiferencaAtual, TotalCustoDiferenca, CustoTotalEstoque: Currency;
  NovoNumRelatorio: Integer;
  bConferenciaCompleta: Boolean;
begin
  // 1. Validação e Confirmação
  if not datamodule1.CDSPRODUTOS.Active or datamodule1.CDSPRODUTOS.IsEmpty then
  begin
    ShowMessage('A lista de contagem está vazia. Nada será salvo.');
    Exit;
  end;



  // 2. VERIFICA O STATUS DA CONFERÊNCIA
  bConferenciaCompleta := VerificarConferenciaCompleta;

  // --- COLETANDO TODOS OS FILTROS DA TELA ---
  if cmbgrupo.ItemIndex > 0 then
    GrupoFiltro := cmbgrupo.Items.Strings[cmbgrupo.ItemIndex]
  else
    GrupoFiltro := 'TODOS';
  if cmbmarca.ItemIndex > 0 then
    MarcaFiltro := cmbmarca.Items.Strings[cmbmarca.ItemIndex]
  else
    MarcaFiltro := 'TODOS';
  if cmbfornecedor.ItemIndex > 0 then
    FornecedorFiltro := cmbfornecedor.Items.Strings[cmbfornecedor.ItemIndex]
  else
    FornecedorFiltro := 'TODOS';
  if Trim(Editlocal.Text) <> '' then
    LocalizacaoFiltro := Trim(Editlocal.Text)
  else
    LocalizacaoFiltro := 'TODOS';

  DataModule1.ConDados.StartTransaction;
  datamodule1.CDSPRODUTOS.DisableControls;

  try
    // 3. Calcula o total da diferença para o cabeçalho
    TotalCustoDiferenca := 0;
    datamodule1.CDSPRODUTOS.First;
    while not datamodule1.CDSPRODUTOS.Eof do
    begin
      TotalCustoDiferenca := TotalCustoDiferenca + datamodule1.CDSPRODUTOS.FieldByName('ValorDiferenca').AsCurrency;
      datamodule1.CDSPRODUTOS.Next;
    end;

    // 4. Insere cabeçalho (Registro de Progresso) e captura NUMRELATORIO
    with DataModule1.QRYHIS_CAB do
    begin
      Close;
      // SQL ATUALIZADO: Incluindo a coluna STATUS
      SQL.Text :=
        'INSERT INTO TAB_HIS_AJUSTE_CAB (DATA_AJUSTE, USUARIO, LKUSUARIO, TOTAL_CUSTO_DIF, PERIODO_INICIO, PERIODO_FIM, GRUPO_FILTRO, MARCA_FILTRO, FORNECEDOR_FILTRO, LOCALIZACAO_FILTRO, STATUS) ' +
        'VALUES (:Data, :Usuario, :LkUsuario, :TotalCustoDif, :DataInicio, :DataFim, :Grupo, :Marca, :Fornecedor, :Localizacao, :Status);' +
        'SELECT SCOPE_IDENTITY() AS NovoNum;';

      ParamByName('Data').AsDateTime := Now;

      if Assigned(FRMSEN) then
        ParamByName('Usuario').AsString := FRMSEN.Cmbusuario.Text
      else
        ParamByName('Usuario').AsString := 'SISTEMA_NAO_LOGADO';

      if Assigned(FRMSEN) then
        ParamByName('LkUsuario').AsInteger := FRMSEN.UsuarioControle
      else
        ParamByName('LkUsuario').AsInteger := 0;

      ParamByName('TotalCustoDif').AsCurrency := TotalCustoDiferenca;
      ParamByName('DataInicio').AsDateTime := dtinicio.Date;
      ParamByName('DataFim').AsDateTime := dtfim.Date;
      ParamByName('Grupo').AsString := GrupoFiltro;
      ParamByName('Marca').AsString := MarcaFiltro;
      ParamByName('Fornecedor').AsString := FornecedorFiltro;
      ParamByName('Localizacao').AsString := LocalizacaoFiltro;

      // NOVO PARÂMETRO: STATUS DA CONFERÊNCIA
      ParamByName('Status').AsBoolean := bConferenciaCompleta;

      Open;
      NovoNumRelatorio := FieldByName('NovoNum').AsInteger;
      Close;
    end;

    // 5. Loop de produtos para salvar os ITENS
    datamodule1.CDSPRODUTOS.First;
    ContadorAjustes := 0;
    while not datamodule1.CDSPRODUTOS.Eof do
    begin
      // COPIA OS DADOS DO CLIENTDATASET PARA AS VARIÁVEIS
      CodProdutoAtual := datamodule1.CDSPRODUTOS.FieldByName('CodInterno').AsString;
      ProdutoDescricaoAtual := datamodule1.CDSPRODUTOS.FieldByName('Produto').AsString;
      EstoqueAnterior := datamodule1.CDSPRODUTOS.FieldByName('Estoque').AsFloat;
      ContagemAtual := datamodule1.CDSPRODUTOS.FieldByName('Contagem').AsFloat;
      DiferencaAtual := datamodule1.CDSPRODUTOS.FieldByName('Diferenca').AsFloat;
      ValorDiferencaAtual := datamodule1.CDSPRODUTOS.FieldByName('ValorDiferenca').AsCurrency;
      CustoTotalEstoque := datamodule1.CDSPRODUTOS.FieldByName('CustoTotal').AsCurrency;
      QtdVendida := datamodule1.CDSPRODUTOS.FieldByName('QuantidadeVendida').AsFloat;
      LocalizacaoAtual := datamodule1.CDSPRODUTOS.FieldByName('Localizacao').AsString;
      CodFornecedorAtual := datamodule1.CDSPRODUTOS.FieldByName('CodFornecedor').AsString;

      if datamodule1.CDSPRODUTOS.FindField('CodBarra') <> nil then
        CodBarraAtual := datamodule1.CDSPRODUTOS.FieldByName('CodBarra').AsString
      else
        CodBarraAtual := '';

      try
        // 6. Insere Item do Progresso na TAB_HIS_AJUSTE_ITENS
        with DataModule1.QRYHIS_ITENS do
        begin
          Close;
          SQL.Text :=
            'INSERT INTO TAB_HIS_AJUSTE_ITENS (' +
            'NUMRELATORIO, CODINTERNO, PRODUTO_DESCRICAO, ESTOQUE_ANTERIOR, CONTAGEM_FINAL, DIFERENCA, ' +
            'PRECO_CUSTO, VALOR_DIFERENCA, GRUPO, MARCA, FORNECEDOR, CODFORNECEDOR, CODBARRA, CUSTO_TOTAL, QTD_VENDIDA, LOCALIZACAO) ' +
            'VALUES (' +
            ':NumRelatorio, :CodInterno, :Descricao, :EstAnterior, :Contagem, :Diferenca, ' +
            ':PrecoCusto, :ValorDiferenca, :Grupo, :Marca, :Fornecedor, :CodFornecedor, :CodBarra, :CustoTotal, :QtdVendida, :Localizacao)';

          ParamByName('NumRelatorio').AsInteger := NovoNumRelatorio;
          ParamByName('CodInterno').AsString := CodProdutoAtual;
          ParamByName('Descricao').AsString := ProdutoDescricaoAtual;
          ParamByName('EstAnterior').AsFloat := EstoqueAnterior;
          ParamByName('Contagem').AsFloat := ContagemAtual;
          ParamByName('Diferenca').AsFloat := DiferencaAtual;
          ParamByName('PrecoCusto').AsCurrency := datamodule1.CDSPRODUTOS.FieldByName('PrecoCusto').AsCurrency;
          ParamByName('ValorDiferenca').AsCurrency := ValorDiferencaAtual;
          ParamByName('Grupo').AsString := datamodule1.CDSPRODUTOS.FieldByName('Grupo').AsString;
          ParamByName('Marca').AsString := datamodule1.CDSPRODUTOS.FieldByName('Marca').AsString;
          ParamByName('Fornecedor').AsString := datamodule1.CDSPRODUTOS.FieldByName('Fornecedor').AsString;
          ParamByName('CodFornecedor').AsString := CodFornecedorAtual;
          ParamByName('CodBarra').AsString := CodBarraAtual;
          ParamByName('CustoTotal').AsCurrency := CustoTotalEstoque;
          ParamByName('QtdVendida').AsFloat := QtdVendida;
          ParamByName('Localizacao').AsString := LocalizacaoAtual;
          Execute;
        end;

        Inc(ContadorAjustes);

      except
        on E: Exception do
        begin
          raise Exception.CreateFmt('Erro no produto %s. Transação CANCELADA. Detalhes: %s', [CodProdutoAtual, E.Message]);
        end;
      end;

      datamodule1.CDSPRODUTOS.Next;
    end;

    DataModule1.ConDados.Commit;
    ShowMessage(Format('Progresso de contagem salvo com sucesso! No. %d, %d produtos conferidos.', [NovoNumRelatorio, ContadorAjustes]));
  except
    on E: Exception do
    begin
      DataModule1.ConDados.Rollback;
      ShowMessage('ERRO CRÍTICO ao salvar progresso. A transação foi CANCELADA. Detalhes: ' + E.Message);
    end;
  end;

  FNumRelatorioAtual := NovoNumRelatorio;
  dtinicio.DateTime:=now;
  dtfim.DateTime:=now;
  datamodule1.CDSPRODUTOS.EmptyDataSet;
  CarregarHistorico;
  AtualizarBotoesRelatorio;

  relatoriomanual;
  datamodule1.CDSPRODUTOS.EnableControls;
end;


















procedure Tfrmmenu.CarregarGrupos;
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


procedure Tfrmmenu.CarregarMarcas;
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



procedure Tfrmmenu.CDSPRODUTOSCalcFields(DataSet: TDataSet);
var
  PrecoCusto: Currency;
  Diferenca: Integer;
begin
  // Verificação de segurança para evitar erros se os campos estiverem nulos
  if DataSet.FieldByName('Diferenca').IsNull or DataSet.FieldByName('PrecoCusto').IsNull then
  begin
    DataSet.FieldByName('ValorDiferenca').AsCurrency := 0;
    Exit;
  end;

  // 1. Pega os valores necessários
  PrecoCusto := DataSet.FieldByName('PrecoCusto').AsCurrency;
  Diferenca := DataSet.FieldByName('Diferenca').AsInteger;

  // 2. Calcula o valor financeiro da diferença
  // Se a Diferenca for positiva (Estoque > Contagem), é um prejuízo (perda).
  // Se a Diferenca for negativa (Estoque < Contagem), é um ganho.
  DataSet.FieldByName('ValorDiferenca').AsCurrency := PrecoCusto * Diferenca;
end;



procedure Tfrmmenu.EditcontagemChange(Sender: TObject);
var
  Estoque, Contagem, Diferenca: Real;
begin
  if QRYRKVEND.State in [dsBrowse, dsEdit, dsInsert] then
  begin
    try
      // Lê os valores
      Estoque := QRYRKVEND.FieldByName('Estoque').AsFloat;
      Contagem := StrToFloatDef(Editcontagem.Text, 0.0);

      // Nova lógica: contagem - estoque
      Diferenca := Contagem - Estoque;

      // Exibe a diferença com sinal
      Labeldiferença.Caption := FormatFloat('0.00', Diferenca);

      // Feedback visual
      if Diferenca < 0 then
        Labeldiferença.Font.Color := clRED  // Está faltando
      else if Diferenca > 0 then
        Labeldiferença.Font.Color := clGREEN   // Está sobrando
      else
        Labeldiferença.Font.Color := clblack ; // Está certo

    except
      Labeldiferença.Caption := 'ERRO';
      Labeldiferença.Font.Color := clRed;
    end;
  end
  else
    Labeldiferença.Caption := '';
end;






procedure Tfrmmenu.EditcontagemKeyPress(Sender: TObject; var Key: Char);
var
  DecimalSeparator: Char;
begin
  // =========================================================
  // 💥 NOVO CÓDIGO: TRATAMENTO DA TECLA ENTER
  // =========================================================
  if Key = #13 then // #13 é o código ASCII para a tecla ENTER
  begin
    // 1. Rejeita o caractere ENTER para que ele não apareça no Edit
    Key := #0;

    // 2. Chama a procedure que você deseja executar
    // Assumindo que sua procedure btnconfirmaClick aceita apenas Sender: TObject
    btnconfirmaClick(Sender);

    // 3. Sai da procedure, ignorando toda a lógica de validação de caracteres abaixo
    Exit;
  end;
  // =========================================================

  // Obtém o separador decimal do sistema (geralmente ',' no Português-BR)
  DecimalSeparator := FormatSettings.DecimalSeparator;

  // 1. Permite os dígitos de 0 a 9
  if (Key >= '0') and (Key <= '9') then
    Exit; // Tecla aceita

  // 2. Permite a tecla de Backspace (para apagar)
  if Key = #8 then
    Exit; // Tecla aceita

  // 3. Permite o separador decimal do sistema (Ponto ou Vírgula)
  // Verifica se a chave pressionada é o separador E se ele ainda não existe no texto
  if (Key = DecimalSeparator) or (Key = '.') then // Permitir ponto também, comum no teclado numérico
  begin
    // Se o separador (vírgula ou ponto) já existe, a tecla é rejeitada
    if Pos(DecimalSeparator, Editcontagem.Text) > 0 then
    begin
      Key := #0; // Rejeita a tecla (já existe separador)
      MessageBeep(0); // Toca o bipe de rejeição
      Exit;
    end;

    // Se for um ponto e o separador é vírgula, converte o ponto para vírgula
    if (Key = '.') and (DecimalSeparator = ',') then
      Key := DecimalSeparator;

    Exit; // Tecla aceita (primeiro separador)
  end;

  // 4. Se a tecla não se encaixa em nenhuma das condições acima, ela é rejeitada.
  Key := #0; // Rejeita a tecla (bloqueia letras e caracteres especiais)

  // Opcional: Tocar um som para indicar rejeição
  MessageBeep(0);
end;




procedure Tfrmmenu.CarregarFornecedores;
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















procedure Tfrmmenu.FormShow(Sender: TObject);
begin
dtinicio.DateTime:=now;
dtfim.DateTime:=now;
CarregarHistorico;
CarregarGrupos;
CarregarMarcas;
CarregarFornecedores;
CriarEstruturaManualCDS;
PageControl1.ActivePage := TabSheet1;
FNumRelatorioAtual := 0;



LabelStatusConferencia.Visible := False;
btnsalvaprog.Enabled := True;


btnatualizahist.Visible := False;
btnatualizaestoque.Enabled := False;
end;






















procedure Tfrmmenu.QRYHISTORICOAfterScroll(DataSet: TDataSet);
var
  iNumRelatorio: Integer;
  bStatusCompleto: Boolean; // Variável para ler o STATUS
begin
  // 1. Verifica se o DataSet mestre (QRYHISTORICO) está aberto e não vazio.
  if not QRYHISTORICO.IsEmpty then
  begin
    // 2. Captura o valor da chave primária (NUMRELATORIO) do registro atual.
    iNumRelatorio := QRYHISTORICO.FieldByName('NUMRELATORIO').AsInteger;

    // NOVO: Captura o STATUS do relatório
    bStatusCompleto := QRYHISTORICO.FieldByName('STATUS').AsBoolean;

    // 3. Fecha a query de detalhe para redefinição.
    datamodule1.QRYPRODUTOSCONTADOS.Close;

    // 4. Atribui o valor capturado ao parâmetro da query de detalhe.
    datamodule1.QRYPRODUTOSCONTADOS.ParamByName('pNUMRELATORIO').AsInteger := iNumRelatorio;

    // 5. Abre a query de detalhe, que agora está filtrada.
   datamodule1. QRYPRODUTOSCONTADOS.Open;

    // Chama o cálculo para atualizar CDSTOTAIS (mantido conforme a última alteração)
    frmmenu.CalcularETotalizar;

    // 6. NOVO: Habilita ou desabilita o botão de ajuste de estoque
    // O botão só será Enabled se o STATUS for TRUE (Completo)
    frmmenu.btnatualizaestoque.Enabled := bStatusCompleto;
    frmmenu.btnapagahistorico.Enabled := not bStatusCompleto;

  end
  else
  begin
    // Se o DataSet mestre estiver vazio, fecha a query de detalhe.
    datamodule1.QRYPRODUTOSCONTADOS.Close;

    // Desabilita o botão quando não há histórico selecionado
   frmmenu.btnatualizaestoque.Enabled := False;

  end;
end;



procedure Tfrmmenu.QRYPRODUTOSABERTOSAfterClose(DataSet: TDataSet);
begin
  // Esta procedure garante que, se a Query Mestra fechar (por filtro, limpeza, etc.),
  // a Query Detalhe seja forçada a fechar, limpando o DBCtrlGridpedidos.
  if datamodule1.QRYPEDIDOS.Active then
    datamodule1.QRYPEDIDOS.Close;
end;

procedure Tfrmmenu.QRYPRODUTOSABERTOSAfterScroll(DataSet: TDataSet);
var
  LkProduto: Integer;
begin
  // 1. Garante que há um produto ativo na lista mestra
  if not DataSet.IsEmpty and DataSet.Active then
  begin
    LkProduto := DataSet.FieldByName('LkProduto').AsInteger;

    // 2. Fecha a query de detalhe
    datamodule1.QRYPEDIDOS.Close;

    // 3. Define a SQL (Garante que está configurada corretamente)
    datamodule1.QRYPEDIDOS.SQL.Text :=
      'SELECT ' +
      '    A.*, ' + // Traz todas as colunas de TabEst3A
      '    B.Qtdreal AS QuantidadeItem, ' + // Quantidade do item no pedido
      '    CASE ' +
      '        WHEN A.STATUS = ''P'' THEN ''PRÉ-VENDA'' ' +
      '        WHEN A.STATUS = ''O'' THEN ''ORÇAMENTO'' ' +
      '        ELSE ''OUTROS'' ' +
      '    END AS Situacao ' +
      'FROM TabEst3A A WITH (NOLOCK) ' +
      'INNER JOIN TabEst3B B WITH (NOLOCK) ON A.Pedido = B.PEDIDO ' +
      'WHERE A.Data >= :DataInicio AND A.Data <= :DataFim ' +
      '  AND A.Cancelada <> 1 ' +
      '  AND A.VENDA <> 1 ' +
      '  AND A.STATUS =''P'' ' +
      '  AND B.LkProduto = :LkProduto ' + // Filtro Mestre: ID do produto selecionado
      'ORDER BY A.Pedido DESC';

    // 4. Aplica os parâmetros
    datamodule1.QRYPEDIDOS.ParamByName('DataInicio').AsDateTime := dtinicio.Date;
    datamodule1.QRYPEDIDOS.ParamByName('DataFim').AsDateTime := dtfim.Date;
    datamodule1.QRYPEDIDOS.ParamByName('LkProduto').AsInteger := LkProduto; // Parâmetro Mestre

    // 5. Abre a consulta Detalhe
    datamodule1.QRYPEDIDOS.Open;

    // 6. Liga a fonte de dados detalhe (se já não estiver no FormShow)
    datamodule1.DSQRYPEDIDOS.DataSet := datamodule1.QRYPEDIDOS;
  DBCtrlGridpedidos.DataSource := datamodule1.DSQRYPEDIDOS;
  end
  else
  begin
    // Se a mestra estiver vazia ou inativa, garante que a detalhe está fechada
    datamodule1.QRYPEDIDOS.Close;
  end;
end;































procedure Tfrmmenu.QRYRKVENDAfterScroll(DataSet: TDataSet);
var
  CodInterno: string;
begin
  // 1. Verificação de componentes e abas
  if not Assigned(frmmenu.Pnproduto) or not Assigned(frmmenu.Labelinfor) then Exit;
  if frmmenu.PageControl1.ActivePage <> frmmenu.TabSheet1 then Exit;
  if not DataSet.Active or DataSet.IsEmpty then Exit;

  // Garante que o painel e a label estão visíveis
  frmmenu.Pnproduto.Visible := True;
  frmmenu.Labelinfor.Visible := True;

  CodInterno := DataSet.FieldByName('CodInterno').AsString;

  // =====================================================================
  // LÓGICA LEVE: VERIFICAÇÃO APENAS NO CDSPRODUTOS
  // =====================================================================
  if datamodule1.CDSPRODUTOS.Active and datamodule1.CDSPRODUTOS.Locate('CodInterno', CodInterno, [loCaseInsensitive]) then
  begin
    // ESTADO 1: CONFERIDO (OK)
    Pnproduto.Color := clGreen;
    Labelinfor.Caption := 'CONFERIDO!';
    Labelinfor.Color := clGreen;
   Labelinfor.Font.Color := clwhite; // Texto Preto para fundo Verde
  end
  else
  begin
    // ESTADO 2: PENDENTE (NÃO CONFERIDO)
    Pnproduto.Color := clNavy;
    Labelinfor.Caption := 'NÃO CONFERIDO';
    Labelinfor.Color := clNavy;
    Labelinfor.Font.Color := clWhite; // Texto Branco para fundo Navy
  end;

  // A cor clMaroon, o alerta de reserva e o Locate em QRYPRODUTOSABERTOS foram removidos daqui.
end;


procedure Tfrmmenu.RelatorioManual;
var
  SQLText: TStringList;
begin
  SQLText := TStringList.Create;
  try
    SQLText.Add('SELECT');
    SQLText.Add('  P.CodInterno,');
    SQLText.Add('  P.Codfornecedor,');
    SQLText.Add('  P.CodBarra,');
    SQLText.Add('  P.Produto,');
    SQLText.Add('  G.Setor AS Grupo,');
    SQLText.Add('  P.Fabricante AS Marca,');
    SQLText.Add('  F.Empresa AS Fornecedor,');
    SQLText.Add('  P.Quantidade AS Estoque,');
    SQLText.Add('  SUM(I.QtdReal) AS QuantidadeVendida,');
    SQLText.Add('  P.Unidade,');
    SQLText.Add('  P.Moeda AS Localizacao,'); // Coluna de localização
    SQLText.Add('  P.PrecoCusto,'); // Custo unitário
    SQLText.Add('  P.Quantidade * P.PrecoCusto AS CustoTotal'); // Custo total do ESTOQUE

    SQLText.Add('FROM tabest3b I WITH (NOLOCK)');
    SQLText.Add('LEFT JOIN tabest1 P WITH (NOLOCK) ON I.lkProduto = P.controle');
    SQLText.Add('LEFT JOIN tabest3a V WITH (NOLOCK) ON I.pedido = V.pedido');
    SQLText.Add('LEFT JOIN tabest8 G WITH (NOLOCK) ON P.lkSetor = G.Controle');
    SQLText.Add('LEFT JOIN tabfor F WITH (NOLOCK) ON P.lkfornec = F.Controle');

    // CORREÇÃO: Usando TRY_CAST para proteger contra erros de conversão no campo I.Total (VARCHAR)
    SQLText.Add('WHERE TRY_CAST(REPLACE(ISNULL(I.Total, ''0''), '','', ''.'') AS DECIMAL(18, 2)) > 0');

    SQLText.Add('  AND V.Cancelada <> 1');
    SQLText.Add('  AND V.Venda = 1');
    SQLText.Add('  AND V.Status = ''V''');
    SQLText.Add('  AND I.DataInc >= :DataInicio');
    SQLText.Add('  AND I.DataInc <= :DataFim');
    SQLText.Add('  AND P.naosaitabela = 0');

    if cmbgrupo.ItemIndex > 0 then
      SQLText.Add('  AND G.Controle = :Grupo');

    if cmbfornecedor.ItemIndex > 0 then
      SQLText.Add('  AND F.Controle = :Fornecedor');

    if cmbmarca.ItemIndex > 0 then
      SQLText.Add('  AND P.Fabricante = :Marca');

    if Trim(editlocal.Text) <> '' then
      SQLText.Add('  AND P.Moeda = :Localizacao');

    SQLText.Add('GROUP BY');

    // Campos no GROUP BY
    SQLText.Add('  P.CodInterno, P.Codfornecedor,P.CodBarra, P.Produto, G.Setor, P.Fabricante, F.Empresa,');
    SQLText.Add('  P.Quantidade, P.Unidade, P.Moeda, P.PrecoCusto');

    // =========================================================================
    // ORDENAÇÃO SIMPLIFICADA
    // =========================================================================
    SQLText.Add('ORDER BY');

    // 1º Nível: Traz NULL/Vazio por último (Localização Válida = 0)
    SQLText.Add('  CASE WHEN NULLIF(P.Moeda, '''') IS NULL THEN 1 ELSE 0 END ASC,');

    // 2º Nível: Ordena Alfabeticamente/Textualmente (A10, A1, B...)
    SQLText.Add('  P.Moeda ASC,');

    // 3º Nível: Critério secundário (Quantidade Vendida)
    SQLText.Add('  SUM(I.QtdReal) DESC');
    // =========================================================================

    QRYRKVEND.Close;
    QRYRKVEND.Params.Clear;
    QRYRKVEND.SQL.Text := SQLText.Text;

    QRYRKVEND.ParamByName('DataInicio').AsDateTime := dtinicio.Date;
    QRYRKVEND.ParamByName('DataFim').AsDateTime := dtfim.Date;

    if cmbgrupo.ItemIndex > 0 then
     QRYRKVEND.ParamByName('Grupo').AsInteger := Integer(cmbgrupo.Items.Objects[cmbgrupo.ItemIndex]);

    if cmbfornecedor.ItemIndex > 0 then
      QRYRKVEND.ParamByName('Fornecedor').AsInteger := Integer(cmbfornecedor.Items.Objects[cmbfornecedor.ItemIndex]);

    if cmbmarca.ItemIndex > 0 then
      QRYRKVEND.ParamByName('Marca').AsString := cmbmarca.Items[cmbmarca.ItemIndex];

    if Trim(editlocal.Text) <> '' then
      QRYRKVEND.ParamByName('Localizacao').AsString := Trim(editlocal.Text);

    try
      QRYRKVEND.Open;
      Dbgridprodutos.DataSource := dsQRYRKVEND;
      AtualizarContadores;
    finally
      // Mantém a query aberta para visualização no grid
    end;
  finally
    SQLText.Free;
  end;
end;












procedure Tfrmmenu.CriarEstruturaManualCDS;
var
  IndexDef: TIndexDef;
begin
  // 1. Limpeza da estrutura anterior
  datamodule1.CDSPRODUTOS.Close;
  datamodule1.CDSPRODUTOS.FieldDefs.Clear;
  datamodule1.CDSPRODUTOS.IndexDefs.Clear;

  // 2. Definição dos campos
  with datamodule1.CDSPRODUTOS.FieldDefs do
  begin
    Add('CodInterno', ftString, 20, False);
    Add('CodFornecedor', ftString, 30, False);
    Add('CodBarra', ftString, 30, False);
    Add('Produto', ftString, 100, False);
    Add('Grupo', ftString, 50, False);
    Add('Marca', ftString, 50, False);
    Add('Fornecedor', ftString, 100, False);
    Add('Localizacao', ftString, 30, False);
    Add('Periodo', ftString, 80, False);

    // Campos FLOAT para evitar arredondamento em estoque/venda (melhor prática)
    Add('Estoque', ftFloat);
    Add('QuantidadeVendida', ftFloat); // Alterado de ftInteger para ftFloat

    Add('PrecoCusto', ftCurrency);
    Add('CustoTotal', ftCurrency);

    // Campos da contagem
    Add('Contagem', ftFloat); // Alterado de ftInteger para ftFloat
    Add('Diferenca', ftFloat); // Alterado de ftInteger para ftFloat
    Add('ValorDiferenca', ftCurrency);

    // NOVO CAMPO: Para forçar a ordem de exibição (ordem de inserção)
    Add('ID_ORDEM', ftInteger);
  end;

  // 3. Criação do DataSet
  datamodule1.CDSPRODUTOS.CreateDataSet;

  // 4. Criação dos índices

  // Índice primário para buscas rápidas (Locate)
  IndexDef := datamodule1.CDSPRODUTOS.IndexDefs.AddIndexDef;
  IndexDef.Name := 'IdxCodInterno';
  IndexDef.Fields := 'CodInterno';
  IndexDef.Options := [ixPrimary];

  // NOVO ÍNDICE: Para ordenar pelo ID_ORDEM (ordem de inserção na tela "Produtos Conferidos")
  IndexDef := datamodule1.CDSPRODUTOS.IndexDefs.AddIndexDef;
  IndexDef.Name := 'IdxOrdem';
  IndexDef.Fields := 'ID_ORDEM';
  IndexDef.Options := [];

  // 5. Ativa o índice de ORDEM para a visualização no DBCtrlGrid
 datamodule1. CDSPRODUTOS.IndexName := 'IdxOrdem';

  // 6. Ativação dos agregados
  datamodule1.CDSPRODUTOS.AggregatesActive := True;
end;



































procedure Tfrmmenu.DBGRIDHISTORICODrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  bStatus: Boolean;
  Grid: TDBGrid;
  CorFundoCustomizada: TColor;
begin
  // O Sender é o TDBGrid
  Grid := Sender as TDBGrid;

  // 1. Garante que o DataSet está ativo e o campo STATUS existe
  if not QRYHISTORICO.Active or (QRYHISTORICO.FieldByName('STATUS') = nil) then
    Exit;

  // 2. Obtém o valor do status para a linha atual
  bStatus := QRYHISTORICO.FieldByName('STATUS').AsBoolean;

  // 3. Define as cores customizadas
  if bStatus then
  begin
    // STATUS = TRUE (Completo) -> Verde (Para fundo ou texto)
    CorFundoCustomizada := clGreen;
  end
  else
  begin
    // STATUS = FALSE (Incompleto) -> Vermelho (Para fundo ou texto)
    CorFundoCustomizada := clRed;
  end;


  // 4. Aplica a cor de fundo e da fonte
  if gdSelected in State then
  begin
    // =========================================================
    // LINHA SELECIONADA: COR DO STATUS COM TEXTO BRANCO
    // =========================================================
    // Pinta o fundo da célula com a cor customizada (Verde ou Vermelho)
    Grid.Canvas.Brush.Color := CorFundoCustomizada;
    Grid.Canvas.FillRect(Rect);

    // Força a cor da fonte para Branco
    Grid.Canvas.Font.Color := clWhite;
  end
  else
  begin
    // =========================================================
    // LINHA NÃO SELECIONADA: APENAS TEXTO COLORIDO
    // =========================================================
    // Fundo padrão do Grid
    Grid.Canvas.Brush.Color := clWindow; // Ou a cor de fundo do seu Grid
    Grid.Canvas.FillRect(Rect);

    // Cor da fonte customizada (Verde ou Vermelho)
    Grid.Canvas.Font.Color := CorFundoCustomizada;
  end;

  // 5. Desenha o conteúdo da célula
  Grid.DefaultDrawDataCell(Rect, Column.Field, State);
end;




procedure Tfrmmenu.DBTextprodutoClick(Sender: TObject);
begin
LocalizarProximoNaoConferido;
end;





procedure Tfrmmenu.TeclaClick(Sender: TObject);
var
  Botao: TBitBtn;
  Caractere: Char;
  Captura: String;
  SeparadorDecimal: Char;
begin
  // 1. Identifica o botão clicado
  if not (Sender is TBitBtn) then Exit;
  Botao := Sender as TBitBtn;
  Captura := UpperCase(Trim(Botao.Caption)); // Pega o Caption em maiúsculo e limpo

  // 2. Garante que o EditContagem está ativo
  Editcontagem.SetFocus;

  // 3. Lógica por Ação

  if (Length(Captura) = 1) and (Captura[1] in ['0'..'9']) then
  begin
    // Ação: Inserir Dígito (0 a 9)
    Editcontagem.Text := Editcontagem.Text + Captura;
  end
  else if (Captura = ',') or (Captura = '.') then
  begin
    // Ação: Inserir Separador Decimal
    SeparadorDecimal := FormatSettings.DecimalSeparator;

    // Verifica se o separador já existe
    if Pos(SeparadorDecimal, Editcontagem.Text) = 0 then
    begin
      // Insere o separador do sistema (',' ou '.')
      Editcontagem.Text := Editcontagem.Text + SeparadorDecimal;
    end;
  end
  else if Captura = 'DEL' then
  begin
    // Ação: Apagar o Último Caractere
    if Length(Editcontagem.Text) > 0 then
    begin
      Editcontagem.Text := Copy(Editcontagem.Text, 1, Length(Editcontagem.Text) - 1);
    end;
  end
  else if Captura = 'CONFIRMAR' then
  begin
    // Ação: Confirma a Contagem (Chama a procedure principal)
    btnconfirmaClick(Sender);
  end
  else if Captura = 'SAIR' then
  begin
    // Ação: Sair do Formulário
    Close;
  end;

  // O evento OnChange do Editcontagem cuidará da checagem da diferença.
end;



procedure Tfrmmenu.CarregarHistorico;
begin
  try
    // 1. Garante que a conexão está ativa
    if not DataModule1.ConDados.Connected then
      DataModule1.ConDados.Connected := True;

    // 2. Fecha a query se estiver aberta
    if QRYHISTORICO.Active then
      QRYHISTORICO.Close;

    // 3. Define a ligação dos componentes
    DSQRYHISTORICO.DataSet := QRYHISTORICO;
    DBGRIDHISTORICO.DataSource := DSQRYHISTORICO; // Se o DBGrid estiver no FRMAGESTOQUE

    // 4. Abre a consulta
    QRYHISTORICO.Open;

  except
    on E: Exception do
    begin
      ShowMessage('Erro ao carregar o histórico de ajustes: ' + E.Message);
    end;
  end;
end;



procedure Tfrmmenu.CarregarItensProgresso(NumRelatorio: Integer);
var
  ContadorOrdem: Integer; // Contador para o campo ID_ORDEM
begin
  if NumRelatorio <= 0 then
  begin
    ShowMessage('Número de relatório inválido.');
    Exit;
  end;

  ContadorOrdem := 0; // Inicializa o contador de ordem

  try
    // 1. Prepara e carrega os itens do histórico
    with DataModule1.QRYHIS_ITENS do
    begin
      Close;
      // USAR ORDER BY ID_ITEM para garantir que os itens sejam carregados na ordem
      // em que foram salvos originalmente.
      SQL.Text := 'SELECT * FROM TAB_HIS_AJUSTE_ITENS WHERE NUMRELATORIO = :NumRelatorio ORDER BY ID_ITEM';
      ParamByName('NumRelatorio').AsInteger := NumRelatorio;
      Open;

      if IsEmpty then
      begin
        ShowMessage('Nenhum item encontrado para esse progresso.');
        Close;
        Exit;
      end;

      // 2. Limpa e prepara o ClientDataSet
      datamodule1.CDSPRODUTOS.Close;
      datamodule1.CDSPRODUTOS.CreateDataSet; // Recria a estrutura para garantir que ID_ORDEM exista

      First;
      while not Eof do
      begin
        Inc(ContadorOrdem); // Incrementa o contador

        datamodule1.CDSPRODUTOS.Append;

        // REGRA DE INTEGRIDADE: Preenche o campo de ordem
        datamodule1.CDSPRODUTOS.FieldByName('ID_ORDEM').AsInteger := ContadorOrdem;

        // Copia campo por campo do histórico para o ClientDataSet
        datamodule1.CDSPRODUTOS.FieldByName('CodInterno').AsString       := FieldByName('CODINTERNO').AsString;
        datamodule1.CDSPRODUTOS.FieldByName('Produto').AsString          := FieldByName('PRODUTO_DESCRICAO').AsString;
       datamodule1. CDSPRODUTOS.FieldByName('Grupo').AsString            := FieldByName('GRUPO').AsString;
       datamodule1. CDSPRODUTOS.FieldByName('Marca').AsString            := FieldByName('MARCA').AsString;
       datamodule1. CDSPRODUTOS.FieldByName('Fornecedor').AsString       := FieldByName('FORNECEDOR').AsString;
       datamodule1. CDSPRODUTOS.FieldByName('CodFornecedor').AsString    := FieldByName('CODFORNECEDOR').AsString;
       datamodule1. CDSPRODUTOS.FieldByName('CodBarra').AsString         := FieldByName('CODBARRA').AsString;
       datamodule1. CDSPRODUTOS.FieldByName('QuantidadeVendida').AsFloat := FieldByName('QTD_VENDIDA').AsFloat;
       datamodule1. CDSPRODUTOS.FieldByName('Localizacao').AsString      := FieldByName('LOCALIZACAO').AsString;
        datamodule1.CDSPRODUTOS.FieldByName('Estoque').AsFloat           := FieldByName('ESTOQUE_ANTERIOR').AsFloat;
        datamodule1.CDSPRODUTOS.FieldByName('Contagem').AsFloat          := FieldByName('CONTAGEM_FINAL').AsFloat;
        datamodule1.CDSPRODUTOS.FieldByName('Diferenca').AsFloat         := FieldByName('DIFERENCA').AsFloat;
        datamodule1.CDSPRODUTOS.FieldByName('PrecoCusto').AsCurrency     := FieldByName('PRECO_CUSTO').AsCurrency;
        datamodule1.CDSPRODUTOS.FieldByName('ValorDiferenca').AsCurrency := FieldByName('VALOR_DIFERENCA').AsCurrency;
        datamodule1.CDSPRODUTOS.FieldByName('CustoTotal').AsCurrency     := FieldByName('CUSTO_TOTAL').AsCurrency;

        // Preenche o campo de período com base nas datas da tela (ou carregadas do cabeçalho)
        datamodule1.CDSPRODUTOS.FieldByName('Periodo').AsString :=
          FormatDateTime('dd/mm/yyyy', dtinicio.Date) + ' a ' + FormatDateTime('dd/mm/yyyy', dtfim.Date);

        datamodule1.CDSPRODUTOS.Post;
        Next;
      end;

      datamodule1.CDSPRODUTOS.First;
      FNumRelatorioAtual := NumRelatorio;

      // 3. Atualiza botões de progresso
      btnsalvaprog.Visible := FALSE;
      btnatualizahist.Enabled := True;
      btnatualizahist.Visible := True;
    end;

    // =========================================================
    // REGRA DE SEGURANÇA: Bloquear filtros ao retomar progresso
    // =========================================================
    dtinicio.Enabled := False;
    dtfim.Enabled := False;
    cmbgrupo.Enabled := False;
    cmbmarca.Enabled := False;
    cmbfornecedor.Enabled := False;
    btnconsultar.Enabled := False;
    editlocal.Enabled :=false; // Botão de iniciar nova consulta

    // 4. Atualiza os contadores e status de botões
    AtualizarContadores;
    AtualizarBotoesRelatorio;

  except
    on E: Exception do
      ShowMessage('Erro ao carregar itens do progresso: ' + E.Message);
  end;
end;



procedure Tfrmmenu.AplicarPeriodoEExecutarRelatorio(NumRelatorio: Integer);
var
  DataInicio, DataFim: TDateTime;
  // Variáveis para os filtros recuperados
  GrupoFiltro, MarcaFiltro, FornecedorFiltro, LocalizacaoFiltro: string;
begin
  // 1. Validação
  if NumRelatorio <= 0 then
  begin
    ShowMessage('Número de relatório inválido.');
    Exit;
  end;

  // 2. Recupera o período e todos os filtros do cabeçalho
  try
    with DataModule1.QRYHIS_CAB do
    begin
      Close;
      // SQL ATUALIZADO: Buscando todos os campos de filtro
      SQL.Text := 'SELECT PERIODO_INICIO, PERIODO_FIM, GRUPO_FILTRO, MARCA_FILTRO, FORNECEDOR_FILTRO, LOCALIZACAO_FILTRO FROM TAB_HIS_AJUSTE_CAB WHERE NUMRELATORIO = :ID';
      ParamByName('ID').AsInteger := NumRelatorio;
      Open;

      if IsEmpty then
      begin
        ShowMessage('Cabeçalho não encontrado para esse relatório.');
        Close;
        Exit;
      end;

      DataInicio := FieldByName('PERIODO_INICIO').AsDateTime;
      DataFim := FieldByName('PERIODO_FIM').AsDateTime;
      GrupoFiltro := FieldByName('GRUPO_FILTRO').AsString;

      // Recuperando os NOVOS filtros
      MarcaFiltro := FieldByName('MARCA_FILTRO').AsString;
      FornecedorFiltro := FieldByName('FORNECEDOR_FILTRO').AsString;
      LocalizacaoFiltro := FieldByName('LOCALIZACAO_FILTRO').AsString;

      Close;
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao recuperar período/filtros do relatório: ' + E.Message);
      Exit;
    end;
  end;

  // 3. Aplica os dados de PERÍODO na tela
  dtinicio.Date := DataInicio;
  dtfim.Date := DataFim;

  // 4. Aplica os FILTROS nos ComboBoxes e TEdit

  // APLICA GRUPO
  if GrupoFiltro <> '' then
    cmbgrupo.ItemIndex := cmbgrupo.Items.IndexOf(GrupoFiltro);

  // APLICA MARCA
  if MarcaFiltro <> '' then
    cmbmarca.ItemIndex := cmbmarca.Items.IndexOf(MarcaFiltro);

  // APLICA FORNECEDOR
  if FornecedorFiltro <> '' then
    cmbfornecedor.ItemIndex := cmbfornecedor.Items.IndexOf(FornecedorFiltro);

  // APLICA LOCALIZAÇÃO (Editlocal)
  if LocalizacaoFiltro <> 'TODOS' then
    Editlocal.Text := LocalizacaoFiltro
  else
    Editlocal.Text := '';

  // 5. Executa a consulta base com os filtros aplicados
  RelatorioManual;

  // IMPORTANTE: Assumimos que, após o RelatorioManual, uma rotina
  // (ex: CarregarItensProgresso) é chamada para carregar os campos
  // Contagem, Diferenca, etc., no CDSPRODUTOS.
  // A lógica de navegação deve vir após essa carga.

  // 6. LÓGICA DE NAVEGAÇÃO: Move o cursor para o primeiro registro não contado
  datamodule1.CDSPRODUTOS.First;
  while not datamodule1.CDSPRODUTOS.Eof do
  begin
    // O campo 'Contagem' é o marcador. Se for 0.00, o item não foi contado no progresso atual.
    if datamodule1.CDSPRODUTOS.FieldByName('Contagem').AsFloat = 0.00 then
    begin
      // Cursor posicionado no primeiro item não contado
      Break;
    end;
    datamodule1.CDSPRODUTOS.Next;
  end;

  // Se o laço terminar, todos os produtos foram contados,
  // e o cursor estará no último registro (o que é ok, mas o usuário saberá que terminou).
end;


procedure Tfrmmenu.AtualizarContadores;
var
  TotalItensConsulta: Integer;
  ItensConferidos: Integer;
begin
  // 1. Total de itens na consulta (QRYRKVEND)
  if QRYRKVEND.Active then
    TotalItensConsulta := QRYRKVEND.RecordCount
  else
    TotalItensConsulta := 0;

  // 2. Total de itens conferidos (CDSPRODUTOS)
  if datamodule1.CDSPRODUTOS.Active then
    ItensConferidos := datamodule1.CDSPRODUTOS.RecordCount
  else
    ItensConferidos := 0;

  // 3. ATUALIZAÇÃO DA LABEL ESPECÍFICA (Labeltotalconferidos)
  // Esta label mostrará a contagem pura do CDSPRODUTOS
 

  // 4. ATUALIZAÇÃO DA LABEL GERAL (Labelitensvendidos) - Opcional, mantém o formato de comparação
  if Assigned(Labelitensvendidos) then
  begin
    Labelitensvendidos.Caption := Format('Conferidos: %d de %d', [ItensConferidos, TotalItensConsulta]);
  end;
end;


procedure Tfrmmenu.BitBtn3Click(Sender: TObject);
begin
CarregarListaBaseProdutos;
end;

procedure Tfrmmenu.Label1Click(Sender: TObject);
begin
LocalizarProximoNaoConferido;
end;
















procedure Tfrmmenu.LabelinforClick(Sender: TObject);
begin
BuscarProdutoPreVendaPorCodInterno;
CarregarPedidosDoProdutoAtual;
end;

procedure Tfrmmenu.LocalizarProximoNaoConferido;
var
  CodInternoAtual: String;
  Achou: Boolean;
begin
  // 1. Validação inicial
  if not QRYRKVEND.Active or QRYRKVEND.IsEmpty then
  begin
    ShowMessage('A lista de produtos para conferência está vazia.');
    Exit;
  end;

  if not datamodule1.CDSPRODUTOS.Active then
    datamodule1.CDSPRODUTOS.Open;

  // 2. Tenta localizar o primeiro item não conferido, começando do primeiro registro
  QRYRKVEND.First;
  Achou := False;

  while not QRYRKVEND.Eof do
  begin
    CodInternoAtual := QRYRKVEND.FieldByName('CodInterno').AsString;

    // Tenta localizar o CodInterno do item da QRYRKVEND no CDSPRODUTOS
    if not datamodule1.CDSPRODUTOS.Locate('CodInterno', CodInternoAtual, [loCaseInsensitive]) then
    begin
      // Se não encontrou no CDSPRODUTOS, este é o primeiro item NÃO conferido.
      Achou := True;
      Break; // Sai do loop, o QRYRKVEND já está posicionado.
    end;

  QRYRKVEND.Next;
  end;

  // 3. Feedback ao usuário
  if not Achou then
  begin
    // Se saiu do loop sem achar, todos os itens foram conferidos.
    ShowMessage('Todos os produtos desta lista foram conferidos. Contagem completa!');
    // O cursor fica no final (EOF) ou no último item.
  end;

  // O cursor do QRYRKVEND está agora posicionado no primeiro item não conferido
  // (ou no EOF se todos foram conferidos).
end;






procedure Tfrmmenu.CarregarProdutosEmAberto;
begin
  // 1. Validação de Datas
  if dtinicio.Date > dtfim.Date then
  begin
    ShowMessage('A Data Inicial não pode ser maior que a Data Final.');
    Exit;
  end;

  // 2. Query Mestra: PRODUTOS EM ABERTO (QRYPRODUTOSABERTOS)
  try
    QRYPRODUTOSABERTOS.Close;

    // SQL ATUALIZADO: Inclui CodBarra
   QRYPRODUTOSABERTOS.SQL.Text :=
      'SELECT ' +
      '    B.LkProduto AS LkProduto, ' +
      '    P.CodInterno, ' +
      '    P.Produto, ' +
      '    P.CodBarra, ' + // <-- NOVO: Código de Barras
      '    P.CodFornecedor, ' +
      '    P.Moeda AS Localizacao, ' +
      '    G.Setor AS Grupo, ' +
      '    P.Fabricante AS Marca, ' +
      '    F.Empresa AS Fornecedor, ' +
      '    P.Quantidade AS QtdEstoque, ' +
      '    CAST(SUM(B.Qtdreal) AS NUMERIC(12, 2)) AS QtdReserva, ' +
      '    COUNT(DISTINCT A.Pedido) AS NumPedidos ' +
      'FROM TabEst3B B WITH (NOLOCK) ' +
      'INNER JOIN TabEst3A A WITH (NOLOCK) ON A.Pedido = B.PEDIDO ' +
      'INNER JOIN TABEST1 P WITH (NOLOCK) ON P.Controle = B.LkProduto ' +
      'LEFT JOIN TabEst8 G WITH (NOLOCK) ON P.LkSetor = G.Controle ' +
      'LEFT JOIN TabFor F WITH (NOLOCK) ON P.LkFornec = F.Controle ' +
      'WHERE A.DATA >= :DataInicio AND A.DATA <= :DataFim ' +
      '  AND A.Cancelada <> 1 ' +
      '  AND A.VENDA <> 1 ' +
      '  AND A.STATUS IN (''P'') ' +
      // É crucial incluir todos os novos campos no GROUP BY
      'GROUP BY B.LkProduto, P.CodInterno, P.Produto, P.Quantidade, P.CodFornecedor, P.Moeda, G.Setor, P.Fabricante, F.Empresa, P.CodBarra ' + // <-- INCLUÍDO NO GROUP BY
      'ORDER BY P.Produto';

    // Aplica filtros de data
    QRYPRODUTOSABERTOS.ParamByName('DataInicio').AsDateTime := dtinicio.Date;
    QRYPRODUTOSABERTOS.ParamByName('DataFim').AsDateTime := dtfim.Date;

    // Abre a consulta Mestra
    QRYPRODUTOSABERTOS.Open;

    // Liga a fonte de dados mestra ao DBCtrlGrid
    DSQRYPRODUTOSABERTOS.DataSet := QRYPRODUTOSABERTOS;
    DBCtrlGridprodabertos.DataSource := DSQRYPRODUTOSABERTOS;

  except
    on E: Exception do
      ShowMessage('Erro ao consultar produtos em aberto: ' + E.Message);
  end;
end;





procedure Tfrmmenu.BuscarProdutoPreVendaPorCodInterno;
var
  CodInternoSelecionado: string;
begin
  // 1. Validação: Verifica se há produto selecionado na QRYRKVEND
  if not QRYRKVEND.Active or QRYRKVEND.IsEmpty then
  begin
    ShowMessage('Nenhum produto selecionado para busca.');
    Exit;
  end;

  CodInternoSelecionado := QRYRKVEND.FieldByName('CodInterno').AsString;

  // 2. Executa a consulta de pré-vendas filtrando por CodInterno
  try
    QRYPRODUTOSABERTOS.Close;

    QRYPRODUTOSABERTOS.SQL.Text :=
      'SELECT ' +
      '    B.LkProduto AS LkProduto, ' +
      '    P.CodInterno, ' +
      '    P.Produto, ' +
      '    P.CodBarra, ' +
      '    P.CodFornecedor, ' +
      '    P.Moeda AS Localizacao, ' +
      '    G.Setor AS Grupo, ' +
      '    P.Fabricante AS Marca, ' +
      '    F.Empresa AS Fornecedor, ' +
      '    P.Quantidade AS QtdEstoque, ' +
      '    CAST(SUM(B.Qtdreal) AS NUMERIC(12, 2)) AS QtdReserva, ' +
      '    COUNT(DISTINCT A.Pedido) AS NumPedidos ' +
      'FROM TabEst3B B WITH (NOLOCK) ' +
      'INNER JOIN TabEst3A A WITH (NOLOCK) ON A.Pedido = B.PEDIDO ' +
      'INNER JOIN TABEST1 P WITH (NOLOCK) ON P.Controle = B.LkProduto ' +
      'LEFT JOIN TabEst8 G WITH (NOLOCK) ON P.LkSetor = G.Controle ' +
      'LEFT JOIN TabFor F WITH (NOLOCK) ON P.LkFornec = F.Controle ' +
      'WHERE A.Cancelada <> 1 ' +
      '  AND A.VENDA <> 1 ' +
      '  AND A.STATUS IN (''P'') ' +
      '  AND P.CodInterno = :CodInterno ' +
      'GROUP BY B.LkProduto, P.CodInterno, P.Produto, P.Quantidade, P.CodFornecedor, P.Moeda, G.Setor, P.Fabricante, F.Empresa, P.CodBarra ' +
      'ORDER BY P.Produto';

    QRYPRODUTOSABERTOS.ParamByName('CodInterno').AsString := CodInternoSelecionado;

    QRYPRODUTOSABERTOS.Open;

    // Liga ao grid
    DSQRYPRODUTOSABERTOS.DataSet := QRYPRODUTOSABERTOS;
    DBCtrlGridprodabertos.DataSource := DSQRYPRODUTOSABERTOS;

   

  except
    on E: Exception do
      ShowMessage('Erro ao buscar produto em pré-vendas: ' + E.Message);
  end;
end;









procedure Tfrmmenu.movimentojacontado;
var
  sCodInterno: string;
begin
  // 1. Validação de seleção na lista de histórico de contagem
  if not (datamodule1.QRYPRODUTOSCONTADOS.Active and not datamodule1.QRYPRODUTOSCONTADOS.IsEmpty) then
  begin
    ShowMessage('Selecione um produto no Histórico de Conferência (Produtos Contados) para consultar a movimentação.');
    Exit;
  end;

  try
    // 2. Captura o CodInterno do produto selecionado do histórico
    sCodInterno := datamodule1.QRYPRODUTOSCONTADOS.FieldByName('CODINTERNO').AsString;

    if sCodInterno = '' then
    begin
        ShowMessage('Código Interno (CODINTERNO) do produto não encontrado no histórico selecionado.');
        Exit;
    end;

    // 3. Define e executa o SQL para consultar a TabEst1Mov
    with datamodule1.qryTabest1mov do
    begin
      Close;

      SQL.Clear;
      SQL.Add('SELECT top 50');
      SQL.Add('    M.Data,');
      SQL.Add('    U.USUARIO AS Usuario,');
      SQL.Add('    CASE M.LkOperacao WHEN 1 THEN ''SAIDA'' ELSE ''ENTRADA'' END AS Operacao,');
      SQL.Add('    T.Tipo AS Tipo,');
      SQL.Add('    M.Pedido,');

      // Apelidos (Aliases) para clareza no DBGrid:
      SQL.Add('    M.Quantidade AS "Qtd. Movimentada",');
      SQL.Add('    M.SaldoAnterior AS "Estoque Anterior",');
      SQL.Add('    M.Saldo AS "Estoque Atualizado",');

      SQL.Add('    M.Terminal,');
      SQL.Add('    M.CodInterno,');
      SQL.Add('    M.LkItem,');
      SQL.Add('    M.LkUsuario,');
      SQL.Add('    M.LkOperacao');

      SQL.Add('FROM');
      SQL.Add('    TabEst1Mov M WITH (NOLOCK)');
      SQL.Add('INNER JOIN SERV U ON U.Controle = M.LkUsuario');
      SQL.Add('INNER JOIN TabEstMovTipo T ON T.Controle = M.LkTipo');

      // Filtro pelo CodInterno do produto selecionado
      SQL.Add('WHERE M.CodInterno = ' + QuotedStr(sCodInterno));
      SQL.Add('ORDER BY M.Data DESC');

      // 4. Abre a Query
      Open;
    end;

    // 5. Navega para a aba de movimentação (TabSheet5)
    PageControl1.ActivePage := TabSheet5;

  except
    on E: Exception do
    begin
      ShowMessage('Erro ao consultar movimentação: ' + E.Message);
    end;
  end;
end;







procedure Tfrmmenu.btnconsultprevendaClick(Sender: TObject);
begin

BuscarProdutoPreVendaPorCodInterno;
CarregarPedidosDoProdutoAtual;
 PageControl1.ActivePage := TabSheet4;
end;

procedure Tfrmmenu.CarregarPedidosDoProdutoAtual;
var
  CodInterno: string;
begin
  // 1. Validação: Verifica se há produto selecionado na QRYRKVEND
  if not QRYRKVEND.Active or QRYRKVEND.IsEmpty then
  begin
    ShowMessage('Nenhum produto selecionado para carregar pedidos.');
    Exit;
  end;

  CodInterno := QRYRKVEND.FieldByName('CodInterno').AsString;

  // 2. Busca o LkProduto correspondente na TABEST1
  with DataModule1.QRYSEQ do
  begin
    Close;
    SQL.Text := 'SELECT Controle FROM TABEST1 WHERE CodInterno = :CodInterno';
    ParamByName('CodInterno').AsString := CodInterno;
    Open;

    if IsEmpty then
    begin
      ShowMessage('Produto não encontrado na base TABEST1.');
      Exit;
    end;
  end;

  // 3. Carrega os pedidos vinculados ao LkProduto
  try
    datamodule1.QRYPEDIDOS.Close;

   datamodule1. QRYPEDIDOS.SQL.Text :=
      'SELECT ' +
      '    A.*, ' +
      '    B.Qtdreal AS QuantidadeItem, ' +
      '    CASE ' +
      '        WHEN A.STATUS = ''P'' THEN ''PRÉ-VENDA'' ' +
      '        WHEN A.STATUS = ''O'' THEN ''ORÇAMENTO'' ' +
      '        ELSE ''OUTROS'' ' +
      '    END AS Situacao ' +
      'FROM TabEst3A A WITH (NOLOCK) ' +
      'INNER JOIN TabEst3B B WITH (NOLOCK) ON A.Pedido = B.PEDIDO ' +
      'WHERE A.Cancelada <> 1 ' +
      '  AND A.VENDA <> 1 ' +
      '  AND A.STATUS = ''P'' ' +
      '  AND B.LkProduto = :LkProduto ' +
      'ORDER BY A.Pedido DESC';

    datamodule1.QRYPEDIDOS.ParamByName('LkProduto').AsInteger := DataModule1.QRYSEQ.FieldByName('Controle').AsInteger;

    datamodule1.QRYPEDIDOS.Open;

   datamodule1. DSQRYPEDIDOS.DataSet := datamodule1.QRYPEDIDOS;
    DBCtrlGridpedidos.DataSource := datamodule1.DSQRYPEDIDOS;

  except
    on E: Exception do
      ShowMessage('Erro ao carregar pedidos do produto: ' + E.Message);
  end;
end;




 procedure Tfrmmenu.Estoque_AjustarSaldo(sCodInterno: string; fNovaQuantidade: Extended; iLkUsuario: Integer);
// Responsável por atualizar a quantidade na TABEST1
begin
    datamodule1.QRYUPDATETABEST1.SQL.Text :=
        'UPDATE TabEst1 SET Quantidade = :NovaQtd, DtAlteracao = GETDATE(), LkUsuario = :LkUser ' +
        'WHERE CodInterno = :CodInt';

    datamodule1.QRYUPDATETABEST1.ParamByName('NovaQtd').AsFloat := fNovaQuantidade;
    datamodule1.QRYUPDATETABEST1.ParamByName('CodInt').AsString := sCodInterno;
    datamodule1.QRYUPDATETABEST1.ParamByName('LkUser').AsInteger := iLkUsuario;
    datamodule1.QRYUPDATETABEST1.Execute;
end;




procedure Tfrmmenu.Estoque_RegistrarMovimento(sCodInterno: string; fDiferenca: Extended; fEstoqueAnterior: Extended; fNovaQuantidade: Extended; iLkUsuario: Integer; iLkItem: Integer);
// Responsável por inserir o registro na TABEST1MOV
var
  iLkOperacao: Integer;
  iLkTipo: Integer;
  sTerminal: string;
  iTamanhoTerminal: DWord;
begin
  // =========================================================
  // 1. OBTENÇÃO DO NOME DO COMPUTADOR (TERMINAL)
  // =========================================================
  sTerminal := '';
  iTamanhoTerminal := MAX_COMPUTERNAME_LENGTH + 1;
  SetLength(sTerminal, iTamanhoTerminal);

  // Chama a API do Windows para capturar o nome do PC
  if Winapi.Windows.GetComputerName(PChar(sTerminal), iTamanhoTerminal) then
  begin
    // Redimensiona a string para o tamanho real do nome obtido
    SetLength(sTerminal, iTamanhoTerminal);
  end
  else
  begin
    // Fallback em caso de falha na API
    sTerminal := 'ERRO_NOME_PC';
  end;

  sTerminal := Trim(sTerminal);

  // =========================================================
  // 2. CÓDIGOS DE MOVIMENTO
  // =========================================================
  // Configurado para Movimento de Conferência/Ajuste
  iLkOperacao := 1; // 1 = Saída (Geralmente Saída ou Entrada, dependendo da diferença. O seu sistema usa LkOperacao=1 para ajustes de conferência) [cite: 467, 511]
  iLkTipo := 5;     // 5 = Tipo específico para Conferência Estoque [cite: 512]

  // =========================================================
  // 3. EXECUÇÃO DO INSERT
  // =========================================================
  datamodule1.QRYUPDATETABESTMOV.SQL.Text :=
    'INSERT INTO TabEst1Mov ' +
    ' (Data, CodInterno, Quantidade, SaldoAnterior, Saldo, LkOperacao, LkUsuario, LkItem, LkTipo, Terminal) ' +
    'VALUES (GETDATE(), :CodInt, :QtdMov, :SaldoAnt, :SaldoAtual, :LkOp, :LkUser, :LkItem, :LkTipo, :Terminal)';

  datamodule1.QRYUPDATETABESTMOV.ParamByName('CodInt').AsString := sCodInterno;
  datamodule1.QRYUPDATETABESTMOV.ParamByName('QtdMov').AsFloat := fDiferenca;
  datamodule1.QRYUPDATETABESTMOV.ParamByName('SaldoAnt').AsFloat := fEstoqueAnterior;
  datamodule1.QRYUPDATETABESTMOV.ParamByName('SaldoAtual').AsFloat := fNovaQuantidade;
  datamodule1.QRYUPDATETABESTMOV.ParamByName('LkOp').AsInteger := iLkOperacao;
  datamodule1.QRYUPDATETABESTMOV.ParamByName('LkUser').AsInteger := iLkUsuario;
  datamodule1.QRYUPDATETABESTMOV.ParamByName('LkItem').AsInteger := iLkItem;
  datamodule1.QRYUPDATETABESTMOV.ParamByName('LkTipo').AsInteger := iLkTipo;

  // ATRIBUIÇÃO CORRETA DO TERMINAL
  datamodule1.QRYUPDATETABESTMOV.ParamByName('Terminal').AsString := sTerminal;

  datamodule1.QRYUPDATETABESTMOV.Execute;
end;




procedure Tfrmmenu.AjustarEstoqueEAtualizarMovimento(Sender: TObject);
var
  sCodInterno, sProduto: string;
  fNovaQuantidade, fEstoqueAnterior, fDiferenca: Extended;
  iLkUsuario, iLkItem: Integer;
  sUsuario: string;
  QryBuscaLkItem: TUniQuery;
  BM: TBookmark; // Adicionado para proteger a posição da QRYPRODUTOSCONTADOS

begin
  // --- VALIDAÇÃO E PREPARAÇÃO (Alterado para QRYPRODUTOSCONTADOS) ---

  // Agora, valida se a lista de itens do HISTÓRICO está ativa
  if not datamodule1.QRYPRODUTOSCONTADOS.Active or datamodule1.QRYPRODUTOSCONTADOS.IsEmpty then
  begin
    ShowMessage('A lista de produtos conferidos do histórico está vazia. Nada será ajustado.');
    Exit;
  end;

  if MessageDlg('CONFIRMA A ATUALIZAÇÃO DEFINITIVA DO ESTOQUE?',
                mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    Exit;

  // 1. Prepara variáveis de usuário
  if Assigned(FRMSEN) then
  begin
    sUsuario := FRMSEN.Cmbusuario.Text;
    iLkUsuario := FRMSEN.UsuarioControle;
  end else begin
    sUsuario := 'SISTEMA';
    iLkUsuario := 0;
  end;

  // 2. Conecta as Queries ao DataModule (Garante que a transação utiliza a mesma conexão)
  datamodule1.QRYUPDATETABEST1.Connection := DataModule1.ConDados;
  datamodule1.QRYUPDATETABESTMOV.Connection := DataModule1.ConDados;

  // 3. Cria Query temporária para buscar o LkItem (Controle)
  QryBuscaLkItem := TUniQuery.Create(nil);
  QryBuscaLkItem.Connection := DataModule1.ConDados;

  DataModule1.ConDados.StartTransaction; // <<< INÍCIO DA TRANSAÇÃO

  // Salva a posição do cursor antes de iterar
  BM := datamodule1.QRYPRODUTOSCONTADOS.GetBookmark;

  try
    datamodule1.QRYPRODUTOSCONTADOS.DisableControls;
    datamodule1.QRYPRODUTOSCONTADOS.First;

    // Altera a iteração para a QRYPRODUTOSCONTADOS
    while not datamodule1.QRYPRODUTOSCONTADOS.Eof do
    begin
      // --- MAPEAMENTO DOS CAMPOS DA TAB_HIS_AJUSTE_ITENS ---
      sCodInterno := datamodule1.QRYPRODUTOSCONTADOS.FieldByName('CODINTERNO').AsString;
      fNovaQuantidade := datamodule1.QRYPRODUTOSCONTADOS.FieldByName('CONTAGEM_FINAL').AsFloat; // Novo campo
      fEstoqueAnterior := datamodule1.QRYPRODUTOSCONTADOS.FieldByName('ESTOQUE_ANTERIOR').AsFloat; // Novo campo
      fDiferenca := fNovaQuantidade - fEstoqueAnterior;
      // ---------------------------------------------------

      // PASSO 1: BUSCAR O LKITEM
      QryBuscaLkItem.SQL.Text := 'SELECT Controle FROM TabEst1 WHERE CodInterno = :CodInt';
      QryBuscaLkItem.ParamByName('CodInt').AsString := sCodInterno;
      QryBuscaLkItem.Open;

      if QryBuscaLkItem.IsEmpty then
        raise Exception.CreateFmt('Produto não encontrado na TabEst1 para CodInterno: %s', [sCodInterno]);

      iLkItem := QryBuscaLkItem.FieldByName('Controle').AsInteger;
      QryBuscaLkItem.Close;

      // PASSO 2: EXECUTAR AÇÕES SOMENTE SE HOUVER DIFERENÇA
      if fDiferenca <> 0 then
      begin
        // 🚨 CHAMA PROCEDURE 1: ATUALIZA O SALDO NA TABELA MESTRA
        Estoque_AjustarSaldo(sCodInterno, fNovaQuantidade, iLkUsuario);

        // 🚨 CHAMA PROCEDURE 2: REGISTRA O MOVIMENTO NO LOG
        Estoque_RegistrarMovimento(sCodInterno, fDiferenca, fEstoqueAnterior, fNovaQuantidade, iLkUsuario, iLkItem);
      end;

      datamodule1.QRYPRODUTOSCONTADOS.Next; // Move para o próximo registro do histórico
    end; // Fim while

    DataModule1.ConDados.Commit; // SUCESSO

    ShowMessage('Ajuste definitivo de estoque e movimento concluído com sucesso!');

    // Recarrega a lista de movimento para o usuário ver o ajuste


  except
    on E: Exception do
    begin
      DataModule1.ConDados.Rollback; // FALHA
      ShowMessage('ERRO CRÍTICO no ajuste de estoque. A transação foi cancelada. Detalhes: ' + E.Message);
    end;
  end;

  // Restaura a posição e libera recursos
  if Assigned(BM) then
    datamodule1.QRYPRODUTOSCONTADOS.GotoBookmark(BM);
  datamodule1.QRYPRODUTOSCONTADOS.FreeBookmark(BM);
  datamodule1.QRYPRODUTOSCONTADOS.EnableControls;


  // 4. Libera o recurso temporário
  QryBuscaLkItem.Free;

  // Limpa a lista de contagem (se ainda estiver preenchida)

end;




procedure Tfrmmenu.CalcularETotalizar;
var
  TotalCusto: Currency;
  TotalDiferenca: Currency;
  BM: TBookmark; // Para salvar a posição da QRYPRODUTOSCONTADOS
begin
  // 1. Garante que a Query de Produtos Contados está ativa e tem dados
  if not datamodule1.QRYPRODUTOSCONTADOS.Active or datamodule1.QRYPRODUTOSCONTADOS.IsEmpty then
    Exit; // Sai se não houver dados para somar

  // 2. Verifica/Cria a estrutura do CDSTOTAIS
  if datamodule1.CDSTOTAIS.FieldDefs.Count = 0 then
  begin
    // Se a estrutura não existe (apenas na primeira chamada), crie-a
    datamodule1.CDSTOTAIS.Close;
    with datamodule1.CDSTOTAIS.FieldDefs.AddFieldDef do
      begin Name := 'TOTALCUSTO'; DataType := ftCurrency; end;
    with datamodule1.CDSTOTAIS.FieldDefs.AddFieldDef do
      begin Name := 'TOTALDIFERENCA'; DataType := ftCurrency; end;
    datamodule1.CDSTOTAIS.CreateDataSet;
  end;

  // 3. Limpa o registro existente no CDSTOTAIS
  if datamodule1.CDSTOTAIS.Active then
    datamodule1.CDSTOTAIS.EmptyDataSet // Limpa o conteúdo (um único registro)
  else
    datamodule1.CDSTOTAIS.Open;

  // 4. Salva a posição da QRYPRODUTOSCONTADOS e inicializa totais
  BM := datamodule1.QRYPRODUTOSCONTADOS.GetBookmark;
  TotalCusto := 0;
  TotalDiferenca := 0;

  try
    datamodule1.QRYPRODUTOSCONTADOS.DisableControls; // Melhora a performance visual
    datamodule1.QRYPRODUTOSCONTADOS.First;

    // 5. Calcula os Totais Percorrendo a QRYPRODUTOSCONTADOS (O NOVO DATASET)
    while not datamodule1.QRYPRODUTOSCONTADOS.Eof do
    begin
      // Soma o custo total de estoque de cada produto (CUSTO_TOTAL)
      TotalCusto := TotalCusto + datamodule1.QRYPRODUTOSCONTADOS.FieldByName('CUSTO_TOTAL').AsCurrency;

      // Soma o valor da diferença de cada produto (VALOR_DIFERENCA)
      TotalDiferenca := TotalDiferenca + datamodule1.QRYPRODUTOSCONTADOS.FieldByName('VALOR_DIFERENCA').AsCurrency;

      datamodule1.QRYPRODUTOSCONTADOS.Next;
    end;
  finally
    // 6. Restaura a posição da QRYPRODUTOSCONTADOS (boas práticas)
    if Assigned(BM) then
      datamodule1.QRYPRODUTOSCONTADOS.GotoBookmark(BM);

    datamodule1.QRYPRODUTOSCONTADOS.FreeBookmark(BM);
    datamodule1.QRYPRODUTOSCONTADOS.EnableControls;
  end;

  // 7. Salva o Resultado no CDSTOTAIS
  datamodule1.CDSTOTAIS.Append;
  datamodule1.CDSTOTAIS.FieldByName('TOTALCUSTO').AsCurrency := TotalCusto;
 datamodule1. CDSTOTAIS.FieldByName('TOTALDIFERENCA').AsCurrency := TotalDiferenca;
  datamodule1.CDSTOTAIS.Post;


end;



procedure Tfrmmenu.CarregarListaBaseProdutos;
var
  SQLText: TStringList;
begin
  // 1. Validação dos componentes (mantida para segurança)
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
    SQLText.Add('  G.Setor AS Grupo,');
    SQLText.Add('  P.Fabricante AS Marca,');
    SQLText.Add('  F.Empresa AS Fornecedor,');

    // =========================================================
    // COLUNAS DE PREÇO E MARGEM SOLICITADAS DA TABEST1
    // =========================================================
    SQLText.Add('  P.PrecoCusto,');
    SQLText.Add('  P.Lucro AS MargemVarejo,');         // Campo Lucro (Margem %)
    SQLText.Add('  P.PrecoVenda AS PrecoVarejo,');      // Preço de Venda (Varejo)

    SQLText.Add('  P.PerPrazo AS PerPrazo,');          // Margem Prazo (PerPrazo)
    SQLText.Add('  P.PrPrazo AS PrPrazo,');            // Preço Prazo (PrPrazo)
    SQLText.Add('  P.PerAtacado AS PerAtacado,');      // Margem Atacado (PerAtacado)
    SQLText.Add('  P.PrAtacado AS PrAtacado,');        // Preço Atacado (PrAtacado)
    SQLText.Add('  P.PerMinimo AS PerMinimo,');        // Margem Mínima (PerMinimo)
    SQLText.Add('  P.PrMinimo AS PrMinimo,');          // Preço Mínimo (PrMinimo)

    // Níveis de Atacado
    SQLText.Add('  P.PrAtacado1 AS PrAtacado1,');
    SQLText.Add('  P.PrAtacado2 AS PrAtacado2,');
    SQLText.Add('  P.PrAtacado3 AS PrAtacado3,');
    SQLText.Add('  P.PrAtacado4 AS PrAtacado4,');

    // Outros campos para contexto
    SQLText.Add('  P.Quantidade AS Estoque,');
    SQLText.Add('  P.Quantidade * P.PrecoCusto AS CustoTotal,');
    SQLText.Add('  P.Moeda AS Localizacao');

    SQLText.Add('FROM tabest1 P WITH (NOLOCK)');
    SQLText.Add('LEFT JOIN tabest8 G WITH (NOLOCK) ON P.LkSetor = G.Controle');
    SQLText.Add('LEFT JOIN tabfor F WITH (NOLOCK) ON P.LkFornec = F.Controle');

    // Filtros de Inatividade e Visibilidade (Padrão)
    SQLText.Add('WHERE P.Inativo <> 1');
    SQLText.Add('  AND P.NaoSaiTabela = 0');

    // =========================================================
    // APLICAÇÃO DOS FILTROS DA TELA (Mantida)
    // =========================================================
    if cmbgrupo.ItemIndex > 0 then
      SQLText.Add('  AND G.Controle = :Grupo');

    if cmbfornecedor.ItemIndex > 0 then
      SQLText.Add('  AND F.Controle = :Fornecedor');

    if cmbmarca.ItemIndex > 0 then
      SQLText.Add('  AND P.Fabricante = :Marca');

    if Trim(Editlocal.Text) <> '' then
      SQLText.Add('  AND P.Moeda = :Localizacao');

    SQLText.Add('ORDER BY P.Produto ASC');

    // =========================================================
    // EXECUÇÃO NO QRYPRODUTOSBASE E LIGAÇÃO DO GRID (Mantida)
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

























end.
