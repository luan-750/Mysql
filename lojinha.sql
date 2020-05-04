/* 
Projeto Lojinha
@author Luan Oliveira Santos
*/

create database dblojinha;

use dblojinha;

create table tbclientes(
idcli int primary key auto_increment,
nome varchar(50) not null,
fone varchar(15) not null,
cpf varchar(15) not null
);
	
describe tbclientes;

insert into tbclientes(nome,fone,cpf)
values('Luan','11111-1111','12345678923');

insert into tbclientes(nome,fone,cpf)
values('Lucas','22222-2222','53279548625');

insert into tbclientes(nome,fone,cpf)
values('Gabriel','33333-3333','03259412584');

insert into tbclientes(nome,fone,cpf)
values('Ricardo','44444-4444','32605108792');

insert into tbclientes(nome,fone,cpf)
values('Pedro','55555-5555','15318703449');

select*from tbclientes;

create table tbprodutos(
idpro int primary key auto_increment,
produto varchar(50) not null,
valor decimal(10,2),
quantidade int not null
);

describe tbprodutos;

insert into tbprodutos(produto,valor,quantidade)
values('Agua',2.00,20);

insert into tbprodutos(produto,valor,quantidade)
values('Refrigerante',4.50,15);

insert into tbprodutos(produto,valor,quantidade)
values('Biscoito',2.50,25);

insert into tbprodutos(produto,valor,quantidade)
values('Miojo',1.00,30);

insert into tbprodutos(produto,valor,quantidade)
values('Chiclete',3.00,10);

insert into tbprodutos(produto,valor,quantidade)
values('Salgadinho',3.50,15);

select*from tbprodutos;

create table tbpedidos(
idpedi int primary key auto_increment,
dataped timestamp default current_timestamp,
idcli int not null,
idpro int not null,
foreign key(idcli) references tbclientes(idcli),
foreign key(idpro) references tbprodutos(idpro)
);

describe tbpedidos;

insert into tbpedidos(idcli,idpro)
values (3,5);

insert into tbpedidos(idcli,idpro)
values (2,4);

insert into tbpedidos(idcli,idpro)
values (1,3);

insert into tbpedidos(idcli,idpro)
values (4,1);

insert into tbpedidos(idcli,idpro)
values (6,6);

select*from tbpedidos;

select*from tbpedidos
inner join tbclientes
on tbpedidos.idcli = tbclientes.idcli
inner join tbprodutos
on tbpedidos.idpro = tbprodutos.idpro;

select 
P.idpedi as Pedido,
C.nome as Cliente,
V.produto, Valor
from tbpedidos as P
inner join tbclientes as C 
on (P.idcli = C.idcli)
inner join tbprodutos as V 
on (P.idpro = V.idpro);

select sum(valor) as Total from tbprodutos;


