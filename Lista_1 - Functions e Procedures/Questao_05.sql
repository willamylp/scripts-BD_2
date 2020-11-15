DELIMITER //
CREATE OR REPLACE FUNCTION Questao_05(codigo INT) RETURNS INT
BEGIN
	SET @dataHoje := (SELECT CURDATE());
	SET @dataFim := (
		SELECT dataFim
		FROM projeto
		WHERE projeto.codigo = codigo
	);
	SET @diasAtraso := (
		SELECT TIMESTAMPDIFF(DAY,@dataHoje,@dataFim)
	);
	RETURN @diasAtraso;
END //
DELIMITER ;

SELECT Questao_05(1);