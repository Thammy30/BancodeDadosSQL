create database loja;
use loja;

create table loja(
cnpj integer primary key not null,
nome varchar(30),
telefone integer,
endereco varchar(60));

select * from loja;

create table funcionario(
rg integer primary key not null,
nome varchar(60),
cargo varchar(60),
telefone integer);

select * from funcionario;

create table produtos(
id_produto int primary key not null,
nome varchar(60),
valor real,
quantidade integer);

insert into produtos (id_produto,nome,valor,quantidade) 
values
(1,"camisa",39.90,10),
(2,"calça",119.90,20),
(3,"vestido",89.30,15),
(4,"calçados",150.0,17),
(5,"blusa",145.90,13);

select * from produtos;
drop table produtos;

create table cliente(
id_cliente int primary key not null,
nome varchar(60),
telefone integer,
cpf integer);

select * from cliente;

drop database loja;

update produtos set nome = 'camisa' where id_produto = 4;/*Atualizar os valores de uma coluna selecionada*/
delete from produtos where id_produto = 5; /*deleta todos os valores atribuidos referentes ao atributo de referencia "id_produto"*/
alter table produtos add idteste integer; /*ALTER TABLE - USADO PARA ALTERAR AS COLUNAS DA TABELA - adiciona uma coluna à tabela*/
alter table produtos drop idteste; /*exclui uma coluna da tabela*/
describe produtos; /*Descreve a tabela*/
select id_produto from produtos; /*Exibe uma determinada coluna de uma tabela*/
truncate produtos;  /*Excluir todos os valores atribuidos a colunas de uma tabela*/





 

