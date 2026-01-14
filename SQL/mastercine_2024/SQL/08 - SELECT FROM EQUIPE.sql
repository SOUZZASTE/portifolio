USE master_cine_2024;

SELECT 
    SUBSTR(`Data da Retirada`, 4, 2) AS Mes, 
    COUNT(*) AS Total_Alugueis
FROM relatorio_alugueis
WHERE `Data da Retirada` LIKE '%2024%'
GROUP BY Mes
ORDER BY Total_Alugueis DESC;

SELECT 
    Gênero, 
    COUNT(*) AS Total
FROM relatorio_alugueis
GROUP BY Gênero
ORDER BY Total DESC;

SELECT 
    COUNT(*) AS Total_Alugueis,
    SUM(CASE WHEN `Devolveu no Prazo?` = 'Não' THEN 1 ELSE 0 END) AS Qtd_Atrasos,
    ROUND((SUM(CASE WHEN `Devolveu no Prazo?` = 'Não' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS Porcentagem_Atraso
FROM relatorio_alugueis
WHERE `Data da Retirada` LIKE '%2024%';

SELECT 
    Gênero, 
    COUNT(*) AS Total_Alugueis,
    SUM(CASE WHEN `Devolveu no Prazo?` = 'Não' THEN 1 ELSE 0 END) AS Total_Atrasos
FROM relatorio_alugueis
GROUP BY Gênero
ORDER BY Total_Atrasos DESC;

SELECT 
    SUBSTR(`Data da Retirada`, 4, 2) AS Mes, 
    COUNT(*) AS Qtd_Atrasos
FROM relatorio_alugueis
WHERE `Devolveu no Prazo?` = 'Não' 
  AND `Data da Retirada` LIKE '%2024%'
GROUP BY Mes
ORDER BY Qtd_Atrasos DESC;