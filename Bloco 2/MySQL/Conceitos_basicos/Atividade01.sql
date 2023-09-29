CREATE database db_rhdaempresa;
use db_rhdaempresa;
CREATE table tb_dadosfuncionarios(
id bigint auto_increment primary key,
nome varchar(255),
cargo varchar(255),
departamento varchar(255),
salario decimal(5,00)
);

INSERT INTO tb_dadosfuncionarios (nome, cargo, departamento, salario) VALUES
('João Silva', 'Analista de Marketing', 'Marketing', 1000.00),
('Maria Santos', 'Desenvolvedor Web', 'TI', 1000.00),
('Pedro Oliveira', 'Gerente de Vendas', 'Vendas', 8000.00),
('Ana Costa', 'Analista de Recursos Humanos', 'Recursos Humanos', 5500.00),
('Carlos Fernandes', 'Designer Gráfico', 'Marketing', 4800.00);

select * from tb_dadosfuncionarios where salario > 2000;
select * from tb_dadosfuncionarios where salario < 2000 