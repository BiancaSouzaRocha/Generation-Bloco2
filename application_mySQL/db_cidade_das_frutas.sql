CREATE DATABASE db_cidade_das_frutas; 
USE db_cidade_das_frutas; 

CREATE TABLE tb_categoria (
id INT NOT NULL AUTO_INCREMENT,
cor VARCHAR (20), 
disponibilidade boolean,
PRIMARY KEY (ID)
);

CREATE TABLE tb_produto (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR (20),
preco DECIMAL (5,2),
estoque INT, 
id_produto INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_produto) REFERENCES tb_categoria (id)
); 


INSERT INTO tb_categoria (cor, disponibilidade) VALUES
 ("Vermelha", TRUE),
 ("Laranja", TRUE),
 ("Verde", TRUE),
 ("Roxa", FALSE),
 ("Amarela", FALSE);
 
 INSERT INTO tb_produto (nome, preco, estoque, id_produto) VALUES
 ("Laranja", 5.00, 56, 2),
 ("Manga", 3.50, 105, 2),
 ("Maçã", 4.70, 43, 1 ),
 ("Morango", 10.50, 200, 1),
 ("Kiwi", 12.60, 69, 3),
 ("Uva", 6.70, 106, 4),
 ("Amora", 15.71, 5, 4),
 ("Banana", 7.12, 98, 5);
 
 
  SELECT * FROM tb_produto WHERE preco > 10;
  
  SELECT * FROM tb_produto WHERE preco BETWEEN 1 AND 9;
  
  SELECT * FROM tb_produto WHERE nome LIKE ("%K%"); 
  
  SELECT* FROM tb_categoria 
	INNER JOIN tb_produto ON tb_produto.id_produto = tb_categoria.id;
  
  SELECT * FROM tb_categoria 
	INNER JOIN tb_produto ON tb_produto.id_produto = tb_categoria.id
    WHERE tb_categoria.cor = "Roxa";