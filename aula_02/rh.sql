-- Criar Banco de dados
CREATE DATABASE db_rh;

-- Selecionar o Banco de dados
USE db_rh;

-- Criar Tabela tb_funcionaries
CREATE TABLE tb_funcionaries(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int,
cargo varchar(255) NOT NULL,
salario decimal NOT NULL,
PRIMARY KEY (id)
);

-- Inserir dados na tabela
INSERT INTO tb_funcionaries (nome, idade, cargo, salario)
VALUES ("José", 30, "auxiliar de escritório", 1.000);

INSERT INTO tb_funcionaries (nome, idade, cargo, salario)
VALUES ("João", 23, "desenvolvedor web", 2.000);

INSERT INTO tb_funcionaries (nome, idade, cargo, salario)
VALUES ("Marta", 45, "gerente", 4.000);

INSERT INTO tb_funcionaries (nome, idade, cargo, salario)
VALUES ("Núbia", 28, "auxiliar de limpeza", 1.500);

INSERT INTO tb_funcionaries (nome, idade, cargo, salario)
VALUES ("Altino", 52, "motorista", 2.500);

-- Listar todos os produtos
SELECT * FROM tb_funcionaries;

-- Listar salários maior que R$ 2000,00
SELECT * FROM tb_funcionaries WHERE salario > 2000.00;

-- Listar salários menor que R$ 2000,00
SELECT * FROM tb_funcionaries WHERE salario < 2000.00;

-- Formatar salário para padrão reais
SELECT nome, CONCAT('R$ ', FORMAT(salario, 2, 'pt_BR')) AS salário FROM tb_funcionaries;


/*Alterações na Estrutura da tabela*/
ALTER TABLE tb_funcionaries MODIFY salario decimal (8,2);

DELETE FROM tb_funcionaries WHERE id = 6;

-- Atualizar os dados da tabela
UPDATE tb_funcionaries SET salario = 1000.00 WHERE id = 1;
UPDATE tb_funcionaries SET salario = 2000.00 WHERE id = 2;
UPDATE tb_funcionaries SET salario = 4000.00 WHERE id = 3;
UPDATE tb_funcionaries SET salario = 1500.00 WHERE id = 4;
UPDATE tb_funcionaries SET salario = 2500.00 WHERE id = 5;


