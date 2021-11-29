CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria (
id INT NOT NULL AUTO_INCREMENT,
categoria VARCHAR (30),
disponibilidade BOOLEAN,
PRIMARY KEY (id)
);

CREATE TABLE tb_curso (
id INT NOT NULL AUTO_INCREMENT, 
titulo VARCHAR (30) NOT NULL, 
professor VARCHAR (20) NOT NULL, 
preco DECIMAL (5,2) NOT NULL, 
id_curso INT NOT NULL, 
PRIMARY KEY (id), 
FOREIGN KEY (id_curso) REFERENCES tb_categoria (id)
);

INSERT INTO tb_categoria VALUES
 (DEFAULT, "Desenvolvimento", TRUE),
 (DEFAULT,"Designer", TRUE),
 (DEFAULT,"Finanças e contabilidade", TRUE),
 (DEFAULT,"Marketing", FALSE),
 (DEFAULT,"Produtividade no Escritório", FALSE);
 

INSERT INTO tb_curso VALUES 
(DEFAULT,'Lógida da Programação', 'Nelio Alves','69.99', 1),
(DEFAULT,'Power BI COMPLETO','João Paulo Lira', '19.99', 5),
(DEFAULT,'Web Designer','Lucas Marte','26.99', 2),
(DEFAULT,'Programação em Python', 'André Locono','72.99', 1),
(DEFAULT,'Excel COMPLETO','João Paulo Lira','22.99', 5),
(DEFAULT,'Curso forex', 'Leonardo Badochi','19.99',3),
(DEFAULT,'JAVA POO', 'Nelio Alves', '35.99', 1),
(DEFAULT,'Google ADS', 'Lucas Dal Molin', '41.99',4),
(DEFAULT,'Educação Financeira','Eduardo Badochi','39.99', 3);

select* from tb_curso;
SELECT * FROM tb_curso WHERE preco > 50;
 
SELECT * FROM tb_curso WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_curso WHERE titulo LIKE ("%J%"); 

SELECT* FROM tb_categoria INNER JOIN tb_curso ON tb_curso.id_curso = tb_categoria.id;

SELECT * FROM tb_categoria 
	INNER JOIN tb_curso ON tb_curso.id_curso = tb_categoria.id
    WHERE tb_curso.titulo = 'Google ADS'; 