-- Criar Banco de dados
CREATE DATABASE db_escola;

-- Selecionar o Banco de dados
USE db_escola;

-- Criar Tabela tb_estudantes
CREATE TABLE tb_estudantes(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int,
turma int,
modelo_aulas varchar(255) NOT NULL,
notas int,
PRIMARY KEY (id)
);

-- Inserir dados na tabela

INSERT INTO tb_estudantes (nome, idade, turma, modelo_aulas, notas)
VALUES ("Bia", 18, 20, "EAD", 8);

INSERT INTO tb_estudantes (nome, idade, turma, modelo_aulas, notas)
VALUES ("Beto", 20, 16, "EAD", 9);

INSERT INTO tb_estudantes (nome, idade, turma, modelo_aulas, notas)
VALUES ("Milena", 25, 9, "Presencial", 5);

INSERT INTO tb_estudantes (nome, idade, turma, modelo_aulas, notas)
VALUES ("Cleide", 40, 6, "EAD", 10);

INSERT INTO tb_estudantes (nome, idade, turma, modelo_aulas, notas)
VALUES ("Carol", 26, 21, "Presencial", 5);

INSERT INTO tb_estudantes (nome, idade, turma, modelo_aulas, notas)
VALUES ("Matilda", 19, 27, "EAD", 3);

INSERT INTO tb_estudantes (nome, idade, turma, modelo_aulas, notas)
VALUES ("Junior", 22, 8, "Presencial", 2);

INSERT INTO tb_estudantes (nome, idade, turma, modelo_aulas, notas)
VALUES ("Renan", 33, 28, "EAD", 1);

-- Listar todos os estudantes
SELECT * FROM tb_estudantes;

-- Listar estudantes com nota maior que 7
SELECT * FROM tb_estudantes WHERE notas > 7;

-- Listar estudantes com nota menor que 7
SELECT * FROM tb_estudantes WHERE notas < 7;