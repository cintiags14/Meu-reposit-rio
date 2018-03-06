create table produto(
	id serial primary key not null,
	nome varchar (25), 
	descricao varchar (25) not null,
	preco int not null,
	check (preco> 0)
);

create table analista_de_teste(
	cpf bigint primary key not null,
	nome_do_analista varchar (30) not null
); 

select nome, descricao, preco from produto

select * from produto

select "nome da coluna" from "nome da tabela" where "codição de pesquisa"