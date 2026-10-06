--- COMANDO PARA CRIAR BC 
-- 1 
create database academia_isa;
create database IF NOT exists academia_isa;

-- 2 
-- ATUALIZAR SCHEMAS

-- COMANDO PARA ATIVAR BC
USE academia_isa;

-- COMANDO PARA APAGAR BG
drop database academia_isa;

-- APAGAR TABELA CLIENTES
drop table clientes;


-- COMANDO CRIAR TABELA
create table if not exists clientes (
id_clientes int auto_increment primary key,
CPF varchar (14) not null unique,
NOME varchar (60) not null,
TELEFONE VARCHAR(15) not null unique,
ENDERECO varchar(100)
);


drop table funcionario;
-- tabela funcionario
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

create table funcionarios (
id_funcionarios int primary key,
email varchar(225) unique
);

insert into funcionarios (id_funcionarios, emaill)
values (1, 'bruno@senai.com.br');


-- default
-- valor dacimal (5,2) default 0.00,


-- comandos para alterar e vorrigir
-- adicionando um campo (atributo) novo
alter table clientes add email varchar (100);

-- MODIFICAR TIPO DE DADOS OU CAMPOS
ALTER TABLE CLIENTES modify email varchar (150);

-- renomear tabelas
rename table clientes to cliente
ss;

-- excluir atributo 
alter table clientess drop column email;

-- Limpar dados da tabela
truncate table clientes;
-- visualizar tabelas no bc 
show tables;

-- comando para consultar informacoes na table
select * from funcionarios;

insert into clientes (CPF, NOME, TELEFONE, CARGO, TURNO, SALARIO, data_nascimento, status_cliente, data_cadastro)
values('','Isa','123.456.789-01', '');





