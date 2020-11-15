CREATE USER 'EmpresaGerente'@'%' IDENTIFIED BY 'password';
GRANT SELECT ON EmpresaDB.* TO 'EmpresaGerente'@'%';
GRANT INSERT, UPDATE ON empresadb.equipe TO 'EmpresaGerente'@'%';
GRANT INSERT, UPDATE ON empresadb.membro TO 'EmpresaGerente'@'%';
GRANT INSERT, UPDATE ON empresadb.atividade TO 'EmpresaGerente'@'%';
GRANT INSERT, UPDATE ON empresadb.atividade_projeto TO 'EmpresaGerente'@'%';

SHOW GRANTS FOR 'EmpresaGerente'@'%';