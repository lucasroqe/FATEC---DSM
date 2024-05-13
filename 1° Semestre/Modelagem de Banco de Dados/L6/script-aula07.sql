--ex1
SELECT unidade AS "Fatec", COUNT(*) AS "Quantidade" FROM tbcurso GROUP BY unidade ORDER BY unidade ASC;


--ex2
SELECT unidade AS "Fatec", COUNT(*) AS "Quantidade" FROM tbcurso GROUP BY unidade ORDER BY COUNT(*) DESC;


--ex3
SELECT unidade AS "Fatec", COUNT(*) AS "Quantidade" FROM tbcurso GROUP BY unidade ORDER BY COUNT(*) DESC LIMIT 1;


--ex4
SELECT unidade AS "Fatec", COUNT(*) AS "Quantidade" FROM tbcurso GROUP BY unidade ORDER BY COUNT(*) DESC LIMIT 1 OFFSET 1;


--ex5
SELECT unidade AS "Fatec", COUNT(*) AS "Quantidade" FROM tbcurso GROUP BY unidade HAVING COUNT(*) = 3 ORDER BY unidade ASC;


--ex6
SELECT unidade AS "Fatec", turno, COUNT(*) AS "Quantidade" FROM tbcurso GROUP BY unidade, turno ORDER BY unidade, turno ASC;


--ex7
SELECT unidade AS "Fatec", turno, COUNT(*) AS "Quantidade" FROM tbcurso GROUP BY unidade, turno HAVING COUNT(*) = 5 ORDER BY unidade, turno ASC;


--ex8
SELECT unidade AS "Fatec", turno, COUNT(*) AS "Quantidade" FROM tbcurso WHERE unidade LIKE '%São José dos Campos%' GROUP BY unidade, turno ORDER BY unidade, turno ASC;


--ex9
SELECT unidade AS "Fatec", turno, SUM(vaga) AS "Quantidade" FROM tbcurso WHERE unidade LIKE '%São José dos Campos%' GROUP BY unidade, turno ORDER BY unidade, turno ASC;


--ex10
SELECT turno, SUM(vaga) AS "Quantidade Soma" FROM tbcurso GROUP BY turno;