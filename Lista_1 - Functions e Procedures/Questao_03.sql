CREATE OR REPLACE VIEW NomeIdade AS
	SELECT f.nome, TIMESTAMPDIFF(YEAR, f.dataNasc, CURDATE()) AS idade 
	FROM funcionario f;

SET @mediaIdade := (
	SELECT AVG(media)
	FROM Idades
);


DELIMITER //
CREATE OR REPLACE PROCEDURE IdadeMaior() CONTAINS SQL 
BEGIN 
	SELECT nome, idade 
	FROM NomeIdade 
	WHERE idade > @mediaIdade;
END //
DELIMITER ;

CALL IdadeMaior();
