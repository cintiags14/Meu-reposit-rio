create database BD;
use BD;

create table Pessoa(
id int auto_increment not null,
nome varchar (80) not null,
nascimento date not null,
cpf varchar (11) not null,
rg varchar (7) not null,
justificativa varchar (100),
primary key (id)
);

create table Depende(
iddep int auto_increment not null,
PAi varchar(80),
Mae varchar(90),
foreign key (iddep) references Pessoa (id) 
);

select * from Pessoa;

insert into Pessoa (nome,nascimento,cpf,rg,justificativa) values ("Cíntia","1998-12-14","05164742198","5972917","Estudo");

insert into Depende (PAi,Mae) values ("Maria","Francisco");

SELECT Mae
FROM Pessoa
INNER JOIN Depende ON Pessoa.nome = Depende.Mae;

