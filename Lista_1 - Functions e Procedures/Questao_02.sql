CREATE OR REPLACE VIEW Idades AS
SELECT TIMESTAMPDIFF(YEAR, f.dataNasc, CURDATE()) AS media
FROM funcionario f;

SELECT AVG(media) FROM Idades;