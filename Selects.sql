SELECT nome, tipo FROM Cliente;

SELECT * FROM Pedido WHERE valor_total > 100;

SELECT id, valor_total, valor_total * 0.1 AS taxa_servico FROM Pedido;

SELECT nome, valor_total FROM Pedido 
ORDER BY valor_total DESC;

SELECT cliente_id, COUNT(*) AS total_pedidos 
FROM Pedido 
GROUP BY cliente_id 
HAVING total_pedidos > 2;


SELECT Produto.nome AS Produto, Fornecedor.nome AS Fornecedor, Estoque.quantidade 
FROM Estoque
JOIN Produto ON Estoque.produto_id = Produto.id
JOIN Fornecedor ON Estoque.fornecedor_id = Fornecedor.id;
