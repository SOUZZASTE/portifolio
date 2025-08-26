USE master_cinedb;

CREATE TABLE Clientes(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(500) NOT NULL,
    data_nascimento DATE NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    rg VARCHAR(9) NOT NULL,
    telefone VARCHAR(15) NOT NULL,
    email VARCHAR(500) NOT NULL,
    endereco VARCHAR(600) NOT NULL,
    
    PRIMARY KEY(ID)
);

SELECT * FROM Clientes;

CREATE TABLE Cargos(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    
    PRIMARY KEY(id)
);

SELECT * FROM Cargos;

CREATE TABLE Funcionarios(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(500) NOT NULL,
    re VARCHAR(6) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    rg VARCHAR(9) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    endereco VARCHAR(600) NOT NULL,
    email VARCHAR(500) NOT NULL,
    
    PRIMARY KEY(id)
);

SELECT * FROM Funcionarios;

CREATE TABLE categorias_filmes(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    dias_locacao VARCHAR(2) NOT NULL,
    valor_multa REAL(9,2) NOT NULL,
    
    PRIMARY KEY(id)
);

SELECT * FROM categorias_filmes;

CREATE TABLE Generos(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    
    PRIMARY KEY(id)
);

SELECT * FROM Generos;

CREATE TABLE Filmes(
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(500) NOT NULL,
    nome_direcao VARCHAR(500) NOT NULL,
    valor_aluguel REAL(9,2) NOT NULL,
    
    PRIMARY KEY(id)
);

SELECT * FROM Filmes;

CREATE TABLE Aluguel(
	id INT NOT NULL AUTO_INCREMENT,
    
	data_retirada DATE NOT NULL,
    data_prev_devolucao DATE NOT NULL,
    data_devolucao DATE NOT NULL,
    dias_atraso INT NOT NULL,
    
    PRIMARY KEY(id)
);

SELECT * FROM Aluguel;