DELIMITER //
CREATE OR REPLACE FUNCTION Add500() RETURNS INT
BEGIN
SET @totalClientes := (
	SELECT count(*)
	FROM milhas m WHERE m.quantidade > 500
);
RETURN @totalClientes;
END //
DELIMITER ;