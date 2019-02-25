use bd;

CREATE TABLE curso (
curso_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
curso_nome VARCHAR(45),
PRIMARY KEY (curso_id)
);


CREATE TABLE aula (
aula_id INT UNSIGNED NOT NULL AUTO_INCREMENT, -- bloquear inserção de valores negativos.
aula_nome VARCHAR(45),
curso_id INT UNSIGNED NOT NULL,
PRIMARY KEY (aula_id),
FOREIGN KEY (curso_id) REFERENCES curso (curso_id)
);


CREATE TABLE pessoat (
pessoa_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
pessoa_nome VARCHAR(45),
PRIMARY KEY (pessoa_id)
);

CREATE TABLE pessoa_has_curso (
pessoa_id INT UNSIGNED NOT NULL,
curso_id INT UNSIGNED NOT NULL,
FOREIGN KEY (pessoa_id) REFERENCES pessoa (pessoa_id),
FOREIGN KEY (curso_id) REFERENCES curso (curso_id)
);

CREATE TABLE pessoa_has_aula (
pessoa_id INT UNSIGNED NOT NULL,
aula_id INT UNSIGNED NOT NULL,
FOREIGN KEY (pessoa_id) REFERENCES pessoa (pessoa_id),
FOREIGN KEY (aula_id) REFERENCES aula (aula_id)
);

insert into curso (curso_nome) values ('Engenharia de Computação');
insert into curso (curso_nome) values ('Engenharia de Software');
insert into curso (curso_nome) values ('Farmácia');
insert into curso (curso_nome) values ('Engenharia de Eletrica');
insert into curso (curso_nome) values ('Engenharia de Mecânica');
insert into curso (curso_nome) values ('Engenharia de Prdução');
insert into curso (curso_nome) values ('Engenharia de Processos');
insert into curso (curso_nome) values ('Engenharia Civil');
-----------------------------------------------------------------------
insert into aula (aula_nome, curso_id) values ('SGBD',0);
insert into aula (aula_nome, curso_id) values ('SGBD',1);
insert into aula (aula_nome, curso_id) values ('Logica',2);
insert into aula (aula_nome, curso_id) values ('Arquitetura',3);

------------------------------------------------------------------------
insert into pessoat (pessoa_nome) values ('Bruna');

------------------------------------------------------------------------
insert into pessoa_has_curso (pessoa_id, curso_id) values (10,11);
insert into pessoa_has_curso (pessoa_id, curso_id) values (1,3);
-----------------------------------------------------------------------

insert into pessoa_has_aula (pessoa_id, aula_id) values (0,1);

desc curso;
select * from curso;

desc pessoat;

-------------------------------------------------------------------------------

update pessoat set pessoa_nome = 'Cíntia Galvão' where pessoa_id = 1;

update aula set aula_nome = 'Programação web' where aula_id = 1;

--------------------------------------------------------------------------------

alter table pessoat modify pessoa_nome varchar(80);
alter table pessoat add column idade tinyint;
alter table curso add column valor_curso int;
alter table curso modify valor_curso double;
insert into curso (valor_curso) values ('800.65');

-------------------------------------------------------------------------------

select curso_nome, count(curso_nome) from curso;
select valor_curso, sum(valor_curso) from curso;

select curso_nome from curso order by curso_nome;

select * from curso order by curso_id;

alter table  curso modify curso_nome varchar(80) default 'Tecnologia da informação';

select * from pessoat p 
join pessoa_has_aula pa 
on p.pessoa_id = pa.aula_id;