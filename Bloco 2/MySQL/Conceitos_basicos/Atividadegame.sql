CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;
CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(50)
    );
    INSERT INTO tb_classes (nome, tipo) VALUES
('Guerreiro', 'Melee'),
('Mago', 'Mágico'),
('Arqueiro', 'Longa Distância'),
('Cavaleiro', 'Melee'),
('Ladrão', 'Furtivo');
CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT,
    poder_defesa INT,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, classe_id) VALUES
('Herói', 2500, 1800, 1),
('Feiticeira', 1900, 1500, 2),
('Arqueira Mestre', 3000, 1200, 3),
('Cavaleiro Real', 2200, 2100, 4),
('Ladrão Astuto', 1800, 1000, 5),
('Espadachim', 2800, 1600, 1),
('Mago das Sombras', 2400, 1300, 2),
('Arqueira Élfica', 2800, 1900, 3);
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';
SELECT p.nome AS nome_personagem, p.poder_ataque, p.poder_defesa, c.nome AS nome_classe
FROM tb_personagens AS p
INNER JOIN tb_classes AS c ON p.classe_id = c.id;
SELECT p.nome AS nome_personagem, p.poder_ataque, p.poder_defesa, c.nome AS nome_classe
FROM tb_personagens AS p
INNER JOIN tb_classes AS c ON p.classe_id = c.id
WHERE c.nome = 'Arqueiro';
    