# AGestoque-Desktop: Sistema de Gestão de Inventário e Preços

O **AGestoque-Desktop** é um sistema de retaguarda, desenvolvido em Delphi, projetado para otimizar processos de inventário físico, rastreamento de movimentação de estoque e atualização de preços em massa em ambientes de varejo e distribuição.

## Visão Geral

Este projeto oferece uma interface robusta para a gestão completa do ciclo de vida do inventário, desde a consulta inicial do estoque e vendas por período, até o ajuste definitivo do saldo e a aplicação de políticas de preços em diversos níveis de atacado e varejo.

## Tecnologias Utilizadas

| Categoria | Tecnologia | Detalhes |
| :--- | :--- | :--- |
| **Linguagem** | Delphi Pascal | Desenvolvido na versão 10.3 (ou superior), utilizando a VCL. |
| **Banco de Dados** | SQL Server | Base de dados principal. |
| **Acesso a Dados** | UniDAC (DevArt) | Utilizado para conexão eficiente (TUniConnection, TUniQuery) com o SQL Server. |
| **Relatórios** | FastReport | Utilizado para geração de relatórios de contagem de estoque (`frxReport`, `TfrxDBDataset`). |
| **Componentes Adicionais** | ClientDataSet (CDS) | Utilizado em memória para persistir e processar os itens durante a contagem ativa. |

## Funcionalidades Principais

### 1. Módulo de Contagem e Inventário (Filtros e Execução)

* **Filtros Avançados:** Consulta de produtos elegíveis para inventário por Período de Vendas (Datas), Grupo, Marca, Fornecedor e Localização. A base de consulta considera as vendas (`TabEst3b` e `TabEst3a`) e o estoque atual (`TabEst1`).
* **Registro de Contagem:** Permite registrar a quantidade física (`Contagem`) por produto e calcula automaticamente a **Diferença** (Contagem - Estoque Anterior) e o **Custo Total da Diferença** (`ValorDiferenca`).
* **Gestão de Progresso:**
    * **Salvar Progresso (`btnsalvaprogClick`):** Persiste o trabalho em andamento nas tabelas de histórico (`TAB_HIS_AJUSTE_CAB` e `TAB_HIS_AJUSTE_ITENS`).
    * **Retomar Progresso (`btnRetomarProgressoClick`):** Recarrega uma contagem anterior inacabada, bloqueando os filtros para manter a integridade.

### 2. Ajuste Definitivo de Estoque

* **Ajuste com Log (`AjustarEstoqueEAtualizarMovimento`):** Após a conclusão da contagem, o ajuste é aplicado. A aplicação executa uma **transação** que:
    1.  Atualiza a `Quantidade` na tabela mestra do produto (`TabEst1`).
    2.  Registra um lançamento na tabela de movimentação (`TabEst1Mov`), contendo a quantidade movimentada (`Diferenca`), `SaldoAnterior`, `SaldoAtual`, e informações do usuário/terminal.

### 3. Ajuste de Preços e Margens em Massa

* **Definição de Margens:** Permite configurar margens de lucro/desconto para 4 níveis de Varejo e 4 níveis de Atacado.
* **Cálculo e Aplicação:** Aplica novos preços e margens com base no `PrecoCusto`, recalculando os campos de preço de venda (`PrecoVenda`, `PrPrazo`, `PrAtacado`, `PrMinimo`, `PrAtacado1` a `PrAtacado4`).
* **Log Detalhado de Preços:** Registra cada alteração de preço em `TabEst1Mov` (usando `LkTipo` = 7), armazenando 11 pares de campos (Anterior e Novo) para auditoria completa.

### Estrutura de Banco de Dados (Tabelas-Chave)

O projeto interage primariamente com as seguintes tabelas (presumindo o uso de um esquema de ERP padrão):

| Tabela | Propósito |
| :--- | :--- |
| `TabEst1` | Cadastro mestre de produtos e saldos de estoque (Quantidade). |
| `TabEst1Mov` | Histórico detalhado de todas as movimentações de estoque e alterações de preço. |
| `TabEst8` | Cadastro de Grupos/Setores (usado para filtros). |
| `TabFor` | Cadastro de Fornecedores (usado para filtros). |
| `TAB_HIS_AJUSTE_CAB` | Cabeçalho do progresso/histórico de inventários. |
| `TAB_HIS_AJUSTE_ITENS` | Itens de produtos contados, ligados ao cabeçalho. |

## Configuração e Instalação

### Pré-requisitos

1.  **Ambiente de Desenvolvimento:** Embarcadero Delphi 10.3 Rio ou superior.
2.  **Banco de Dados:** Acesso a um servidor SQL Server.
3.  **Componentes:** Instalação das bibliotecas **DevArt UniDAC** e **FastReport**.
4.  **Conexão:** O projeto espera um arquivo de configuração de conexão (`Servcom.dll`) na pasta de execução (`ExtractFilePath(Application.ExeName)`).

### Configuração da Conexão

A conexão com o banco de dados é gerenciada pela `TDataModule1.ConectaBanco` e busca os parâmetros de conexão no arquivo `Servcom.dll` (ou um arquivo de texto com a string de conexão). O sistema tentará ler as seguintes variáveis:

* `SERVER NAME` ou `Data Source`
* `DATABASE NAME` ou `Initial Catalog`
* `USER NAME` ou `User ID`
* `PASSWORD`

**Importante:** Se o arquivo de conexão não for encontrado, o sistema tentará abrir a caixa de diálogo de conexão UniDAC para que o usuário insira os dados e salve o arquivo `Servcom.dll`.
