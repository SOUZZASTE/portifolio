USE master_cine_2024;

CREATE VIEW relatorio_funcionarios AS
	SELECT
		funcionarios.nome AS 'Nnome',
		funcionarios.re AS 'RE',
		cargos.nome_cargo AS 'Cargo'
	FROM funcionarios
	INNER JOIN cargos
	ON funcionarios.cargo_id = cargos.id
	ORDER BY funcionarios.id ASC;
    
    SELECT* FROM relatorio_funcionarios;

CREATE VIEW relatorio_alugueis AS
	SELECT
		alugueis.id AS 'ID',
		clientes.nome AS 'Nome do Cliente',
		clientes.cpf AS 'CPF',
		alugueis.data_retirada AS 'Data da Retirada',
		filmes.titulo AS 'Título do Filme',
        filmes.genero AS 'Gênero',
		filmes.dias_locacao AS 'Dias de Locação',
		DATE_FORMAT(
			DATE_ADD(STR_TO_DATE(alugueis.data_retirada, '%d/%m/%Y'), INTERVAL filmes.dias_locacao DAY), 
			'%d/%m/%Y'
		) AS 'Prazo Limite para Devolver',
		filmes.valor_aluguel AS 'Valor da Locação',
		alugueis.data_devolucao AS 'Data da Devolução',

		IF(
			STR_TO_DATE(alugueis.data_devolucao, '%d/%m/%Y') <= 
			DATE_ADD(STR_TO_DATE(alugueis.data_retirada, '%d/%m/%Y'), INTERVAL filmes.dias_locacao DAY),
			'Sim', 
			'Não'
		) AS 'Devolveu no Prazo?',

		IF(
			DATEDIFF(
				STR_TO_DATE(alugueis.data_devolucao, '%d/%m/%Y'),
				DATE_ADD(STR_TO_DATE(alugueis.data_retirada, '%d/%m/%Y'), INTERVAL filmes.dias_locacao DAY)
			) > 0,
			DATEDIFF(
				STR_TO_DATE(alugueis.data_devolucao, '%d/%m/%Y'),
				DATE_ADD(STR_TO_DATE(alugueis.data_retirada, '%d/%m/%Y'), INTERVAL filmes.dias_locacao DAY)
			),
			0
		) AS 'Dias de Atraso',

		filmes.valor_multa AS 'Valor da Multa Diária',
		
		GREATEST(DATEDIFF(
			STR_TO_DATE(alugueis.data_devolucao, '%d/%m/%Y'),
			DATE_ADD(STR_TO_DATE(alugueis.data_retirada, '%d/%m/%Y'), INTERVAL filmes.dias_locacao DAY)
		), 0) * filmes.valor_multa AS 'Valor Total da Multa',
        funcionarios.nome AS 'Funcionário'
			
	FROM alugueis
	INNER JOIN clientes
	ON alugueis.id_cliente = clientes.id
	INNER JOIN filmes
	ON alugueis.id_filme = filmes.id
    INNER JOIN funcionarios
    ON alugueis.id_funcionario = funcionarios.id
	ORDER BY alugueis.id ASC;
    
    SELECT * FROM relatorio_alugueis;