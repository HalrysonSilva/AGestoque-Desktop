# Sistema Web de Gestão de Estoque

Este projeto é uma aplicação web baseada no sistema Delphi AgEstoque, desenvolvida com Next.js, TypeScript, Tailwind CSS e Prisma para gerenciamento de banco de dados SQLite.

## Funcionalidades

- Autenticação de usuários
- Gerenciamento de produtos (adicionar, editar, visualizar)
- Controle de estoque (entradas, saídas, ajustes)
- Relatórios de movimentações
- Interface responsiva com Tailwind CSS

## Instalação

1. Instale as dependências:
   ```bash
   npm install
   ```

2. Configure o banco de dados:
   ```bash
   npx prisma generate
   npx prisma db push
   ```

3. Execute o servidor de desenvolvimento:
   ```bash
   npm run dev
   ```

4. Acesse http://localhost:3000

## Estrutura do Projeto

- `app/`: Páginas e APIs do Next.js
- `prisma/`: Schema do banco de dados e configurações
- `components/`: Componentes React reutilizáveis

## Tecnologias Utilizadas

- Next.js 15
- TypeScript
- Tailwind CSS
- Prisma ORM
- NextAuth.js
- SQLite