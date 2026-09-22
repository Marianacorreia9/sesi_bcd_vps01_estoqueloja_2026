# sesi_bcd_vps01_estoqueloja_2026
## Descrição

Banco de dados para gerenciamento do estoque de uma loja de roupas. O sistema permite controlar produtos, categorias, fornecedores, quantidades disponíveis e movimentações de entrada e saída de mercadorias.

## MER DER Conceitual

![MER DER Conceitual](mer_der_conceitual.png)

## MER DER Lógico

![MER DER Lógico](mer_der_logico.png)

## Dicionário de Dados

### Categoria

| Campo | Tipo | Chave | Descrição |
|---|---|---|---|
| id | INT | PK | Identificador da categoria |
| nome | VARCHAR(100) | - | Nome da categoria |
| descricao | VARCHAR(255) | - | Descrição da categoria |

### Fornecedor

| Campo | Tipo | Chave | Descrição |
|---|---|---|---|
| id | INT | PK | Identificador do fornecedor |
| razao_social | VARCHAR(150) | - | Razão social |
| nome_fantasia | VARCHAR(100) | - | Nome comercial |
| cnpj | VARCHAR(18) | UNIQUE | CNPJ do fornecedor |
| telefone | VARCHAR(20) | - | Telefone |
| email | VARCHAR(150) | - | E-mail |
| endereco | VARCHAR(255) | - | Endereço |

### Produto

| Campo | Tipo | Chave | Descrição |
|---|---|---|---|
| id | INT | PK | Identificador do produto |
| nome | VARCHAR(100) | - | Nome do produto |
| descricao | VARCHAR(255) | - | Descrição do produto |
| preco | DECIMAL(10,2) | - | Preço do produto |
| marca | VARCHAR(100) | - | Marca |
| id_categoria | INT | FK | Categoria do produto |
| id_fornecedor | INT | FK | Fornecedor do produto |

### Estoque

| Campo | Tipo | Chave | Descrição |
|---|---|---|---|
| id_estoque | INT | PK | Identificador do registro de estoque |
| id_produto | INT | FK/UNIQUE | Produto armazenado |
| quantidade | INT | - | Quantidade disponível |
| quantidade_minima | INT | - | Estoque mínimo |
| localizacao | VARCHAR(100) | - | Local onde o produto está armazenado |

### Movimentação de Estoque

| Campo | Tipo | Chave | Descrição |
|---|---|---|---|
| id_movimentacao | INT | PK | Identificador da movimentação |
| id_produto | INT | FK | Produto movimentado |
| tipo | ENUM | - | Entrada ou saída |
| quantidade | INT | - | Quantidade movimentada |
| data | DATE | - | Data da movimentação |

## Dados de teste

- [categoria.csv](categoria.csv)
- [fornecedor.csv](fornecedor.csv)
- [produto.csv](produto.csv)
- [estoque.csv](estoque.csv)
- [movimentacao_estoque.csv](movimentacao_estoque.csv)

## Código DDL

O arquivo `ddl.sql` contém os comandos para criação do banco e das tabelas.

## Código DML

O arquivo `dml.sql` contém os comandos para inserir os dados de teste no banco.

## Normalização

As informações foram separadas em entidades para evitar repetição de dados. Categorias e fornecedores ficam em suas próprias tabelas e são relacionados aos produtos por chaves estrangeiras. O estoque é separado dos dados do produto e as movimentações são registradas em uma tabela própria.

A estrutura atende à organização necessária para manter cada atributo associado à sua entidade e reduzir redundâncias.
