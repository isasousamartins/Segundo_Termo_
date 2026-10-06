-- PROJETO SMARTCOFE

create database SMARTCOFFE_ISA;

use smartcoffee_isa;
drop database smartcoffe_isa;

create table if not exists clientes (
id_clientes int auto_increment primary key,
CPF varchar (14) not null unique,
NOME varchar (60) not null,
TELEFONE VARCHAR(15) not null unique,
ENDERECO varchar(100)
);

create table funcionario (
id_funcionario int auto_increment primary key,
CPF varchar (14) not null unique,
NOME varchar (60) not null,
TELEFONE VARCHAR(15) not null unique,
CARGO VARCHAR (30) NOT NULL,
TURNO varchar(15) NOT NULL,
SALARIO varchar(20) NOT NULL UNIQUE,
data_nascimento date not null,
status_cliente enum ('Pendente', 'ativo', 'inativo') default "ativo",
data_cadastro timestamp default current_timestamp
);

create table Produtos (
id_produtos  int auto_increment primary key,
NOME varchar(60) not null unique,
TIPO varchar(100) not null unique,
);

create table pagamentos (
id_Estoque int auto_increment primary key,
cartao varchar (100) not null unique,
);


CREATE TABLE pedidos (
id_pedido INT AUTO_INCREMENT PRIMARY KEY,
data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
status_pedido ENUM,
);
    



