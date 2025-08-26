USE master_cinedb;

INSERT INTO Clientes
(nome,data_nascimento,cpf,rg,telefone,email,endereco) VALUES
("Théo Souza da Silva","2000-06-12",92757541013,145213766,"(13) 99860-8524","theo.souza@gmail.com","Rua  Adelina Silvestre, 150"),
("Gabriela Mendes","1987-09-08",15297023050,238158238,"(13) 99273-3434","gaby.mendes@hotmail.com","Rua Silva Bueno,350 Apto 10"),
("Sophia Alves","2006-07-12",88009338079,431031836,"(15) 99581-4774","sophia.alves@gmail.com","Rua Apucarana,1500 Bloco 3 Apto 25"),
("Eduardo Lucas Lovato de Matos","1998-02-23",32660597006,460487978,"(16) 98813-9365","eduardo_lovato@yahoo.com.br","Rua das Fiandeiras, 394"),
("Isadora Eva Marques Roque Branco","2004-06-24",86073048017,501027282,"(19) 98907-7332","isa.eva04@hotmail.com","Avenida Desembargador Moreira, 150 Apto. 12"),
("Mariana Vera Azevedo","2001-05-10",11837983003,500824009,"(12) 99659-0426","mariana.azevedo@gmail.com","Avenida Tocantins, 1569 Bloco 02 Aprto 35"),
("Alan Franco Rezende","2004-11-16",38849362048,494538004,"(15) 97413-3948","alan_franco05@hotmail.com","Praça da República, 255 Apto 04"),
("Túlio Yuri Matias Vasques Brasil","1994-06-08",41488715033,185160499,"(16) 98392-1763","tulio.martins.brasil@gmail.com","Rua Carlos Augusto Cornelsen, 144"),
("Norma Isabela Corona de Rezende","1958-07-03",59671731023,502134574,"(11) 97243-2164","isabela.rezende@gmail.com","Avenida São João, 458 Apto 07"),
("Bianca Taís Mascarenhas de Queirós","1930-12-01",99078179023,269227581,"(12) 99581-5151","bi.mascarenhas@hotmail.com","Avenida Afonso Pena, 15"),
("Sofia Patrícia Assunção de Gimenes","1985-03-05",45215459045,186182326,"(18) 98884-1410","soso.assuncao@gmail.com","Rua Domingos Olímpio,458 Casa 05"),
("Alfredo Eustáquio Delvalle Sobrinho","1991-05-13",89481782026,264015873,"(12) 99371-5643","alfredo.delvalle91@hotmail.com","Avenida Governador José Malcher, 125 Apto 27"),
("Dante Oséas de Feliciano","1968-07-06",61681913054,283910987,"(19) 99963-8442","dante_feliciano1968@yahoo.com.br","Avenida Almirante Maximiano Fonseca, 2550 Bloco C Apto 42"),
("Hugo Pena Guerra","1945-07-28",50212081012,456340075,"(11) 98965-5300","guerra_hugo@gmail.com","Avenida Esbertalina Barbosa Damiani, 625 A"),
("Júlia Fontes","1950-04-03",39967035030,243587326,"(11) 96756-3516","ju.fontes@gmail.com","Rua dos Carijós, 122"),
("Isadora Simone Guerra de Matias","1993-08-19",29369910050,434316842,"(17) 98024-5310","isa.simone_matias@gmail.com","Rua Cristiano Olsen, 75"),
("Michel Wally Delatorre de Fidalgo","1983-12-25",44508216021,488398824,"(18) 98504-5174","michael.fidalgo@hotmail.com","Rua Frederico Moura, 48 Casa 02"),
("Otávio Fernandes Grego","1976-07-16",44508216021,321473814,"(19) 98808-3540","otavio_grego@gmail.com","Avenida Rio Branco, 48 Apto 10"),
("Emílio Francisco de Ferraz Filho","1952-03-08",45008408003,254907994,"(19) 98439-7981","ferraz.emilio76@hotmail.com","Rua Arlindo Nogueira, 150"),
("Ian Cruz Jimenes","1930-12-06",35549780003,449229567,"(18) 98089-1727","ian_jimenes@gmail.com","Travessa Antônio Ferreira, 25"),
("Isabel Ivanete Maldonado de Macedo","1937-01-09",16736907004,346411063,"(15) 97938-0342","isabel.maldonado.macedo@yahoo.com.br","Rua Pereira Estéfano,789"),
("Hugo Marcelo Ramos Neto","1955-10-10",94463369029,301369434,"(17) 98785-1394","marcelo.neto@hotmail.com","Rua Barão de Vitória, 07"),
("Bárbara Maria Cortês Fontes","1989-04-08",94104391085,189593490,"(14) 96861-3577","barbara.fontes@gmail.com","Rua Maria Luísa do Val Penteado,250 Casa 15"),
("Berenice Bittencourt Chaves","1996-02-12",98202179033,217403542,"(15) 98984-7387","bere.chaves@hotmail.com","Rua Serra de Bragança, 149"),
("Alex Altair Pereira do Prado","2003-10-21",01144085055,120032636,"(11) 99783-6379","alex.prado@gmail.com","Avenida Almirante Maximiano Fonseca, 358"),
("Jorge Ciro Balestero Escobar Branco","1943-09-28",49091771089,236515147,"(16) 96762-9532","jorge.balestero@yahoo.com.br","Rua Carlos Augusto Cornelsen, 75 Casa 03");

