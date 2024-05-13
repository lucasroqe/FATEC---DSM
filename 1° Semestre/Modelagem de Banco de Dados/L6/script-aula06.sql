--ex1
SELECT * FROM tbfaculdade;

--ex2
SELECT * FROM tbfaculdade ORDER BY municipio ASC;

--ex3
SELECT * FROM tbfaculdade WHERE municipio="Jacareí";

--ex4
SELECT * FROM tbfaculdade WHERE numero is NULL;

--ex5
SELECT * FROM tbfaculdade WHERE municipio LIKE "f%";

--ex6
SELECT * FROM tbfaculdade WHERE bairro LIKE "%vila%";

--ex7
SELECT * FROM tbfaculdade WHERE cep LIKE "%000";

--ex8
SELECT * from tbfaculdade WHERE cep like "_5%";

--ex9
SELECT * FROM tbfaculdade WHERE cep LIKE "_5%2_";

--ex10
SELECT * FROM tbfaculdade WHERE numero LIKE "__";