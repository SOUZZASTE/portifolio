USE master_cinedb;

SELECT f.id, f.nome AS titulo_filme, g.nome AS genero, f.nome_direcao AS direcao, c.nome AS categoria, f.valor_aluguel
FROM FILMES AS f
INNER JOIN categorias_filmes AS c
ON f.categoria_id = c.id
INNER JOIN
Generos AS g
on f.categoria_id = g.id
;

SELECT f.id, f.nome AS nome_funcionario, f.re AS RE, c.nome AS cargo, f.cpf AS CPF, f.rg AS RG, f.data_nascimento, f.telefone, f.endereco, f.email
FROM Funcionarios AS f
INNER JOIN Cargos AS c
ON f.cargo_id = c.id;

SELECT a. id, c.nome AS cliente, c.cpf, c.telefone, a.data_retirada, f.nome AS filme, f. valor_aluguel, fun.nome AS funcionario_responsavel, fun.re AS RE, a.data_prev_devolucao, a.data_devolucao,
TIMESTAMPDIFF(DAY,data_prev_devolucao,data_devolucao) AS dias_atraso
FROM Aluguel AS a
INNER JOIN Clientes AS c
ON a.cliente_id = c.id
INNER JOIN Filmes AS f
ON a.filme_id = f.id
INNER JOIN Funcionarios AS fun
ON a.funcionario_id = fun.id;