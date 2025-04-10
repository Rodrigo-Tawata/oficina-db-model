-- INSERT

-- Clientes
INSERT INTO Cliente (nome, cpf_cnpj, tipo_cliente, telefone, email) VALUES
('João da Silva', '123.456.789-00', 'PF', '11999998888', 'joao@email.com'),
('Oficina Turbo Ltda', '12.345.678/0001-99', 'PJ', '1122223333', 'contato@turbo.com');

-- Veículos
INSERT INTO Veiculo (placa, marca, modelo, ano, id_cliente) VALUES
('ABC1D23', 'Ford', 'Fiesta', 2015, 1),
('XYZ9K87', 'Volkswagen', 'Gol', 2018, 2);

-- Funcionários
INSERT INTO Funcionario (nome, cargo, telefone) VALUES
('Carlos Mecânico', 'Mecânico', '1133344455'),
('Ana Gerente', 'Gerente', '1177788899');

-- Serviços
INSERT INTO Servico (descricao, preco) VALUES
('Troca de óleo', 120.00),
('Alinhamento e balanceamento', 150.00),
('Revisão geral', 350.00);

-- Ordens de Serviço
INSERT INTO Ordem_Servico (data_abertura, data_fechamento, status, id_veiculo, id_funcionario) VALUES
('2025-04-01', '2025-04-02', 'finalizada', 1, 1),
('2025-04-05', NULL, 'em andamento', 2, 1);

-- Itens de Serviço
INSERT INTO Item_Servico (id_ordem, id_servico, quantidade, preco_unitario) VALUES
(1, 1, 1, 120.00),
(1, 2, 1, 150.00),
(2, 3, 1, 350.00);

-- Pagamentos
INSERT INTO Pagamento (id_ordem, data_pagamento, valor_total, forma_pagamento) VALUES
(1, '2025-04-02', 270.00, 'cartao');
