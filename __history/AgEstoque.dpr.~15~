program AgEstoque;

uses
  Forms,
  FRMSENHA in 'FRMSENHA.pas' {FRMSEN},
  FRMAGESTOQUE in 'FRMAGESTOQUE.pas' {frmmenu},
  CONEXAOBD in 'CONEXAOBD.pas' {DataModule1},
  Vcl.Themes,
  Vcl.Styles,
  FRMSelectproduto in 'FRMSelectproduto.pas' {SelectProduto};

{$R *.res}

begin
  Application.Initialize;

  // 1. Cria o DataModule de Conexão
  TStyleManager.TrySetStyle('Amethyst Kamri');
  Application.CreateForm(TDataModule1, DataModule1);
  // Instancia o formulário de login manualmente
  FRMSEN := TFRMSEN.Create(nil);
  try
    // 2. Exibe o login. Substituímos mrOk pelo valor numérico 1.
    if FRMSEN.ShowModal = 1 then // 1 é o valor numérico de mrOk
    begin
      // 3. Cria o Formulário Principal (Menu)
      Application.CreateForm(Tfrmmenu, frmmenu);

      // 4. Inicia a Aplicação com o Menu
      Application.Run;
    end;
  finally
    // 5. Libera o formulário de login da memória
    FRMSEN.Free;
  end;

end.
