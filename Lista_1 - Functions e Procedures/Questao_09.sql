CREATE OR REPLACE VIEW gerentes AS
SELECT 
	f.nome AS nome_gerente,
	d.codigo AS departamento_gerente,
	f.salario AS salario_gerente

FROM funcionario f, departamento d
WHERE f.codigo = d.gerente;

SELECT f.nome, d.descricao 
FROM funcionario f, departamento d, gerentes g
WHERE 
	f.salario > g.salario_gerente AND
	d.codigo = g.departamento_gerente AND
	f.depto = d.codigo;