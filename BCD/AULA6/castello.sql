create database castellovers;

use castellovers;

create table if not exists alunos(
    id_aluno BIGINT AUTO_INCREMENT PRIMARY key,
    nome VARCHAR(60) NOT NULL,
    cpf CHAR(14) NOT NULL UNIQUE,
    status_aluno enum('ativo', 'inativo', 'concluido') DEFAULT 'ativo',
    data_cadastro timestamp DEFAULT CURRENT_TIMESTAMP
);

-- VISUALIZAR TODOS OS BD
SHOW SCHEMAS;

-- VISUALIZAR TABELAS DO BD

SHOW TABLES;

-- DESCRIÇÃO DE ATRIBUTOS DA TABELA ALUNO
DESCRIBE ALUNOS

--  APAGAR BD
DROP DATABASE CASTELLOVERS;
