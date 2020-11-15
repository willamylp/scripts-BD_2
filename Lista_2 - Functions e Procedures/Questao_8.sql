DELIMITER //
CREATE OR REPLACE PROCEDURE NomeMilhas(codCliente int) CONTAINS SQL 
BEGIN 
	SELECT cl.nome, m.quantidade
	FROM cliente cl, milhas m
	WHERE cl.codigo = codCliente AND m.cliente = codCliente;
END //
DELIMITER ;

CALL NomeMilhas(1);