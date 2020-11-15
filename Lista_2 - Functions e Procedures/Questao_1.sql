DELIMITER //
CREATE OR REPLACE FUNCTION NumeroPassageiros(codVoo INT) RETURNS INT
BEGIN
SET @NumPassageiros := (
	SELECT v.num_passageiros
	FROM voo v
	WHERE v.codigo = codVoo
);
RETURN @NumPassageiros;
END //
DELIMITER ;