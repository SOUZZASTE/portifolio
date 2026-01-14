USE master_cine_2024;

SELECT COUNT(*) AS Total_Alugueis_2024
FROM relatorio_alugueis
WHERE `Data da Retirada` LIKE '%2024%';

SELECT 
    SUM(`Valor da Locação`) AS Faturamento_Alugueis,
    SUM(`Valor Total da Multa`) AS Faturamento_Multas,
    SUM(`Valor da Locação` + `Valor Total da Multa`) AS Faturamento_Total_Geral
FROM relatorio_alugueis
WHERE `Data da Retirada` LIKE '%2024%';

SELECT 
    SUBSTR(`Data da Retirada`, 4, 2) AS Mes, 
    COUNT(*) AS Total_Alugueis,
    SUM(`Valor da Locação`) AS Faturamento_Aluguel,
    SUM(`Valor Total da Multa`) AS Total_Multas,
    SUM(`Valor da Locação` + `Valor Total da Multa`) AS Receita_Total
FROM relatorio_alugueis
WHERE `Data da Retirada` LIKE '%2024%'
GROUP BY Mes
ORDER BY Mes ASC;

