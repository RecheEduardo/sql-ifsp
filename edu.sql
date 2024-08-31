create database myDatabase;
use myDatabase;

create table nomes(
	id int auto_increment primary key,
    email varchar(255) not null unique,
    nome varchar(255) not null
);

select * from nomes;
insert into nomes(email,nome) values ('eduardoreche@gmail.com' , 'EduReche');

create table if not exists myProducts(
	id int auto_increment primary key,
    produto varchar(255) not null,
    cor varchar(30) not null,
    tamanho varchar(5) not null,
    dataDaCompra timestamp default current_timestamp
);

insert into myProducts(produto , cor , tamanho) values ( UPPER('calca jeans') , UPPER('azul') , UPPER('gg') );
select * from myProducts;
DELETE FROM myProducts WHERE id = 1;

drop table myProducts;


create table if not exists tenis(
	id int auto_increment primary key,
    tenis varchar(255),
    tamanho enum("32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48") not null
);

insert into tenis(tenis, tamanho) values ('Air Force 1' ,'31');

select * from tenis; 
