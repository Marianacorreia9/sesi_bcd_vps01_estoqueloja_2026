USE estoque_loja;

INSERT INTO categoria (id, nome, descricao) VALUES
(1, 'Camisetas', 'Camisetas masculinas e femininas'),
(2, 'Calcas', 'Calcas jeans e de outros tecidos'),
(3, 'Vestidos', 'Vestidos para diferentes ocasioes'),
(4, 'Jaquetas', 'Jaquetas e casacos');

INSERT INTO fornecedor (id, razao_social, nome_fantasia, cnpj, telefone, email, endereco) VALUES
(1, 'Moda Brasil Industria e Comercio Ltda', 'Moda Brasil', '12.345.678/0001-90', '(19) 99999-1001', 'modabrasil@gmail.com', 'Rua do Girassol, 155 - Amparo/SP'),
(2, 'Estilo Fashion Comercio Ltda', 'Estilo Fashion', '23.456.789/0001-01', '(19) 99999-1002', 'estilofashion@gmail.com', 'Av. Central, 325 - Pedreira/SP'),
(3, 'Trend Roupas Ltda', 'Trend Roupas', '34.567.890/0001-12', '(19) 99999-1003', 'trendroupas@gmail.com', 'Rua Moderna, 500 - Serra Negra/SP');

INSERT INTO produto (id, nome, descricao, preco, marca, id_categoria, id_fornecedor) VALUES
(1, 'Camiseta Basica', 'Camiseta de algodao', 59.90, 'Moda Brasil', 1, 1),
(2, 'Calca Jeans', 'Calca jeans tradicional', 149.90, 'Estilo Fashion', 2, 2),
(3, 'Vestido Floral', 'Vestido estampado floral', 189.90, 'Trend Roupas', 3, 3),
(4, 'Jaqueta Jeans', 'Jaqueta jeans azul', 229.90, 'Moda Brasil', 4, 1),
(5, 'Camiseta Estampada', 'Camiseta com estampa frontal', 79.90, 'Estilo Fashion', 1, 2);

INSERT INTO estoque (id_estoque, id_produto, quantidade, quantidade_minima, localizacao) VALUES
(1, 1, 50, 10, 'Prateleira A1'),
(2, 2, 25, 5, 'Prateleira B1'),
(3, 3, 18, 5, 'Prateleira C1'),
(4, 4, 12, 3, 'Prateleira D1'),
(5, 5, 30, 8, 'Prateleira A2');

INSERT INTO movimentacao_estoque (id_movimentacao, id_produto, tipo, quantidade, data) VALUES
(1, 1, 'Entrada', 50, '2026-09-01'),
(2, 2, 'Entrada', 30, '2026-09-02'),
(3, 2, 'Saida', 5, '2026-09-10'),
(4, 3, 'Entrada', 20, '2026-09-05'),
(5, 3, 'Saida', 2, '2026-09-12'),
(6, 4, 'Entrada', 15, '2026-09-07'),
(7, 4, 'Saida', 3, '2026-09-15');
