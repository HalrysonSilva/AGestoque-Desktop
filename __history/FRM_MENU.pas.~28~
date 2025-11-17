unit FRM_MENU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinsDefaultPainters, cxClasses, dxLayoutContainer, dxLayoutControl,
  dxLayoutControlAdapters, AdvGlowButton;

type
  TFormenu = class(TForm)
    Panel2: TPanel;
    brnalterapreco: TAdvGlowButton;
    btncontagem: TAdvGlowButton;
    btnprodutoemaberto: TAdvGlowButton;
    Panel1: TPanel;

    procedure brnalteraprecoClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);


    procedure btncontagemClick(Sender: TObject);
    procedure btnprodutoemabertoClick(Sender: TObject);

    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formenu: TFormenu;

implementation

{$R *.dfm}

uses CONEXAOBD, FRMALTERAPRECOS, FRMCONTARESTOQUE, FRMMOVIMENTO,
  FRMPOSICAOESTOQUE, FRMSelectproduto, FRMSENHA;





procedure TFormenu.AdvGlowButton1Click(Sender: TObject);
begin
  // 1. Cria ou exibe a instância do novo formulário
  if not Assigned(Formposicaoest) then
    formmov := Tformmov.Create(Application);



  // 3. Exibe o formulário
  formmov.ShowModal;
end;

procedure TFormenu.brnalteraprecoClick(Sender: TObject);
begin
  // 1. Cria ou exibe a instância do novo formulário
  if not Assigned(Formposicaoest) then
    formalterapreco := Tformalterapreco.Create(Application);



  // 3. Exibe o formulário
  formalterapreco.ShowModal;
end;








procedure TFormenu.btncontagemClick(Sender: TObject);
begin
  // 1. Cria ou exibe a instância do novo formulário
  if not Assigned(Formposicaoest) then
    Formcontaestoque := TFormcontaestoque.Create(Application);



  // 3. Exibe o formulário
  Formcontaestoque.ShowModal;
end;




procedure TFormenu.btnprodutoemabertoClick(Sender: TObject);
begin
  // 1. Cria ou exibe a instância do novo formulário
  if not Assigned(Formposicaoest) then
    Formposicaoest:= TFormposicaoest.Create(Application);

   Formposicaoest.CarregarProdutosEmAbertoEExibir;

  // 3. Exibe o formulário
  Formposicaoest.ShowModal;
end;

procedure TFormenu.FormShow(Sender: TObject);
begin
 formcontaestoque.CriarEstruturaManualCDS;
end;

end.
