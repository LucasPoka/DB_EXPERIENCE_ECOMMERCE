-- Inserir Clientes
INSERT INTO Cliente (nome, tipo, cpf_cnpj, telefone, endereco) VALUES
('João Silva', 'PF', '123.456.789-00', '(11) 98765-4321', 'Rua das Flores, 123'),
('Empresa ABC', 'PJ', '12.345.678/0001-90', '(11) 99999-8888', 'Av. Industrial, 456');

-- Inserir Produtos
INSERT INTO Produto (nome, descricao, preco) VALUES
('Notebook', 'Notebook de última geração', 3500.00),
('Smartphone', 'Smartphone com câmera de alta resolução', 2000.00),
('Mouse', 'Mouse sem fio', 50.00);

-- Inserir Fornecedores
INSERT INTO Fornecedor (nome, cnpj) VALUES
('Tech Fornecedores', '98.765.432/0001-22'),
('Eletrônicos Ltda', '87.654.321/0001-33');

-- Inserir Estoque
INSERT INTO Estoque (produto_id, fornecedor_id, quantidade) VALUES
(1, 1, 50), -- Notebook fornecido por Tech Fornecedores
(2, 2, 100), -- Smartphone fornecido por Eletrônicos Ltda
(3, 1, 200); -- Mouse fornecido por Tech Fornecedores

-- Inserir Pedidos
INSERT INTO Pedido (cliente_id, data_pedido, valor_total) VALUES
(1, '2024-12-20 10:30:00', 3550.00), -- Cliente João Silva
(2, '2024-12-21 15:45:00', 2000.00); -- Cliente Empresa ABC

-- Inserir Pagamentos
INSERT INTO Pagamento (pedido_id, metodo, valor) VALUES
(1, 'Cartão', 3550.00),
(2, 'Pix', 2000.00);

-- Inserir Entregas
INSERT INTO Entrega (pedido_id, status, codigo_rastreamento) VALUES
(1, 'Em Transporte', 'BR1234567890'),
(2, 'Aguardando', NULL);
