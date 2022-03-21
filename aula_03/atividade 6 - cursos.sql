-- Cria do Banco de dados
CREATE DATABASE db_cursoDaMinhaVida;

-- Seleciona o Banco de dados para uso
USE db_cursoDaMinhaVida;

-- Criar tabela tb_categoria
CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,tb_curso
seção varchar(255),
experiência varchar(255),
PRIMARY KEY (id)
);

-- Inserir os dados na tabela tb_categoria
INSERT INTO tb_categoria (nome, seção, experiência)
VALUES ("Aprendendo a cozinhar", "Culinária", "Iniciante");

INSERT INTO tb_categoria (nome, seção, experiência)
VALUES ("Aprendendo a desenhar", "Artes", "Iniciante");

INSERT INTO tb_categoria (nome, seção, experiência)
VALUES ("Aprendendo Inglês", "Línguas", "Iniciante");

INSERT INTO tb_categoria (nome, seção, experiência)
VALUES ("Conversação em espanhol", "Línguas", "Avançado");

INSERT INTO tb_categoria (nome, seção, experiência)
VALUES ("Desenho realista", "Artes", "Intermediário");

-- Lista todas as categorias
SELECT * FROM tb_categoria;

-- Cria a tabela tb_curso
CREATE TABLE tb_curso(
id bigint AUTO_INCREMENT,
nome_curso varchar(255),
horário decimal, 
plataforma varchar(255), 
valores decimal, 
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

-- Inserir os dados na tabela tb_curso

INSERT INTO tb_curso (nome_curso, horário, plataforma, valores, categoria_id)
VALUES ("Do zero ao inglês fluente", 10, "Zoom", 300,00, 3);

INSERT INTO tb_curso (nome_curso, horário, plataforma, valores, categoria_id) 
VALUES ("Desenho realista com canetas", 9, "Zoom", 400.00, 5);

INSERT INTO tb_curso (nome_curso, horário, plataforma, valores, categoria_id)
 VALUES ("Como cozinhar para a família", 19, "Google Meet", 200.00, 1);
 
 INSERT INTO tb_curso (nome_curso, horário, plataforma, valores, categoria_id)
 VALUES ("Perca o medo de falar em Espanhol", 20, "Microsoft Teams", 50.00, 4);
 
 INSERT INTO tb_curso (nome_curso, horário, plataforma, valores, categoria_id)
 VALUES ("Traços básicos", 13, "Zoom", 3.00, 2);

INSERT INTO tb_curso (nome_curso, horário, plataforma, valores, categoria_id)
 VALUES ("Traços básicos e mais técnicas", 14, "Zoom", 60.00, 2);
 
 INSERT INTO tb_curso (nome_curso, horário, plataforma, valores, categoria_id) 
 VALUES ("Japchae: Aprenda essa receita coreana", 16, "Google Meet", 35.00, 1);
 
 INSERT INTO tb_curso (nome_curso, horário, plataforma, valores, categoria_id)
 VALUES ("Frases básicas no inglês", 10, "Microsoft Teams", 100.00, 3);
 
 -- Lista todos os Cursos
SELECT * FROM tb_curso;

-- Faça um select que retorne os cursos com valor maior que 50 reais.
SELECT * FROM tb_curso WHERE valores > 50.00;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_curso WHERE valores >= 3.00 AND valores <= 60.00;

-- Faça um select utilizando LIKE buscando os cursos com a letra J.
SELECT * FROM tb_curso WHERE nome_curso like "%J%";

-- Faça um um select com Inner join entre tabela categoria e cursos.
SELECT * 
FROM tb_curso INNER JOIN tb_categoria 
ON tb_categoria.id = tb_curso.categoria_id;

-- Faça um select onde traga todos os cursos de uma categoria específica.
SELECT *
FROM tb_curso INNER JOIN tb_categoria 
ON tb_categoria.id = tb_curso.categoria_id
WHERE tb_categoria.id = 3;





