DELIMITER //
CREATE OR REPLACE PROCEDURE Questao_06() CONTAINS SQL 
BEGIN
	SELECT f.nome, d.sigla
	FROM funcionario f, departamento d
	WHERE f.depto = d.codigo ;
END //
DELIMITER ;

CALL Questao_06();