create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;


DROP DATABASE db_construindo_a_nossa_vida;



CREATE TABLE tb_categoria(
id_categoria int auto_increment,
casa varchar (55),
jardim varchar (55),
cozinha varchar (55),
banheiro varchar (55),
quarto varchar (55),
primary key (id_categoria)
);

CREATE TABLE tb_produto(
id_produto int auto_increment,
nome varchar (20),
preco decimal (4,2),
marca varchar (55),
cor varchar (20),
produto_ativo boolean,
primary key (id_produto),
id_categoria int,
constraint fk_chave foreign key (id_categoria) references tb_categoria(id_categoria));

INSERT INTO `db_construindo_a_nossa_vida`.`tb_categoria`
(`casa`,
`jardim`,
`cozinha`,
`banheiro`,
`quarto`)
VALUES
('cimento', 'grama sintetica', 'armario', 'vaso', 'janela'),
('gesso', 'pá', 'torneira', 'pia', 'quadro'),
('pedras', 'vaso de planta', 'gabinete', 'tapete', 'cortina'),
('tijolo', 'piscina', 'torneira da cozinha', 'toalha', 'travesseiro'),
('fios eletricos', 'lampadas', 'torneira', 'armario do banheiro', 'coberta'),
('vidro', 'cercado', 'organizador de pia', 'porta sabão', 'guarda-roupa');



INSERT INTO `db_construindo_a_nossa_vida`.`tb_produto`
(`nome`,
`preco`,
`marca`,
`cor`,
`produto_ativo`)
VALUES
('Carthi', 23.90, 'Leroy', 'cinza', 'Ativo'),
('Top Line', 11.90, 'Leroy', 'branco', 'Ativo'),
('Lenox', 9.90, 'Leroy', 'bege', 'Ativo'),
('Prime', 20.90, 'Leroy', 'amarelo', 'Ativo'),
('Arthemes', 15.90, 'Leroy', 'vermelho', 'Ativo'),
('Queen', 7.90, 'Leroy', 'marrom', 'Ativo'),
('Flamingo', 51.90, 'Leroy', 'dourado', 'Ativo'),
('Rivieri', 18.90, 'Leroy', 'roxo', 'Ativo');

select nome, marca, preco from tb_produto WHERE preco> (select max(50) from tb_produto);
select nome, marca, preco from tb_produto WHERE preco< (select max(50) from tb_produto);

select * from tb_produto WHERE preco between  3 AND 60.00; 

select * from tb_produto WHERE nome LIKE 'C%';

select * from tb_categoria inner join tb_produto on tb_categoria.id_categoria = tb_produto.id_produto;

truncate tb_produto;

SELECT casa FROM tb_categoria
WHERE casa LIKE '%%';
