DELIMITER //
CREATE or replace FUNCTION CalculaIdade (codigo INT) RETURNS int
BEGIN
SET @idade := (
	SELECT dataNasc
	FROM funcionario
	WHERE funcionario.codigo = codigo
);
RETURN (SELECT TIMESTAMPDIFF(YEAR, @idade, CURDATE()));
END //
DELIMITER ;

SELECT CalculaIdade(1);