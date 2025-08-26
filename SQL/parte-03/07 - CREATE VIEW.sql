USE master_cinedb;

CREATE VIEW MULTA_LANCAMENTO AS
SELECT C.nome AS Cliente, A.data_retirada AS Data_Retirada, F.nome AS Filme, G.nome AS Genero, CF.nome AS Categoria, A.data_prev_devolucao AS Data_Prevista_Devolucao,F.valor_aluguel AS Valor_Aluguel, A.data_devolucao AS Data_Devolucao, A.dias_atraso AS Dias_Atraso, SUM(A.dias_atraso*2.00+F.valor_aluguel) AS Total_Pagar
FROM Aluguel AS A
INNER JOIN Clientes AS C
ON A.cliente_id = C.id
INNER JOIN Filmes AS F
ON A.filme_id = F.id
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id
WHERE CF.nome =  "LANÇAMENTO" AND A.dias_atraso > 1
GROUP BY C.nome, A.data_retirada, F.nome, G.nome, CF.nome, A.data_prev_devolucao,F.valor_aluguel, A.data_devolucao, A.dias_atraso;

CREATE VIEW MULTA_DEMAIS AS
SELECT C.nome AS Cliente, A.data_retirada AS Data_Retirada, F.nome AS Filme, G.nome AS Genero, CF.nome AS Categoria, A.data_prev_devolucao AS Data_Prevista_Devolucao,F.valor_aluguel AS Valor_Aluguel, A.data_devolucao AS Data_Devolucao, A.dias_atraso AS Dias_Atraso, SUM(A.dias_atraso*1.00+F.valor_aluguel) AS Total_Pagar
FROM Aluguel AS A
INNER JOIN Clientes AS C
ON A.cliente_id = C.id
INNER JOIN Filmes AS F
ON A.filme_id = F.id
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id
WHERE CF.nome =  "Demais" AND A.dias_atraso > 1
GROUP BY C.nome, A.data_retirada, F.nome, G.nome, CF.nome, A.data_prev_devolucao,F.valor_aluguel, A.data_devolucao, A.dias_atraso;

CREATE VIEW ALUGUEIS AS
SELECT C.nome AS Cliente, C.cpf AS CPF, C.telefone AS Telefone, A.data_retirada AS Data_Retirada, F.nome AS Filme, F.valor_aluguel AS Valor, G.nome AS Genero, CF.nome AS Categoria, CF.valor_multa AS Valor_Multa, CF.dias_locacao AS Dias_Locacao, A.data_prev_devolucao AS Data_Prevista_Devolucao, A.data_devolucao AS Data_Devolucao
FROM Aluguel AS A
INNER JOIN Clientes AS C
ON A.cliente_id = C.id
INNER JOIN Filmes AS F
ON A.filme_id = F.id
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id
ORDER BY A.data_retirada DESC;

CREATE VIEW LANCAMENTO_FILME AS
SELECT F.nome AS Filme, F.nome_direcao AS Direcao, G.nome AS Genero, F.valor_aluguel AS Valor_aluguel, CF.nome AS Categoria FROM Filmes AS F
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id
WHERE CF.nome = "Lançamento"
ORDER BY F.nome ASC;


CREATE VIEW DEMAIS_FILME AS
SELECT F.nome AS Filme, F.nome_direcao AS Direcao, G.nome AS Genero, F.valor_aluguel AS Valor_aluguel, CF.nome AS Categoria FROM Filmes AS F
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id
WHERE CF.nome = "Demais"
ORDER BY F.nome ASC;

CREATE VIEW CLIENTE AS
SELECT nome AS Nome, cpf AS CPF, rg AS RG, data_nascimento AS Data_Nascimento, telefone AS Telefone, email AS Email, endereco AS Endereco
FROM Clientes
ORDER BY RAND()LIMIT 10;

CREATE VIEW FILME_ACAO AS
SELECT F.nome AS Filme, F.nome_direcao AS Direcao, G.nome AS Genero, F.valor_aluguel AS Valor_aluguel, CF.nome AS Categoria FROM Filmes AS F
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id
WHERE G.nome = "Ação"
ORDER BY F.nome ASC;

