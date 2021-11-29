-- Criar Banco de dados
CREATE DATABASE escola; 

 -- Usar banco de dados para execultar as Querys abaixo
 USE escola;
 
 -- Criando a tabela
 CREATE TABLE estudante (
 id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR (20) not NULL,
 email VARCHAR (30),
 serie INT, 
 nota FLOAT 
 );
 
 
 INSERT INTO estudante (nome, email, serie, nota) VALUES 
("Bianca", "bianca@gmail.com", 2, 8.5),
("Gustavo", "gustavo@gmail.com", 3, 5.5),
("Mariana", "mariana@gmail.com", 1, 4.1),
("Adriana", "adriana@gmail.com", 1, 7.3),
("Renata", "renata@gmail.com", 3, 9.0),
("Lucca", "lucca@gmail.com", 1, 7.0),
("Fernanda", "fernanda@gmail.com", 2, 6.6),
("Juliana", "juliana@gmail.com", 3, 4.5);
 
 
  -- select que retorne nota maior que 7
 
 SELECT * FROM estudante WHERE nota > 7;
 
 -- select que retorne nota menor que 7
 
 SELECT * FROM  estudante WHERE nota < 7;
 
 -- query de atualização 
UPDATE estudante SET email = "juliana@outlook.com" WHERE id=8;
 
 