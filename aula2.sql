/*
  SQL - Aula 2 
  Introdução ao SQL (CRUD)
Agenda de contatos 
  @author Luan Oliveira Santos
*/

use agenda;

-- O comando abaixo exibe as tabelas do banco de dados selecionado
show tables;

/*
            O bloco de código abaixo cria uma tabela 
       int (tipo de dados: numérico inteiro)
       primary key (transforma o campo de dados que aceita uma string de caracteres / (valor )Máximo de caracteres permitidos
       varchar (valor) (tipo de dados que aceita uma string de caracteres / (valor) Máximo de caracteres permitidos
       not null (torns obrigatório o preeenchimento do campo)
       ATENÇÃO! Para excluir uma tabela use o comando 'drop table' seguido do nome da tabela
*/

create table tbcontatos(
id int primary key,
nome varchar(50) not null,
fone varchar(15) not null,
email varchar(50)
);      

show tables;

-- O comando abaixo descreve a tabela
describe tbcontatos;

/**************************CRUD********************************/

/***** Inserindo registros (dados) na tabela (CRUD - Create) *****/

insert into tbcontatos (id,nome,fone,email)
values(1,'Bill Gates','1111-1111','bill@outlook.com');

insert into tbcontatos (id,nome,fone,email)
values(2,'Linus Torvalds','2222-2222','linus@gmail.com');

insert into tbcontatos (id,nome,fone,email)
values(3,'Bruna Marquezine','3333-3333','bruninha@gmail.com');

insert into tbcontatos (id,nome,fone,email)
values(4,'Bruce Dickson','4444-4444','bruce@gmail.com');

insert into tbcontatos (id,nome,fone,email)
values(5,'Tony Stark','5555-5555','ts@gmail.com');
       
/***** Pesquisando dados na tabela (CRUD - Read) *****/

-- Selecionando todos os registros da tabela
select * from tbcontatos;

-- Selecionando registros de acordo com um critério
select * from tbcontatos where id = 2;
select * from tbcontatos where nome = 'Bill Gates';
select * from tbcontatos where nome like 'B%';

-- Selecionar por ordem alfabética (asc ou desc)
select * from tbcontatos order by nome asc;

-- Selecionar campos específicos da tabela
select nome,fone from tbcontatos;

-- Criando 'apelidos' para os camppos da tabela (relatório personalizado)
select nome as contato, fone as telefone from tbcontatos;

/***** Alterando dados na tabela (CRUD - Update) *****/

-- Se o critério (where) for omitido, todos os registros serão alterados
update tbcontatos set nome = 'Willian Gates' where id = 1;
update tbcontatos set email = 'ironmaidem@gmail.com' where id = 4;
update tbcontatos set fone = '9999-1234', email = 'linus@tux.com' where id = 2;
select * from tbcontatos;

/***** Removendo um registro da tabela (CRUD - Delete) *****/

-- Se o critério (where) for omitido, todos os registros serão apagados
delete from tbcontatos where id = 5;
select * from tbcontatos;