DELIMITER //
CREATE OR REPLACE FUNCTION SomaMilha() RETURNS INT
BEGIN
SET @totalMilhas := (
	SELECT SUM(m.quantidade)
	FROM milhas m
);
RETURN @totalMilhas;
END //
DELIMITER ;