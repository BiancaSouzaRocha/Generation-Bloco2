CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe (
id_classe INT NOT NULL AUTO_INCREMENT, 
nome VARCHAR (20), 
resistencia VARCHAR (20),
PRIMARY KEY (id_classe)
); 

CREATE TABLE tb_personagem (
id INT NOT NULL AUTO_INCREMENT, 
nickname VARCHAR (20),
ataque INT, 
defesa INT, 
id_pers INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_pers) references tb_classe (id_classe)
);


INSERT INTO tb_classe (nome, resistencia) VALUES 
("Cavaleiro", "Alta"),
("Guerreiro", "Alta"),
("Arqueiro", "Baixa"),
("Caçador", "Baixa"),
("Templário", "Média"); 

SELECT * FROM tb_classe; 

INSERT INTO tb_personagem (nickname, ataque, defesa, id_pers) VALUES 
("Hunter", 1800, 2000, 1),
("Arrow", 1900, 1800, 2),
("Suprem", 2100, 1000, 5),
("ClashforCash", 2200, 925, 5),
("Maxthon", 1925, 2000, 3),
("Cisplatyno", 1400, 1800, 2),
("Brawler", 1600, 2000, 3),
("Cobaltin", 2400, 1000, 4); 


SELECT * FROM tb_personagem; 

SELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagem WHERE nickname LIKE "%C%";

SELECT * FROM tb_personagem INNER JOIN tb_classe on tb_personagem.id_pers = tb_classe.id_classe; 

SELECT tb_personagem.nickname, tb_classe.nome, tb_classe.resistencia FROM tb_personagem INNER JOIN tb_classe on tb_personagem.id_pers = tb_classe.id_classe
	WHERE tb_classe.nome like "%Arqueiro%"; 









