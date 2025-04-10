-- QUERIES 

-- Listar todas as ordens com dados do cliente e veículo
SELECT o.id_ordem, c.nome AS cliente, v.placa, o.data_abertura, o.status
FROM Ordem_Servico o
JOIN Veiculo v ON o.id_veiculo = v.id_veiculo
JOIN Cliente c ON v.id_cliente = c.id_cliente;

-- Buscar ordens finalizadas com valor total acima de R$250,00
SELECT o.id_ordem, c.nome, p.valor_total
FROM Ordem_Servico o
JOIN Pagamento p ON o.id_ordem = p.id_ordem
JOIN Veiculo v ON o.id_veiculo = v.id_veiculo
JOIN Cliente c ON v.id_cliente = c.id_cliente
WHERE o.status = 'finalizada' AND p.valor_total > 250;

-- Valor total por cliente (somando todas ordens pagas)
SELECT c.nome, SUM(p.valor_total) AS total_gasto
FROM Pagamento p
JOIN Ordem_Servico o ON p.id_ordem = o.id_ordem
JOIN Veiculo v ON o.id_veiculo = v.id_veiculo
JOIN Cliente c ON v.id_cliente = c.id_cliente
GROUP BY c.nome
HAVING total_gasto > 200;

-- Buscar serviços aplicados por ordem, com total por item
SELECT os.id_ordem, s.descricao, isv.quantidade, isv.preco_unitario,
       (isv.quantidade * isv.preco_unitario) AS total_item
FROM Item_Servico isv
JOIN Servico s ON isv.id_servico = s.id_servico
JOIN Ordem_Servico os ON isv.id_ordem = os.id_ordem
ORDER BY os.id_ordem;

-- Listar funcionários com total de ordens atribuídas
SELECT f.nome, COUNT(os.id_ordem) AS total_ordens
FROM Funcionario f
LEFT JOIN Ordem_Servico os ON f.id_funcionario = os.id_funcionario
GROUP BY f.nome;
