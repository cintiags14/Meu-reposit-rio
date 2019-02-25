use bd;

create table COMPRAS (
id int auto_increment not null,
valor double,
data date,
observacoes varchar(255),
recebido boolean,
primary key (id)
);

------------------------------------------------------------------------------------------------------------
insert into COMPRAS (valor, data, observacoes, recebido) values (200, '2008-02-19', 'MATERIAL ESCOLAR', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (3500, '2008-05-21', 'TELEVISAO', 0);
insert into COMPRAS (valor, data, observacoes, recebido) values (1576.40, '2008-04-30', 'MATERIAL DE CONSTRUCAO', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (163.45, '2008-12-15', 'PIZZA PRA FAMILIA', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (4780.0, '2009-01-23', 'SALA DE ESTAR', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (392.15, '2009-03-03', 'QUARTOS', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (1203., '2009-03-18', 'QUARTOS', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (402.90, '2009-03-21', 'COPA', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (54.98, '2009-04-12', 'LANCHONETE', 0);
insert into COMPRAS (valor, data, observacoes, recebido) values (12.34, '2009-05-23', 'LANCHONETE', 0);
insert into COMPRAS (valor, data, observacoes, recebido) values (78.65, '2009-12-04', 'LANCHONETE', 0);
insert into COMPRAS (valor, data, observacoes, recebido) values (12.39, '2009-01-06', 'SORVETE NO PARQUE', 0);
insert into COMPRAS (valor, data, observacoes, recebido) values (98.12, '2009-07-09', 'HOPI HARI', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (2498.0, '2009-01-12', 'COMPRAS DE JANEIRO', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (3212.4, '2009-11-13', 'COMPRAS DO MES', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (223.09, '2009-12-17', 'COMPRAS DE NATAL', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (768.90, '2009-01-16', 'FESTA', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (827.5, '2010-01-09', 'FESTA', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (12.0, '2010-02-19', 'SALGADO NO AEROPORTO', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (678.43, '2010-05-21', 'PASSAGEM PRA BAHIA', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (10937.12, '2010-04-30', 'CARNAVAL EM CANCUN', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (1501.0, '2010-06-22', 'PRESENTE DA SOGRA', 0);
insert into COMPRAS (valor, data, observacoes, recebido) values (1709.0, '2010-08-25', 'PARCELA DA CASA', 0);
insert into COMPRAS (valor, data, observacoes, recebido) values (567.09, '2010-09-25', 'PARCELA DO CARRO', 0);
insert into COMPRAS (valor, data, observacoes, recebido) values (631.53, '2010-10-12', 'IPTU', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (909.11, '2010-02-11', 'IPVA', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (768.18, '2010-04-10', 'GASOLINA VIAGEM PORTO ALEGRE', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (434, '2010-04-01', 'RODEIO INTERIOR DE SAO PAULO', 0);
insert into COMPRAS (valor, data, observacoes, recebido) values (115.90, '2010-06-12', 'DIA DOS NAMORADOS', 0);
insert into COMPRAS (valor, data, observacoes, recebido) values (98, '2010-10-12', 'DIA DAS CRIANÇAS', 0);
insert into COMPRAS (valor, data, observacoes, recebido) values (253.7, '2010-12-20', 'NATAL - PRESENTES', 0);
insert into COMPRAS (valor, data, observacoes, recebido) values (370.15, '2010-12-25', 'COMPRAS DE NATAL', 0);
insert into COMPRAS (valor, data, observacoes, recebido) values (32.09, '2011-07-02', 'LANCHONETE', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (954.12, '2011-11-03', 'SHOW DA IVETE SANGALO', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (98.7, '2011-02-07', 'LANCHONETE', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (213.5, '2011-09-25', 'ROUPAS', 0);
insert into COMPRAS (valor, data, observacoes, recebido) values (1245.2, '2011-10-17', 'ROUPAS', 0);
insert into COMPRAS (valor, data, observacoes, recebido) values (23.78, '2011-12-18', 'LANCHONETE DO ZÉ', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (576.12, '2011-09-13', 'SAPATOS', 1);
insert into COMPRAS (valor, data, observacoes, recebido) values (12.34, '2011-07-19', 'CANETAS', 0);
insert into COMPRAS (valor, data, observacoes, recebido) values (87.43, '2011-05-10', 'GRAVATA', 0);
insert into COMPRAS (valor, data, observacoes, recebido) values (887.66, '2011-02-02', 'PRESENTE PARA O FILHAO', 1);

update COMPRAS set valor = 100, data = '2019-01-27', observacoes = 'Material da Faculdade' where id = 1;

select * from COMPRAS where id = 1;

delete from COMPRAS WHERE valor = 98.7;


select * from COMPRAS where valor between 200 and 700;  -- betwen 

describe COMPRAS; --  estrutura da tabela e não os dados inseridos

alter table COMPRAS modify observacoes varchar(255) not null;

update COMPRAS set observacoes = 'Presente de natal' where data = '2011-02-02';

select * from COMPRAS;
alter table COMPRAS modify recebido boolean default 0;

insert into COMPRAS (valor, data, observacoes) values (887.66, '2011-02-02', 'Supresa');

select * from COMPRAS where observacoes = 'Supresa';

alter table COMPRAS add column forma_pag enum ('Cartão','Boleto'); -- emum valor restrito

insert into COMPRAS (valor, data, observacoes, forma_pag) values (887.66, '2011-02-02', 'Aniversário do filho', 'Boleto');

select * from COMPRAS where valor = 887.66;
update COMPRAS set forma_pag = 'Cartão' where forma_pag is null;

select * from COMPRAS;

select sum(valor) from COMPRAS where valor> 50; -- soma

select count(valor) from COMPRAS where data> 2009-05-23; -- conta quantos tem

select sum(valor) as soma, count(valor) as contagem from COMPRAS where data > 2011-07-02;

select recebido, sum(valor) as SOMA from COMPRAS group by recebido; -- agrupar por recebido
 
 select * from COMPRAS order by month(data), year(data);
 
 select avg(valor) from COMPRAS where data < 2009-05-12; -- média
 select forma_pag, sum(valor) from COMPRAS where data < '2010-10-10' group by forma_pag;
 
 select recebido, count(valor) from COMPRAS  where data < '2009-05-12' and recebido = true;

 select forma_pag, sum(valor) from COMPRAS where recebido = true or recebido = false group by forma_pag;
 
 create table compradores(
 id int auto_increment not null,
 nome varchar(80) not null,
 endereço varchar(50) not null,
 telefone varchar(20),
 primary key (id)
 );
 
 insert into compradores (nome,endereço,telefone) values ('cintia','Rua manaus','62 99999998');
  insert into compradores (nome,endereço,telefone) values ('Jose','Rua Bela vista','62 9222222222');
insert into compradores (nome,endereço,telefone) values ('Jose roberto','Rua Bela vista','62 9222222222');
insert into compradores (nome,endereço,telefone) values ('Jose paulo','Rua Bela vista','62 9222222222');
  show tables; -- mostrar tabelas
  
  alter table COMPRAS add column compradores_id int;
  update COMPRAS set compradores_id = 1 where valor >1;
  
  desc COMPRAS;
  
  SELECT observacoes,valor, nome from COMPRAS join compradores on COMPRAS.compradores_id = compradores.id; -- (Depois do igual 'tabela2.pk')
  
  alter table COMPRAS add foreign key (compradores_id) references compradores(id);  -- falando que a tabela possui uma chave estrangeira.
  
  select nome, valor from COMPRAS join compradores on COMPRAS.compradores_id = compradores.id where data < '2010-08-09'; -- 
  
  select * from COMPRAS join compradores on COMPRAS.compradores_id = compradores.id=1;
  
-- select.* COMPRAS FROM COMPRAS JOIN COMPRADORES ON COMPRAS.compradores_id = compradores.id WHERE nome LIKE 'paulo%'; -- select. * (todas table)
  select nome, sum(valor) from COMPRAS join compradores on COMPRAS.compradores_id = compradores.id;
  
  
  select * from COMPRAS where valor>100 and forma_pag = 'Cartão';
  
  select o.observacoes, v.valor from COMPRAS;
  
  select observacoes,valor from COMPRAS as c;
  
  -- select a.nome from aluno a where not exists (select m.id from matricula m where m.aluno_id = a.id);
  -- order by desc (Ordem decrecente)
  
  -- create index nome_performance on Aluno (nome); -- nome do index on tabela (coluna

  