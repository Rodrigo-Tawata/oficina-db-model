-- CRIAÇÃO DO BANCO DE DADOS

CREATE DATABASE OficinaDB;
USE OficinaDB;

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf_cnpj VARCHAR(20) UNIQUE NOT NULL,
    tipo_cliente ENUM('PF', 'PJ') NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Veiculo (
    id_veiculo INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(10) UNIQUE NOT NULL,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    ano INT,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

CREATE TABLE Funcionario (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    telefone VARCHAR(20)
);

CREATE TABLE Servico (
    id_servico INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(100),
    preco DECIMAL(10,2)
);

CREATE TABLE Ordem_Servico (
    id_ordem INT PRIMARY KEY AUTO_INCREMENT,
    data_abertura DATE NOT NULL,
    data_fechamento DATE,
    status ENUM('aberta', 'em andamento', 'finalizada') DEFAULT 'aberta',
    id_veiculo INT,
    id_funcionario INT,
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo),
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id_funcionario)
);

CREATE TABLE Item_Servico (
    id_ordem INT,
    id_servico INT,
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    PRIMARY KEY (id_ordem, id_servico),
    FOREIGN KEY (id_ordem) REFERENCES Ordem_Servico(id_ordem),
    FOREIGN KEY (id_servico) REFERENCES Servico(id_servico)
);

CREATE TABLE Pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    id_ordem INT,
    data_pagamento DATE,
    valor_total DECIMAL(10,2),
    forma_pagamento ENUM('dinheiro', 'cartao', 'pix'),
    FOREIGN KEY (id_ordem) REFERENCES Ordem_Servico(id_ordem)
);