SELECT * FROM Clientes;

INSERT INTO categorias_filmes
(nome,dias_locacao,valor_multa)VALUES
("Demais",7,1.00),
("Lançamento",5,2.00);

SELECT * FROM categorias_filmes;

INSERT INTO Cargos
(nome)VALUES
("Atendente"),
("CEO"),
("Gerente"),
("Caixa"),
("Auxiliar de Serviços Gerais"),
("Auxiliar Administrativo");

SELECT * FROM Cargos;

INSERT INTO Funcionarios
(nome,re,cargo_id,cpf,rg,data_nascimento,telefone,endereco,email)VALUES
("Luciana Araujo Rodrigues",149294,4,50453879012,307498165,"1980-08-12","(11)91258-4578","Rua Elza Soares de Arruda, 463","luciana.araujo@mastercine.com.br"),
("Matheus Alencar",389161,1,94180437007,277021807,"1992-11-01","(11)2459-1265","Rua Silva Bueno,350 Apto 10","matheus.alencar@mastercine.com.br"),
("Elaine Soares de Oliveira",475434,5,51260991083,198630827,"1999-05-09","(11)94287-6219","Rua Maria Marcolina, 190 Apto 12","eliane.oliveira@mastercine.com.br"),
("Kamila Rodrigues Dias",979547,1,11400999065,481207466,"2000-04-15","(11)93943-2271","Rua dos Pinheiros,14","kamila.rodrigues@mastercine.com.br"),
("Edna Nunes Ribeiro",449650,4,20695513001,314048868,"1977-08-05","(11)99364-7313","Rua Taiuvinha, 398 Casa 03","edna.nunes@mastercine.com.br"),
("Gabriel França Martins",472434,1,89696573049,312717593,"1994-04-25","(11)98629-4237","Av. Tenente Laudelino Ferreira do Amaral, 190 Apto. 35","gabriel.martins@mastercine.com.br"),
("Leandro Aparecida da Silva",113015,5,69284977002,312561398,"1979-02-20","(11)98264-7318","Rua Júlio Vergueiro, 695","leandro.aparecida@mastercine.com.br"),
("Maristela de Sousa Vieira Rodrigues",126809,4,26829171008,302864751,"1997-03-10","(11)98317-8955","Av. do Contôrno, 267","maristela.sousa@mastercine.com.br"),
("Nina Barbosa Lima",682334,2,13956296095,347553904,"1970-05-02","(11)98576-1844","Av. Francisco Nobre, 1500 Bloco 02 Apto. 4","nina.barbosa@mastercine.com.br"),
("Clara Silva Santos",371956,3,71862178003,418973301,"1989-06-03","(11)99133-6892","Rrua Maria Cuofono Salzano, 185","clara.silva@mastercine.com.br"),
("Manoelito Ferreira Lourenço",455198,3,24832051008,479781023,"1995-01-07","(11)98755-5822","Rua Pascoal Moreira, 450 Casa 03","manoelito.ferreira@mastercine.com.br");

SELECT * FROM Funcionarios;

INSERT INTO Generos
(nome)VALUES
("Ação"),
("Aventura"),
("Comédia"),
("Comédia romântica"),
("Documentário"),
("Drama"),
("Fantasia"),
("Ficção científica"),
("Infantil"),
("Mistério"),
("Romance"),
("Suspense"),
("Terror");

SELECT * FROM Generos;

