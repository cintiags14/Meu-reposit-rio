use bd;

create table Professor(
id_prof int auto_increment,
nome varchar(80),
primary key (id_prof)
);

create table Aluno(
id_aluno int auto_increment,
nome varchar(80),
notap int not null,
notas int not null,
notat int not null,
media double,
primary key (id_aluno)
);

create table Turma(
id_turma int auto_increment,
id_prof int not null,
id_aluno int not null,
nome varchar(20),
primary key (id_turma),
foreign key (id_prof) references Professor(id_prof),
foreign key (id_aluno) references Aluno(id_aluno)
);

---------------------------------------------------------------------
insert into Professor (nome) values ("Bruna");
insert into Professor (nome) values ("Marta");
insert into Professor (nome) values ("Camila");
insert into Professor (nome) values ("Nilvania");
insert into Professor (nome) values ("Mirái");
----------------------------------------------------------------------
insert into Aluno (nome, notap, notas, notat) values ("Cíntia","80","70","90");
insert into Aluno (nome, notap, notas, notat) values ("Talita","70","30","100");
insert into Aluno (nome, notap, notas, notat) values ("Roberta","80","70","90");
insert into Aluno (nome, notap, notas, notat) values ("Jorge","87","77","98");
insert into Aluno (nome, notap, notas, notat) values ("Matheus","83","50","60");
------------------------------------------------------------------------------------
insert into Turma (nome, id_prof, id_aluno) values ("TurmaA","01","12");
------------------------------------------------------------------------------------

select nome from Aluno where nome like'%a';

create index nome_performance on Aluno (nome); -- nome do index on tabela (coluna)