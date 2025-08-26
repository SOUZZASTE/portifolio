USE master_cinedb;

SELECT F.nome AS Funcionario, F.re AS RE,C.nome AS Cargo,U.login AS Usuario,F.cpf AS CPF, F.rg AS RG, F.data_nascimento AS Data_Nascimento, F.telefone AS Telefone, F.endereco AS Endereco
FROM Funcionarios AS F
INNER JOIN Cargos AS C
ON F.cargo_id = C.id
INNER JOIN Usuario AS U
ON F.usuario_id = U.id;

SELECT F.nome AS Filme, G.nome AS Genero, F.nome_direcao AS Direcao, CF.nome AS Categoria, F.valor_aluguel AS Valor_Aluguel
FROM Filmes AS F
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id;

SELECT C.nome AS Cliente, FLM.nome AS Filme, G.nome AS Genero, A.data_retirada AS Data_Retirada, FNR.nome AS Funcionario,FNR.re AS RE,A.data_prev_devolucao AS Data_Prevista_Devolucao, CF.nome AS Categoria, FLM.valor_aluguel AS Valor_Aluguel, A.data_devolucao AS Data_Devolucao, A.dias_atraso AS Dias_Atraso
FROM Aluguel AS A
INNER JOIN Clientes AS C
ON A.cliente_id = C.id
INNER JOIN Filmes AS FLM
ON A.filme_id = FLM.id
INNER JOIN Generos AS G
ON FLM.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON FLM.categoria_id = CF.id
INNER JOIN Funcionarios AS FNR
ON A.funcionario_id = FNR.id;