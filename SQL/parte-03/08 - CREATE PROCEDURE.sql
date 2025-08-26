USE master_cinedb;

DELIMITER //
CREATE PROCEDURE buscar_filmes(filmes INT,data_inicial DATE, data_final DATE)
BEGIN
	DECLARE nome_filme VARCHAR (500);
    DECLARE primeira_data DATE;
    DECLARE segunda_data DATE;
    
    SET primeira_data = data_inicial;
    SET segunda_data = data_final;
    SELECT primeira_data, segunda_data FROM Aluguel WHERE data_retirada BETWEEN primeira_data AND segunda_data;
    
	SELECT primeira_data, segunda_data, A.data_retirada, F.nome as Filme FROM Aluguel AS A
	INNER JOIN Filmes AS F
	ON A.filme_id = f.id
    WHERE filme_id = filmes;
    
END
//
DELIMITER ;

call buscar_filmes(11,"2017-01-01","2019-12-31");
