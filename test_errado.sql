SELECT 
C.NOME,
COUNT (E.MULTA) AS [QTD MULTAS],
ISNULL(SUM(E.MULTA), 0) AS [VALOR TOTAL MULTAS]
FROM TB_EMPRESTIMO AS E JOIN TB_CLIENTE AS C
ON E.ID_CLIENTE = C.ID
GROUP BY C.NOME
