CREATE DATABASE db_farmacia_do_bem; 
USE db_farmacia_do_bem; 

CREATE TABLE tb_categoria (
id INT NOT NULL AUTO_INCREMENT, 
categoria VARCHAR (30),
disponibilidade boolean,
PRIMARY KEY (id)
);

CREATE TABLE tb_produto (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(20), 
preco DECIMAL (5,2), 
estoque INT, 
id_produto INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_produto) REFERENCES tb_categoria (id)
); 


INSERT INTO tb_categoria (categoria, disponibilidade) VALUES
 ("MEDICAMENTOS", TRUE),
 ("BELEZA E HIGIENE", TRUE),
 ("MAMÃE E BEBÊ", TRUE),
 ("HOME CARE", FALSE),
 ("SAÚDE E BEM-ESTAR", FALSE);
 
 INSERT INTO tb_produto (nome, preco, estoque, id_produto) VALUES
 ("Buscopan", 14.81, 56, 1),
 ("Novalgina", 23.29, 105, 1),
 ("Avamys", 44.88, 43, 1),
 ("Fralda", 69.90, 200, 3),
 ("Protetor Solar", 33.20, 69, 2),
 ("Sabonete Liquido", 10.50, 106, 2),
 ("Soro Fisiologico", 8.09, 5, 4),
 ("Ensure", 141.00, 98, 5);
 
 SELECT * FROM tb_produto WHERE preco > 50;
 
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE ("%B%"); 

SELECT* FROM tb_categoria INNER JOIN tb_produto ON tb_produto.id_produto = tb_categoria.id;

SELECT * FROM tb_categoria 
	INNER JOIN tb_produto ON tb_produto.id_produto = tb_categoria.id
    WHERE tb_categoria.categoria = "HOME CARE"; 

