create database redesociais;
use redesociais;

create table usuarios(
 id int not null auto_increment primary key,
nome varchar(80) not null unique,
email varchar (144) not null unique,
data_criacao_conta varchar (10) not null 
);

create table postagem (
id int auto_increment not null primary key,
data_de_criacao varchar(10),
texto varchar(200),
imagem varchar(255) not null,
usuarios_id int not null,
foreign key (usuarios_id) references usuarios (id)
);

create table comentarios (
id_comentarios int auto_increment not null primary key,
texto varchar (200),
data_criacao varchar (10),
postagem_id int not null,
usuarios_id int not null,
foreign key (postagem_id) references postagem (id),
foreign key (usuarios_id) references usuarios (id)
);

create table curtidas (
usuarios_id int not null,
postagem_id int not null,
foreign key (usuarios_id) references usuarios (id),
foreign key (postagem_id) references postagem (id),
primary key (usuarios_id, postagem_id) 
);

-- iniciando tabela de usuarios

insert into usuarios (nome, email, data_criacao_conta) 
values('Roberto', 'Roberto@gmail.com', '25-05-2022');

insert into usuarios (nome, email, data_criacao_conta) 
values('Igor', 'Igor@gmail.com', '25-05-2023');

insert into usuarios (nome, email, data_criacao_conta) 
values('Vitor', 'Vitor@gmail.com', '25-05-2019');

insert into usuarios (nome, email, data_criacao_conta) 
values('Carlos', 'Carlos@hotmail.com', '25-05-2017');

insert into usuarios (nome, email, data_criacao_conta) 
values('Daniel', 'Daniel@hotmail.com', '25-05-2022');

-- iniciando a tabela das postagem

insert into postagem (data_de_criacao, texto, imagem, usuarios_id)
 values ('20-04-2019', 'Eu e o Dog', '', 3);
insert into postagem (data_de_criacao, texto, imagem, usuarios_id)
 values ('20-04-2019', 'Agora no parque', '', 3);
insert into postagem (data_de_criacao, texto, imagem, usuarios_id)
 values ('20-04-2019', 'Corintias', '', 3);
insert into postagem (data_de_criacao, texto, imagem, usuarios_id)
 values ('20-04-2019', 'Papagaio', '', 3);
insert into postagem (data_de_criacao, texto, imagem, usuarios_id)
 values ('20-04-2019', 'Capivara', '', 3);
 
select * from usuarios;

select * from postagem;

select * from comentarios;

select * from curtidas;

