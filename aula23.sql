create database catalogo;

create table filme(
id int primary key identity, 
nome varchar(20), 
data_de_lancamento varchar(10), 
duracao int, 
);

create table ator(
id int primary key identity, 
nome varchar(20), 
sobrenome varchar(20), 
);

create table filme_ator (
id int primary key identity, 
id_filme int,
id_ator int,

constraint FK_ator_id foreign key (id_ator) references ator(id), 
constraint FK_filme_id foreign key (id_filme) references filme(id), 
);

insert into filme (nome, data_de_lancamento, duracao)
values 
('Thor: Amor e Trovão', 2022, 120),
('O Homem do Norte', 2022, 137), 
('O Homem nas Trevas', 2016, 88);

insert into ator (nome, sobrenome)
values
('Stephen', 'Lang'),
('Jane', 'Levy'),
('Dylan', 'Minnette'),
('Daniel', 'Zavatto'),
('Natalie', 'Portman'),
('Christian', 'Bale'),
('Chris', 'Hemsworth'),
('Matt', 'Damon'),
('Russel', 'Crowe'),
('Anya', 'Taylor-Joy'),
('Alexander', 'Skarsgard'),
('Willian', 'Defoe'),
('Nicole', 'Kidman'), 
('Ethan', 'Hawke');

select * from filme order by nome asc;

select * from filme order by data_de_lancamento desc;

select * from ator order by nome asc;

