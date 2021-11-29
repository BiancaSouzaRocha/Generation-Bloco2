CREATE DATABASE db_construindo_a_nossa_vida; 

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria (
id INT NOT NULL AUTO_INCREMENT,
categoria VARCHAR (30),
disp_entrega BOOLEAN,
PRIMARY KEY (id)
);

CREATE TABLE tb_produto (
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR (20) NOT NULL,
estoque INT NOT NULL, 
preco DECIMAL (5,3) NOT NULL, 
id_produto INT NOT NULL, 
PRIMARY KEY (id),
FOREIGN KEY (id_produto) REFERENCES tb_categoria (id)
);

INSERT INTO tb_categoria VALUES
 (DEFAULT, 'Decoração', TRUE) ,
 (DEFAULT,'Iluminação', TRUE),
 (DEFAULT,'Cama/Mesa/Banho', TRUE),
 (DEFAULT,'Banheiros', FALSE),
 (DEFAULT,'Ferramentas', TRUE);
 
 
 INSERT INTO tb_produto VALUES
 (DEFAULT,'Roupão', '20', '69.99', '3'),
 (DEFAULT,'Travesseiro', '15', '39.99', '3'), 
 (DEFAULT,'Chuveiro', '60', '49.99', '4'),
 (DEFAULT,'Abajur', '25', '59.99', '2'),
 (DEFAULT,'Espelho', '36', '77.99', '1'),
 (DEFAULT,'Cortina', '10', '69.99', '1'),
 (DEFAULT,'Broca', '20', '9.99', '5'),
 (DEFAULT,'Assento sanitário', '5', '92.00','4');
 
 
 
 SELECT * FROM tb_produto WHERE preco > 50;
 
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE ("%C%"); 

SELECT* FROM tb_categoria INNER JOIN tb_produto ON tb_produto.id_produto = tb_categoria.id;

SELECT * FROM tb_categoria 
	INNER JOIN tb_produto ON tb_produto.id_produto = tb_categoria.id
    WHERE tb_categoria.categoria = "Iluminação"; 
 

