USE master_cinedb;

CREATE INDEX idx_cliente ON Clientes(nome,cpf,telefone);

SHOW INDEX FROM Clientes;

EXPLAIN SELECT * FROM Clientes WHERE nome = "Alfredo Eustáquio Delvalle Sobrinho";

EXPLAIN SELECT nome, cpf, rg, data_nascimento, telefone, email, endereco
FROM Clientes WHERE nome = "Berenice Bittencourt Chaves";
