USE master_cinedb;

/*Criando as Roles*/

CREATE ROLE 'masterCine_Atendente', 'masterCine_CEO', 'masterCine_Gerente', 'masterCine_Caixa','masterCine_AuxiliarADM';

/*Aplicando as permissões para os roles*/

GRANT SELECT, INSERT, UPDATE, DELETE ON master_cinedb.Clientes TO 'masterCine_Atendente', 'masterCine_CEO', 'masterCine_Gerente', 'masterCine_Caixa','masterCine_AuxiliarADM';
GRANT SELECT, INSERT, UPDATE, DELETE ON master_cinedb.Filmes TO 'masterCine_Atendente', 'masterCine_CEO', 'masterCine_Gerente', 'masterCine_Caixa','masterCine_AuxiliarADM';
GRANT SELECT, INSERT, UPDATE, DELETE ON master_cinedb.Aluguel TO 'masterCine_Atendente', 'masterCine_CEO', 'masterCine_Gerente', 'masterCine_Caixa','masterCine_AuxiliarADM';

GRANT SELECT, INSERT, UPDATE, DELETE ON master_cinedb.funcionarios TO 'masterCine_CEO', 'masterCine_Gerente';

GRANT SELECT, INSERT, UPDATE, DELETE ON master_cinedb.usuario TO 'masterCine_AuxiliarADM';

/*Criando os usuários*/
CREATE USER 'matheus_alencar'@'localhost'IDENTIFIED BY '1[2@(KXU';
CREATE USER 'kamila_rodrigues'@'localhost' IDENTIFIED BY '5L*Sk{PK';
CREATE USER 'gabriel_martins'@'localhost' IDENTIFIED BY '7R^|tOHu';
CREATE USER 'luciana_araujo'@'localhost' IDENTIFIED BY '0pHV3mY$';
CREATE USER 'edna_ribeiro'@'localhost' IDENTIFIED BY '42xzD?Q,';
CREATE USER 'maristela_vieira'@'localhost' IDENTIFIED BY '2}FTLbS*';
CREATE USER 'nina_lima'@'localhost' IDENTIFIED BY '4/++vUL_';
CREATE USER 'clara_santoss'@'localhost' IDENTIFIED BY '7~HopWF_';
CREATE USER 'manoelito_ferreira'@'localhost' IDENTIFIED BY '3KC@+nIH';

/*Fazendo a ligação entre o role e o usuário*/

GRANT 'masterCine_Atendente' TO 'matheus_alencar'@'localhost';
GRANT 'masterCine_Atendente' TO 'kamila_rodrigues'@'localhost';
GRANT 'masterCine_Atendente' TO 'gabriel_martins'@'localhost';

GRANT 'masterCine_Caixa' TO 'luciana_araujo'@'localhost';
GRANT 'masterCine_Caixa' TO 'edna_ribeiro'@'localhost';
GRANT 'masterCine_Caixa' TO 'maristela_vieira'@'localhost';

GRANT 'masterCine_CEO' TO 'nina_lima'@'localhost';

GRANT 'masterCine_Gerente' TO 'clara_santoss'@'localhost';
GRANT 'masterCine_Gerente' TO 'manoelito_ferreira'@'localhost';