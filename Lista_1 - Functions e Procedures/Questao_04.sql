INSERT INTO atividade VALUES ('1', 'Atv1', '2020-01-01', '2020-11-10', 'teste1', '2020-11-9');
INSERT INTO atividade VALUES ('2', 'Atv2', '2020-01-01', '2020-11-10', 'teste2', '2020-11-11');
INSERT INTO atividade VALUES ('3', 'Atv3', '2020-01-01', '2020-11-10', 'teste2', '2020-12-10');

DELIMITER //
CREATE OR REPLACE FUNCTION Questao_04(codigo int) RETURNS INT
BEGIN
	SET @dataConclusao := (
		SELECT dataConclusao 
		FROM atividade
		WHERE atividade.codigo = codigo
	);
	SET @dataFim := (
		SELECT dataFim
		FROM atividade
		WHERE atividade.codigo = codigo
	);
	SET @diasAtraso := (
		SELECT TIMESTAMPDIFF(DAY,@dataConclusao,@dataFim)
	);
	RETURN @diasAtraso;
END //

DELIMITER ;

SELECT Questao_04(1);


