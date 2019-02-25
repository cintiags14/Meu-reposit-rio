/* empregados, professores e alunos. Um empregado (código, nome, cpf, telefone, data de nascimento, salario). 
Um professor (código, nome, telefone, cpf, titulação) está lotado em um curso (codCurso, nome, bloco, sala, telefone). 
Um aluno (código, cpf, nome, telefone) frequenta um curso da instituição. Um empregado poderá atuar como docente ou ser aluno na instituição.

3) Pretende-se desenvolver um sistema para a empresa Sol da Meia-noite. Sabe-se que:
a) Um funcionário (cod_F, nome_F, telefone e dt_Nasc) está lotado em um departamento (cod_Dp, nome_Dp,telenone_Dp).
 b) Todos os departamentos possuem um gerente.
 c) Todo empregado é supervisionado por um empregado-supervisor, exceto o próprio supervisor.*/

use bd;

LOCK TABLES departamento write; 

create table funcionario(
cod_F int auto_increment,
nome_F varchar(80),
telefone tinyint,
dt_Nasc date,
primary key (cod_F) 
);

create table departamento(
cod_Dp int auto_increment,
nome_Dp varchar(80),
telefone tinyint,
primary key (cod_Dp)
);

alter table departamento add column funcionario_id int;

update departamento set funcionario_id=1 where funcionario_id;
alter table funcionario modify telefone varchar(20);

desc departamento;

alter table funcionario add column func_supervisor boolean;

insert into funcionario (nome_F,telefone,dt_Nasc) values ('Joaquim','6299999999','2009-02-02');
insert into funcionario (nome_F,telefone,dt_Nasc) values ('Mateus','633999999','2010-02-02');
insert into funcionario (nome_F,telefone,dt_Nasc) values ('Bento','629779999','2012-02-02');
insert into funcionario (nome_F,telefone,dt_Nasc) values ('Carlos','6293399999','2021-02-02');
insert into funcionario (nome_F,telefone,dt_Nasc) values ('Marcos','6299999999','1998-02-02');
insert into funcionario (nome_F,telefone,dt_Nasc) values ('Andre','62222299','2009-05-02');
insert into funcionario (nome_F,telefone,dt_Nasc) values ('Weder','6299999999','2009-02-02');
insert into funcionario (nome_F,telefone,dt_Nasc) values ('Paulo','62999555999','2022-02-02');
insert into funcionario (nome_F,telefone,dt_Nasc) values ('Rodrigo','6299999999','2019-02-02');
insert into funcionario (nome_F,telefone,dt_Nasc) values ('Lucas','6299555999','2009-02-12');
insert into funcionario (nome_F,telefone,dt_Nasc,fun_supervisor) values ('Lucas','6299555999','2009-02-12',true);
select * from funcionario;

alter table funcionario modify func_supervisor boolean;
desc funcionario;
alter table funcionario add column id_super int;

alter table funcionario add foreign key (id_super) references departamento(cod_Dp);

update funcionario set fun_supervisor = true;

alter table funcionario drop column func_supervisor;

update funcionario set nome_F = 'Lucas matos' where nome_F = 'Lucas';

select nome_F from funcionario where nome_F like'%mota';

select nome_F from funcionario where nome_F like 'Paulo%';

select * from funcionario where nome_F like '%mota' order by nome_F limit 0, 2; -- limit 0, 2 (dois primeiros)

select * from funcionario where dt_Nasc > 2009-02-02 order by month(dt_Nasc), year(dt_Nasc);

