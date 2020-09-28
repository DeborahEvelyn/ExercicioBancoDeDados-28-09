create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;


DROP DATABASE db_cursoDaMinhaVida;



CREATE TABLE tb_categoria(
id_categoria int auto_increment,
frontend varchar (25),
backend varchar (25),
UX varchar (10),
desing varchar (10),
analiseDeDados varchar (25),
primary key (id_categoria)
);

CREATE TABLE tb_produto(
id_produto int auto_increment,
nome varchar (20),
preco decimal (4,2),
tempo int,
nota int,
quantidadeDeVagas int,
primary key (id_produto),
id_categoria int,
constraint fk_chave foreign key (id_categoria) references tb_categoria(id_categoria));

INSERT INTO `db_cursodaminhavida`.`tb_categoria`
(`frontend`,
`backend`,
`UX`,
`desing`,
`analiseDeDados`)
VALUES
('CSS', 'Java', 'Inovacao I', 'Cores', 'Grafico'),
('Angular', 'Node.Js', 'Comportamento', 'Cores', 'introducao'),
('Bootstrap', 'Python', 'Criatividade', 'Cores', 'programacao com dados'),
('HTML', 'C#', 'Inovacao I', 'Humanizacao', 'analise pontual'),
('React', 'C', 'Inovacao I', 'Empreendendorismo', 'logica para dados'),
('JavaScript', 'PHP', 'Inovacao I', 'Marca pessoal', 'interpretacao de dados');

INSERT INTO `db_cursodaminhavida`.`tb_produto`
(`nome`,
`preco`,
`tempo`,
`nota`,
`quantidadeDeVagas`)
VALUES
('basico', 29.90, 90, 4, 40),
('intermdiario', 35.90, 90, 4, 30),
('avancado', 39.90, 90, 4, 40),
('basico', 29.90, 90, 4, 30),
('intermediario', 35.90, 90, 4, 40),
('avancado', 39.90, 90, 4, 30),
('basico', 29.90, 90, 4, 40);

select nome, preco from tb_produto WHERE preco> (select max(50) from tb_produto);
select nome, preco from tb_produto WHERE preco< (select max(50) from tb_produto);

select * from tb_produto WHERE preco between  3 AND 60.00; 

select * from tb_categoria WHERE backend LIKE 'J%';

select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.id_produto;

truncate tb_produto;

SELECT UX FROM tb_categoria
WHERE UX LIKE '%%';
