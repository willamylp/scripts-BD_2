DELIMITER //
CREATE OR REPLACE PROCEDURE VooMaisUm(codPiloto int) CONTAINS SQL 
BEGIN 
	UPDATE piloto
	SET num_voos = num_voos + 1 WHERE piloto.codigo = codPiloto;
	SELECT piloto.nome, piloto.num_voos 
	FROM piloto 
	WHERE piloto.codigo = codPiloto;
END //
DELIMITER ;

CALL VooMaisUm(1);