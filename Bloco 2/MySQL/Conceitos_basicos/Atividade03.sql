CREATE database db_registroescolar;
use db_ecommerce;
CREATE table tb_escola(
id bigint auto_increment primary key,
secretaria varchar(255),
diretoria varchar(255),
professores varchar(255),
notas varchar(255)
);

INSERT INTO tb_escola (secretaria, diretoria, professores, notas) VALUES
('Secretaria de Administração', 'Diretoria de Ensino', 'Prof. João Silva', '9.0, 8.5, 7.8, 9.2'),
('Secretaria de Finanças', 'Diretoria de Recursos Humanos', 'Prof. Maria Santos', '8.5, 9.0, 8.7, 8.9'),
('Secretaria de Comunicação', 'Diretoria de Tecnologia da Informação', 'Prof. Pedro Oliveira', '7.8, 8.0, 7.5, 8.2'),
('Secretaria de Eventos', 'Diretoria de Marketing', 'Prof. Ana Costa', '9.2, 8.8, 9.0, 8.7'),
('Secretaria de Assuntos Estudantis', 'Diretoria de Planejamento', 'Prof. Carlos Fernandes', '8.0, 7.5, 8.1, 7.9');

select * from tb_escola where notas > 7;
select * from tb_escola where notas < 7