-- Criar Banco de dados
CREATE DATABASE  recursos_humanos;
 -- Usar banco de dados para execultar as Querys abaixo
USE recursos_humanos; 

-- Criando a tabela
CREATE TABLE funcionarios (
id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (20) not NULL,
idade INT, 
cargo VARCHAR (20) not NULL,
salario FLOAT
);
 
 
 -- Inserir valores na tabela funcionarios
 
INSERT INTO funcionarios (nome, idade, cargo, salario) VALUES 
("Bianca",25, "Desenvolvedor Java", 2500),
("André",37, "Analista de RH", 1600),
("Nayane", 31 , "Recepcionista", 1000),
("Renata",28, "Assistente Adm", 2000),
("Douglas",41, "Auxiliar Adm", 2200);

-- select que retorne salario maior que dois mil
SELECT * FROM funcionarios WHERE salario > 2000;

-- select que retorne salario menor que dois mil 
SELECT * FROM funcionarios WHERE salario < 2000;

-- query de atualização 
UPDATE funcionarios SET cargo = "Analista de Sistemas" WHERE id=1;

SELECT * FROM funcionarios