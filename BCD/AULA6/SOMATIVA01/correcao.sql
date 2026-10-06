
create database OFICINA_ISA;

USE OFICINA_ISA;

drop database OFICINA_ISA;

create table if not exists clientes (
id_clientes int auto_increment primary key,
CPF varchar (14) not null unique,
NOME varchar (60) not null,
TELEFONE VARCHAR(15) not null unique,
ENDERECO varchar(100),
EMAIL VARCHAR(150)
);

create table if not exists funcinario (
id_funcionario int auto_increment primary key,
SALARIO VARCHAR (100) NOT NULL UNIQUE,
NOME varchar (60) not null,
TELEFONE VARCHAR(15) not null unique,
CARGO varchar(100),
CARGA_HORARIA VARCHAR(50) not null unique
);

create table if not exists VEICULOS (
id_VEICULOS int auto_increment primary key,
COR VARCHAR (100),
TIPO varchar (60),
ANO VARCHAR(20) not null unique,
TAMANHO varchar(100),
PLACA VARCHAR(50) not null unique
);

create table if not exists SERVICOS (
id_SERVICOS int auto_increment primary key,
VALOR VARCHAR (100),
DURACAO varchar (60),
ANO VARCHAR(20) not null unique,
TAMANHO varchar(100),
PLACA VARCHAR(50) not null unique
);

create table if not exists PECAS (
id_PECAS int auto_increment primary key,
TIPO VARCHAR (100),
TAMANHO varchar (60),
ESTOQUE VARCHAR(20) not null unique,
QUANTIDADE varchar(100),
NOME VARCHAR(50) 
);

create table if not exists PAGAMENTOS (
id_PAGAMENTO int auto_increment primary key,
FORMA_de_PAGAMENTO VARCHAR (100),
PRECO varchar (60) not null unique,
VALOR VARCHAR(20) not null unique,
HORARIO_PAGAMENTO varchar(100) not null unique,
DATA_PAGAMENTO VARCHAR(50) not null unique
);

create table if not exists FORNECEDORES (
id_FORNECEDORES int auto_increment primary key,
NOME VARCHAR (100),
CNPJ varchar (25) not null unique,
ENDERECO VARCHAR(20) not null unique,
PRODUTO varchar(100),
EMAIL VARCHAR(50) not null unique,
QUANTIDADE_DEPRODUTOS varchar(1000) NOT NULL UNIQUE
);

create table if not exists MARCAS (
id_MARCAS int auto_increment primary key,
NOME VARCHAR (100),
PAIS_FABRICADO varchar (25) not null unique,
SITE_daMARCA VARCHAR(20) not null unique,
TELEFONE VARCHAR(25)
);

create table if not exists MODELO (
id_MODELO int auto_increment primary key,
QUILOMETRAGEM varchar (14) not null unique,
ANO varchar (60) not null,
ANO_DEfabricacao VARCHAR(15) not null unique,
COR varchar(100),
TAMANHO VARCHAR(150)
);

create table if not exists ORDEM_de_SERVICO (
id_ORDEM_de_SERVICO int auto_increment primary key,
OBSERVACOES varchar (60) not null,
valor_do_SERVICO VARCHAR(15) not null unique,
DATA_de_abertura varchar(100),
DATA_de_FECHAMENTO VARCHAR(150)
);