INSERT INTO Filmes
(nome,nome_direcao,valor_aluguel,genero_id,categoria_id)VALUES
("A Era do Gelo","Steve Martino",15.50,9,1),
("A Filha do Presidente","Forest Whitaker",15.00,4,1),
("American Factory","Julia Reichert",17.50,5,1),
("Barbie","Greta Gerwig",25.00,7,2),
("Basquete Blues","Steve James",16.00,5,1),
("Besouro Azul","Angel Manuel Soto",22.00,1,2),
("Bonequinha de Luxo","Blake Edwards",16.90,11,1),
("Carrie","Brian De Palma",16.00,13,1),
("Central do Brasil","Walter Salles",15.00,6,2),
("De Volta para o Futuro","Robert Zemeckis",19.50,8,1),
("Divertida Mente","Pete Docter",18.90,9,1),
("Doze É Demais","Shawn Levy",15.00,3,2),
("E.T. O Extraterrestre","Steven Spielberg",20.90,8,1),
("For Sama","Edward Watts",18.90,5,1),
("Gente Grande","Dennis Dugan",15.00,3,2),
("Halloween","John Carpenter",15.00,13,1),
("Harry Potter e a Câmara Secreta","Chris Columbus",23.90,2,1),
("Indiana Jones e os Caçadores da Arca Perdida","Steven Spielberg",15.75,2,2),
("Invocação do Mal","James Wan",16.00,13,1),
("Meu Malvado Favorito","Pierre Coffin",15.50,9,1),
("Minha Mãe é Uma Peça","Susana Garcia",17.45,3,2),
("Mulher-Maravilha","Patty Jenkins",16.00,1,1),
("O Diário da Princesa","Garry Marshall",15.00,4,1),
("O Grinch","Ron Howard",16.5,9,2),
("Os Goonies","Richard Donner",18.00,2,1),
("Psicose","Alfred Hitchcock",18.75,13,2),
("Rio","Carlos Saldanha",18.90,9,1),
("Shrek","Vicky Jenson",15.00,9,2),
("Star Wars: Episódio I – A Ameaça Fantasma","George Lucas",24.50,8,1),
("Um Lugar Silencioso","John Krasinski",20.75,13,1),
("Uma Linda Mulher","Garry Marshall",15.00,4,2),
("Vingadores: Ultimato","Anthony Russo",17.00,1,1);

SELECT * FROM Filmes;

INSERT INTO Aluguel
(data_retirada,data_prev_devolucao,data_devolucao,cliente_id,filme_id,funcionario_id)VALUES
("2018-05-18","2018-05-25","2018-05-28",14,5,13),
("2021-03-03","2021-03-10","2021-06-10",2,22,17),
("2017-12-08","2017-12-13","2017-12-13",26,15,15),
("2023-06-12","2023-06-19","2023-06-19",10,30,13),
("2019-03-28","2019-04-02","2019-04-10",17,2,15),
("2017-04-30","2017-05-05","2017-05-04",9,9,17),
("2022-02-17","2022-02-22","2022-02-22",1,12,13),
("2019-11-22","2019-11-27","2019-11-27",15,18,13),
("2021-07-27","2021-08-01","2021-09-01",21,31,15),
("2018-01-25","2018-02-01","2018-02-01",23,10,17),
("2020-04-05","2020-04-12","2020-04-12",2,8,15),
("2017-03-12","2017-03-17","2017-03-25",17,4,13),
("2023-02-10","2023-02-17","2023-02-17",8,5,13),
("2023-02-10","2023-02-17","2023-02-17",18,5,13),
("2020-10-05","2020-10-12","2020-10-12",6,17,15),
("2018-09-15","2018-09-22","2018-09-22",11,27,17),
("2021-08-20","2021-08-27","2021-09-01",22,25,15),
("2018-07-17","2018-07-24","2018-07-24",19,7,15),
("2022-06-12","2022-06-19","2022-06-19",16,11,13),
("2019-04-23","2019-04-30","2019-04-30",25,14,17),
("2018-07-19","2018-07-26","2018-07-26",3,1,15),
("2021-10-01","2021-10-08","2021-10-08",26,3,13),
("2019-02-13","2019-02-20","2019-02-20",10,23,15),
("2023-06-10","2023-06-15","2023-06-16",4,26,17),
("2020-05-18","2020-05-23","2020-05-23",12,6,13);

SELECT * FROM Aluguel;