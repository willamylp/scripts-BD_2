DELIMITER //
CREATE OR REPLACE FUNCTION ContaVoo(codCliente INT) RETURNS INT
BEGIN
SET @totalVoos := (
	SELECT COUNT(*)
	FROM cliente_voo clv
	WHERE clv.cliente = codCliente
);
RETURN @totalVoos;
END //
DELIMITER ;
