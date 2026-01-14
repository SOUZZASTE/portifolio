USE master_cine_2024;

CREATE TABLE clientes (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    data_nascimento VARCHAR(20), -- Importamos como texto para formatar depois
    cpf VARCHAR(20),
    rg VARCHAR(20),
    telefone VARCHAR(20),
    email VARCHAR(255),
    endereco VARCHAR(255),
    
    PRIMARY KEY(ID)
);


CREATE TABLE funcionarios (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    re VARCHAR(50),
    cpf VARCHAR(20),
    rg VARCHAR(20),
    data_nascimento VARCHAR(20),
    telefone VARCHAR(20),
    endereco VARCHAR(255),
    email VARCHAR(255),
    cargo_id INT,
    
    PRIMARY KEY(ID)
);


CREATE TABLE filmes (
    id INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(255),
    direcao VARCHAR(255),
    genero VARCHAR(100),
    categoria VARCHAR(100),
    valor_aluguel DECIMAL(10, 2),
    dias_locacao INT,
    valor_multa DECIMAL(10, 2),
    
    PRIMARY KEY(ID)
);


CREATE TABLE cargos (
    id INT NOT NULL AUTO_INCREMENT,
    nome_cargo VARCHAR(100),
    
    PRIMARY KEY(ID)
);


DROP TABLE IF EXISTS alugueis; -- Apaga a antiga para criar a nova

CREATE TABLE alugueis (
    id INT NOT NULL AUTO_INCREMENT,
    id_cliente INT,
    id_filme INT,
    data_retirada VARCHAR(20),
    data_devolucao VARCHAR(20),
    id_funcionario INT,
    
    PRIMARY KEY(ID)
);

