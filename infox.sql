-- A linha abaixo cria um banco de dados
create database dbinfox;

-- A linha abaixo escolhe o banco de dados a ser utilizado 
use dbinfox;

-- O bloco de instruções abaixo cria uma tabela
create table tbusuarios(
iduser int primary key, 
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);

-- O comando abaixo descreve a tabela 
describe tbusuarios;

-- A linha abaixo insere dados na tabela (CRUD)
-- create -> insert
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(1,'Luan Oliveira','1111-1111','luansantos','123456');

-- A linha abaixo exibe os dados da tabela (CRUD)
-- read -> select
select * from tbusuarios;

insert into tbusuarios(iduser,usuario,fone,login,senha)
values(2,'Administrador','2222-2222','admin','admin');
insert into tbusuarios(iduser,usuario,fone,login,senha)
values(3,'Bill Gates','3333-3333','bill','123456');

select * from tbusuarios;

-- A linha abaixo modifica dados na tabela (CRUD)
-- update -> update
update tbusuarios set fone='8888-8888' where iduser=2;

-- A linha abaixo apaga um registro da tabela (CRUD)
-- delete -> delete
delete from tbusuarios where iduser=3;

select * from tbusuarios;

create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(50) not null,
emailcli varchar(50)
);

describe tbclientes;

insert into tbclientes(nomecli,endcli,fonecli,emailcli)
values('Linus Torvalds','Rua Tux','9999-9999','linus@linux.com');

select * from tbclientes;

