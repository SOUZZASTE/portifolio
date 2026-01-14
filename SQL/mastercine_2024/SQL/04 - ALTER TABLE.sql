USE master_cine_2024;

ALTER TABLE funcionarios ADD FOREIGN KEY (cargo_id) REFERENCES cargos(id);

ALTER TABLE alugueis ADD FOREIGN KEY (id_filme) REFERENCES filmes(id);

ALTER TABLE alugueis ADD FOREIGN KEY (id_cliente) REFERENCES clientes(id);

ALTER TABLE alugueis ADD FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id);