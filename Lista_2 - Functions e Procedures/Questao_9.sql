DELIMITER //
CREATE OR REPLACE PROCEDURE PilotoVoos(codPiloto int) CONTAINS SQL 
BEGIN 
	SELECT nome, num_voos 
	FROM piloto 
	WHERE piloto.codigo = codPiloto;
END //
DELIMITER ;

CALL PilotoVoos(1);