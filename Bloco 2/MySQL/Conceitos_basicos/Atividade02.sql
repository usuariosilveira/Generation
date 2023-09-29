CREATE database db_ecommerce;
use db_ecommerce;
CREATE table tb_servicos(
id bigint auto_increment primary key,
divulgacao varchar(255),
site varchar(255),
acessorios varchar(255),
valores varchar(255)
);

INSERT INTO tb_servicos (divulgacao, site, acessorios, valores) VALUES
('Anúncio em redes sociais', 'www.exemplo.com/servico1', 'Suporte 24 horas', 'R$ 99.99'),
('E-mail marketing', 'www.exemplo.com/servico2', 'Relatórios mensais', 'R$ 149.99'),
('SEO para mecanismos de busca', 'www.exemplo.com/servico3', 'Análise de concorrentes', 'R$ 199.99'),
('Desenvolvimento de aplicativos móveis', 'www.exemplo.com/servico4', 'Testes de usabilidade', 'R$ 299.99'),
('Consultoria em estratégia digital', 'www.exemplo.com/servico5', 'Relatório de análise SWOT', 'R$ 249.99');

select * from tb_servicos where valores > 500;
select * from tb_servicos where valores < 500