USE master_cinedb;

/*01 - Filme + Genero*/
ALTER TABLE Filmes ADD genero_id INT;
ALTER TABLE Filmes ADD FOREIGN KEY(genero_id) REFERENCES generos(id);

/*02 - Filme + Categoria*/
ALTER TABLE Filmes ADD categoria_id INT;
ALTER TABLE Filmes ADD FOREIGN KEY(categoria_id) REFERENCES categorias_filmes(id);

/*03 - Funcionario + Cargo*/
ALTER TABLE Funcionarios ADD cargo_id INT;
ALTER TABLE Funcionarios ADD FOREIGN KEY(cargo_id) REFERENCES Cargos(id);

/*04 - Alugueis + Clientes*/
ALTER TABLE Aluguel ADD cliente_id INT;
ALTER TABLE Aluguel ADD FOREIGN KEY(cliente_id) REFERENCES Clientes(id);

/*05 - Alugueis + Filmes*/
ALTER TABLE Aluguel ADD filme_id INT;
ALTER TABLE Aluguel ADD FOREIGN KEY(filme_id) REFERENCES Filmes(id);

/*06 - Alugueis +  Funcionarios*/
ALTER TABLE Aluguel ADD funcionario_id INT;
ALTER TABLE Aluguel ADD FOREIGN KEY (funcionario_id) REFERENCES Funcionarios(id);

/*07 - Funcionarios + Aluguel*/
ALTER TABLE Funcionarios ADD usuario_id INT;
ALTER TABLE Funcionarios ADD FOREIGN KEY(usuario_id) REFERENCES Usuario(id);
