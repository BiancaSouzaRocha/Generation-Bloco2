CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;



CREATE TABLE tb_categoria (
id INT NOT NULL AUTO_INCREMENT,
categoria VARCHAR (20),
tamanho ENUM ('G','M', 'P'),
PRIMARY KEY (id)
);

CREATE TABLE tb_pizza (
id INT NOT NULL AUTO_INCREMENT,
sabor VARCHAR (20), 
quantidade INT,   
preco DECIMAL (5,2),
id_pizza INT NOT NULL, 
PRIMARY KEY (id),
FOREIGN KEY (id_pizza) REFERENCES tb_categoria (id)
);


 INSERT INTO tb_categoria (categoria, tamanho) VALUES
 ("SALGADA", 'P'),
 ("SALGADA", 'M'),
 ("SALGADA", 'G'),
 ("DOCE", 'P'),
 ("DOCE", 'M');

INSERT INTO tb_pizza (sabor, quantidade, preco, id_pizza) VALUES 
 ("MUSSARELA", 2, 29.99, 3),
 ("CHOCOLATE",  2, 88.80, 5),
 ("ALHO", 1, 26.50, 1),
 ("BANANA",  1, 63.50, 4), 
 ("BAURU", 1, 32.99, 2),
 ("TOSCANA", 1, 41.00, 2),
 ("BACON", 1, 46.99, 1),
 ("DOCE DE LEITE",  3, 79.40, 5); 
 

 
SELECT * FROM tb_pizza WHERE preco > 45;
 
SELECT * FROM tb_pizza WHERE preco BETWEEN 29 AND 60;
 
SELECT * FROM tb_pizza WHERE sabor LIKE ("%C%"); 

SELECT * FROM tb_pizza 
	INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.id_pizza;
SELECT * FROM tb_pizza 
	INNER JOIN tb_categoria ON tb_categoria.id = tb_pizza.id_pizza
    WHERE tb_categoria.categoria = "DOCE";
 
 

