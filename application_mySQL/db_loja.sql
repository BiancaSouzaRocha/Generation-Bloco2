-- Criar Banco de dados

CREATE DATABASE loja; 

 -- Usar banco de dados para execultar as Querys abaixo
 USE loja;
 
 -- Criando a tabela
 CREATE TABLE produtos (
 id INT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR (20) not NULL, 
 marca VARCHAR (20) not NULL, 
 categoria VARCHAR (20),
 cor VARCHAR (20),
 preco DECIMAL(8,2)

 ); 
 
 SELECT * FROM produtos;
 
 -- Inserir valores na tabela funcionarios
 
 INSERT INTO produtos (nome, marca, categoria, cor, preco) VALUES 
("Notebook", "Acer", "Informática", "Branco", 4200.80), 
("Celular", "Apple", "Telefonia", "Preto", 500),															
("Cooktop", "Eletrolux", "Eletro", "Preto", 498.50),
("Microondas", "Consul", "Eletrodoméstico", "Inox", 579.00),
("Cafeteira", "Philco", "Eletroportáteis", "Inox", 239.90),
("Liquidificador", "Mondial", "Eletroportáteis", "Branco", 141.30),
("Ventilador", "Britânia", "Eletroportáteis", "Preto", 389.90),
("Ferro", "Arno", "Eletroportáteis", "Azul e Preto", 199.90);
 
 -- select que retorne preço maior que 500
 
 SELECT * FROM produtos WHERE preco > 500;
 
 -- select que retorne preço menor que 500
 
 SELECT * FROM produtos WHERE preco < 500;
 
 -- query de atualização 
UPDATE produtos SET categoria = "Eletrodoméstico" WHERE id=3;
UPDATE produtos SET nome = "Ferro de Passar" WHERE id=8;
 
 