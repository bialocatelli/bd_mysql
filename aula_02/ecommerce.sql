-- Criar Banco de dados
CREATE DATABASE db_ecommerce;

-- Selecionar o Banco de dados
USE db_ecommerce;

-- Criar Tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome_produto varchar(255) NOT NULL,
quantidade int,
setor varchar(255) NOT NULL,
preco decimal NOT NULL,
parcelas int,
PRIMARY KEY (id)
);

-- Inserir dados na tabela
INSERT INTO tb_produtos (nome_produto, quantidade, setor, preco, parcelas)
VALUES ("Escova de cabelo", 15, "beleza", 45.00, 3);

INSERT INTO tb_produtos (nome_produto, quantidade, setor, preco, parcelas)
VALUES ("Secador", 2, "beleza", 300.00, 5);

INSERT INTO tb_produtos (nome_produto, quantidade, setor, preco, parcelas)
VALUES ("Aparelho de pressão", 1, "saúde", 100.00, 2);

INSERT INTO tb_produtos (nome_produto, quantidade, setor, preco, parcelas)
VALUES ("Conjunto de panelas", 3, "casa e cozinha", 3.000, 12);

INSERT INTO tb_produtos (nome_produto, quantidade, setor, preco, parcelas)
VALUES ("Toalha de mesa", 10, "casa e cozinha", 500.00, 5);

INSERT INTO tb_produtos (nome_produto, quantidade, setor, preco, parcelas)
VALUES ("Barbeador Elétrico", 4, "beleza", 800.00, 3);

INSERT INTO tb_produtos (nome_produto, quantidade, setor, preco, parcelas)
VALUES ("Quadros de Decoração", 20, "casa e cozinha", 900.00, 12);

INSERT INTO tb_produtos (nome_produto, quantidade, setor, preco, parcelas)
VALUES ("Termômetro", 5, "saúde", 300.00, 5);

-- Listar todos os produtos
SELECT * FROM tb_produtos;

-- Listar produtos com valor maior que R$ 500
SELECT * FROM tb_produtos WHERE preco > 500.00;

-- Listar produtos com valor menor que R$ 500
SELECT * FROM tb_produtos WHERE preco < 500.00;


-- Formatar para padrão R$
SELECT nome_produto, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos;


/*Alterações na Estrutura da tabela*/
ALTER TABLE tb_produtos MODIFY preco decimal (6,2);

-- Atualizar os dados da tabela
UPDATE tb_produtos SET preco = 3000.00 WHERE id = 4;