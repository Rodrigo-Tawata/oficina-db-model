# 🚗 Sistema de Gerenciamento de Oficina Mecânica

Este projeto simula um banco de dados relacional para controle de uma oficina mecânica, incluindo o cadastro de clientes, veículos, ordens de serviço, serviços realizados, pagamentos e funcionários.


## 🧠 Entidades do Modelo

- **Cliente**: Armazena dados de clientes PF e PJ.
- **Veículo**: Informações sobre veículos, ligados a clientes.
- **Funcionário**: Funcionários responsáveis por ordens de serviço.
- **Serviço**: Serviços disponíveis na oficina.
- **Ordem de Serviço**: Registros das ordens abertas para veículos.
- **Item de Serviço**: Relação entre serviços aplicados e ordens.
- **Pagamento**: Informações sobre o pagamento das ordens.

## 📂 Arquivos

- `script_criacao.sql`: Criação do banco de dados e das tabelas.
- `script_inserts.sql`: Inserção de dados de teste para validação.
- `script_consultas.sql`: Consultas SQL avançadas para análise de dados.

## 🧪 Consultas Desenvolvidas

- Listar ordens com cliente e veículo
- Ordens finalizadas com valor acima de R$250
- Total gasto por cliente
- Serviços aplicados por ordem com total por item
- Funcionários com total de ordens atribuídas

As queries utilizam:

- `SELECT`, `WHERE`, `ORDER BY`
- Atributos derivados com expressões
- `GROUP BY` com `HAVING`
- `JOIN` entre várias tabelas

## 🛠️ Tecnologias Utilizadas

- MySQL
- SQL puro

## ✅ Como usar

1. Clone o repositório
2. Execute o `script_criacao.sql` no seu banco MySQL
3. Execute o `script_inserts.sql` para adicionar dados de teste
4. Use o `script_consultas.sql` para explorar os dados

## 🧑‍💻 Autor
[GitHub](https://github.com/Rodrigo-Tawata)|[LinkedIn](https://www.linkedin.com/in/rodrigo-tawata/)
- Projeto desenvolvido por Rodrigo como desafio de modelagem e implementação de banco de dados relacional para uma oficina mecânica.
