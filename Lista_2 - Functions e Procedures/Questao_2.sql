DELIMITER //
CREATE OR REPLACE FUNCTION ClasseCliente(codCliente INT, codVoo int) RETURNS VARCHAR(50)
BEGIN
SET @classeVoo := (
	SELECT clv.classe
	FROM cliente_voo clv
	WHERE clv.cliente = codCliente AND clv.voo = codVoo
);
RETURN @classeVoo;
END //
DELIMITER ;