CREATE VIEW FILME_AVENTURA AS
SELECT F.nome AS Filme, F.nome_direcao AS Direcao, G.nome AS Genero, F.valor_aluguel AS Valor_aluguel, CF.nome AS Categoria FROM Filmes AS F
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id
WHERE G.nome = "Aventura"
ORDER BY F.nome ASC;

CREATE VIEW FILME_COMEDIA AS
SELECT F.nome AS Filme, F.nome_direcao AS Direcao, G.nome AS Genero, F.valor_aluguel AS Valor_aluguel, CF.nome AS Categoria FROM Filmes AS F
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id
WHERE G.nome = "Comédia"
ORDER BY F.nome ASC;

CREATE VIEW FILME_COMEDIA_ROMANTICA AS
SELECT F.nome AS Filme, F.nome_direcao AS Direcao, G.nome AS Genero, F.valor_aluguel AS Valor_aluguel, CF.nome AS Categoria FROM Filmes AS F
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id
WHERE G.nome = "Comédia romântica"
ORDER BY F.nome ASC;

CREATE VIEW FILME_DOCUMENTARIO AS
SELECT F.nome AS Filme, F.nome_direcao AS Direcao, G.nome AS Genero, F.valor_aluguel AS Valor_aluguel, CF.nome AS Categoria FROM Filmes AS F
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id
WHERE G.nome = "Documentário"
ORDER BY F.nome ASC;

CREATE VIEW FILME_DRAMA AS
SELECT F.nome AS Filme, F.nome_direcao AS Direcao, G.nome AS Genero, F.valor_aluguel AS Valor_aluguel, CF.nome AS Categoria FROM Filmes AS F
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id
WHERE G.nome = "Drama"
ORDER BY F.nome ASC;

CREATE VIEW FILME_FANTASIA AS
SELECT F.nome AS Filme, F.nome_direcao AS Direcao, G.nome AS Genero, F.valor_aluguel AS Valor_aluguel, CF.nome AS Categoria FROM Filmes AS F
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id
WHERE G.nome = "Fantasia"
ORDER BY F.nome ASC;

CREATE VIEW FILME_FICCAO_CIENTIFICA AS
SELECT F.nome AS Filme, F.nome_direcao AS Direcao, G.nome AS Genero, F.valor_aluguel AS Valor_aluguel, CF.nome AS Categoria FROM Filmes AS F
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id
WHERE G.nome = "Ficção científica"
ORDER BY F.nome ASC;

CREATE VIEW FILME_INFANTIL AS
SELECT F.nome AS Filme, F.nome_direcao AS Direcao, G.nome AS Genero, F.valor_aluguel AS Valor_aluguel, CF.nome AS Categoria FROM Filmes AS F
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id
WHERE G.nome = "Infantil"
ORDER BY F.nome ASC;


CREATE VIEW FILME_MISTERIO AS
SELECT F.nome AS Filme, F.nome_direcao AS Direcao, G.nome AS Genero, F.valor_aluguel AS Valor_aluguel, CF.nome AS Categoria FROM Filmes AS F
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id
WHERE G.nome = "Mistério"
ORDER BY F.nome ASC;

CREATE VIEW FILME_ROMANCE AS
SELECT F.nome AS Filme, F.nome_direcao AS Direcao, G.nome AS Genero, F.valor_aluguel AS Valor_aluguel, CF.nome AS Categoria FROM Filmes AS F
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id
WHERE G.nome = "Romance"
ORDER BY F.nome ASC;

CREATE VIEW FILME_SUSPENSE AS
SELECT F.nome AS Filme, F.nome_direcao AS Direcao, G.nome AS Genero, F.valor_aluguel AS Valor_aluguel, CF.nome AS Categoria FROM Filmes AS F
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id
WHERE G.nome = "Suspense"
ORDER BY F.nome ASC;

CREATE VIEW FILME_TERROR AS
SELECT F.nome AS Filme, F.nome_direcao AS Direcao, G.nome AS Genero, F.valor_aluguel AS Valor_aluguel, CF.nome AS Categoria FROM Filmes AS F
INNER JOIN Generos AS G
ON F.genero_id = G.id
INNER JOIN categorias_filmes AS CF
ON F.categoria_id = CF.id
WHERE G.nome = "Terror"
ORDER BY F.nome ASC;
