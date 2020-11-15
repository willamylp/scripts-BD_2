DELIMITER //
CREATE OR REPLACE PROCEDURE ZeraMilhagem(codCliente int) CONTAINS SQL 
BEGIN
	SELECT cl.nome, m.quantidade 
	FROM cliente cl, milhas m 
	WHERE cl.codigo = codCliente AND m.cliente = codCliente;

	UPDATE milhas

	SET quantidade = 0 WHERE milhas.cliente = codCliente;

	SELECT cl.nome, m.quantidade
	FROM cliente cl, milhas m
	WHERE cl.codigo = codCliente AND m.cliente = codCliente;
END //
DELIMITER ;

CALL ZeraMilhagem(1);