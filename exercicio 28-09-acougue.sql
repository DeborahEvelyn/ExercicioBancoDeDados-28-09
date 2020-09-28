DROP DATABASE db_cidade_das_carnes;
CREATE DATABASE db_cidade_das_carnes;


USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
id_categoria int auto_increment,
peixes varchar(20),
aves varchar(20),
frios varchar(20),
primary key (id_categoria)
);

CREATE TABLE tb_produto (
id_produto int auto_increment,
nome varchar (20),
peso decimal (4,1),
preco decimal (4,2),
marca varchar (55),
validade varchar (20),
produto_ativo boolean,
primary key (id_produto),
id_categoria int,
constraint fk_chave foreign key (id_categoria) references tb_categoria(id_categoria));


INSERT INTO `db_cidade_das_carnes`.`tb_categoria`
(`peixes`,
`aves`,
`frios`)
VALUES
('salmao', 'file de frango', 'presunto'),
('sardinha', 'asinha', 'queijo'),
('tilapia', 'peito de frango', 'salame'),
('bacalhau', 'coracao', 'peito de peru'),
('atum', 'sobrecoxa', 'queijo branco');


INSERT INTO `db_cidade_das_carnes`.`tb_produto`
(`nome`,
`peso`,
`preco`,
`marca`,
`validade`,
`produto_ativo`
)
VALUES
('Premium', 1.00, 9.90, 'Friboy', '15 dias', 'True'),
('Standart', 1.00, 10.99, 'Alpark', '10 dias', 'True'),
('Condast', 1.00, 15.90, 'Friboy', '15 dias', 'True'),
('Standart', 1.00, 4.90, 'Alpark', '10 dias', 'True'),
('Premium', 1.00, 7.90, 'Friboy', '15 dias', 'True'),
('Condast', 1.00, 8.90, 'Alpark', '10 dias', 'True'),
('Premium', 1.00, 23.90, 'Friboy', '15 dias', 'True'),
('Standart', 1.00, 11.90, 'Alpark', '10 dias', 'True');

select codigo, marca, preco from tb_produto WHERE preco> (select max(50) from tb_produto);
select codigo, marca, preco from tb_produto WHERE preco< (select max(50) from tb_produto);

select * from tb_produto WHERE preco between  3 AND 60.00; 

select * from tb_produto WHERE nome LIKE 'C%';

select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.id_produto;

select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.id_produto
where tb_produto.nome LIKE '%Premium%';

truncate tb_produto;

SELECT nome FROM tb_produto
WHERE nome LIKE '%%';




