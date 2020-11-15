SET foreign_key_checks = 0;

CREATE TABLE cliente (
	codigo INT AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	endereco VARCHAR(50) NOT NULL,
	
	PRIMARY KEY (codigo)
);

CREATE TABLE piloto (
	codigo INT AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	num_voos INT,
	
	PRIMARY KEY (codigo)
);

CREATE TABLE voo (
	codigo INT AUTO_INCREMENT,
	tipo VARCHAR(50),
	piloto INT NOT NULL,
	num_passageiros INT NOT NULL,
	distancia INT NOT NULL,
	
	PRIMARY KEY (codigo),
	FOREIGN KEY (piloto) REFERENCES piloto(codigo)
);

CREATE TABLE milhas (
	cliente INT,
	quantidade INT,
	
	PRIMARY KEY (cliente),
	FOREIGN KEY (cliente) REFERENCES cliente(codigo)
);

CREATE TABLE cliente_voo (
	cliente INT,
	voo INT,
	classe VARCHAR(50),
	
	PRIMARY KEY (cliente, voo),
	FOREIGN KEY (cliente) REFERENCES cliente(codigo),
	FOREIGN KEY (voo) REFERENCES voo(codigo)
);

SET foreign_key_checks = 1;