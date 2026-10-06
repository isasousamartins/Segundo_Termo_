-- Active: 1788351674777@@127.0.0.1@3306@smartcoffee_dml_isa
USE smartcoffee_dml_isa

--- INSERINDO DADOS NO BD
--- DML: INSERTS, UPDATE 

INSERT INTO cliente (nome,email,telefone,cidade,ativo) VALUES
('Ana Francisca', 'ana2@email.com', '199999990', 'Lençóis Paulista', TRUE),
('Anna Julia', 'anaj@email.com', '199999908', 'Limeira', TRUE),
('Beatriz Barros', 'beatrizb@email.com', '199999904', 'Limeira', TRUE),
('Beatriz Santana', 'beatrizs@email.com', '199999905', 'Limeira', TRUE),
('Bruno Dias', 'bruno2@email.com', '199999906', 'Limeira', TRUE),
('Christopher da Costa', 'christopher@email.com', '199999907', 'Mogi Guaçu', TRUE),
('Davi Guerra', 'davi@email.com', NULL, 'Limeira', TRUE),
('Gabriel Lucio', 'gabriel@email.com', '199999908', 'Limeira', TRUE),
('Gabriela Lima', 'gabriela2@email.com', '199999909', 'Curitiba', TRUE),
('Giovana Santana', 'giovana@email.com', '199999910', 'Piracicaba', FALSE),
('Gustavo Couto', 'gustavo@email.com', '199999910', 'Itapira', FALSE),
('Isabeli Sousa', 'isabeli@email.com', NULL, 'Limeira', TRUE),
('Jacó de Souza', 'jaco@email.com', '199999911', 'Limeira', TRUE),
('João Moreira', 'joao2@email.com', '199999912', 'Limeira', TRUE),
('John Pierre', 'john@email.com', '199999913', 'Cap Haitien', TRUE),
('Jonas David', 'jonas@email.com', '199999914', 'Rio de Janeiro', TRUE),
('Juan Pablo', 'juan@email.com', '199999915', 'Limeirara', TRUE),
('Julia Fernanda', 'julia@email.com', '199999916', 'Limeira', TRUE);

---INSERINDO CAMPOS COM CHAVE ESTRANGEIRA
INSERT INTO produto (nome,preco,ativo,id_categoria) VALUES
('Manteiga Giovana', 14.00,TRUE,5);

INSERT INTO pedido (DATA_PEDIDO, STATUS, valor_total,id_cliente) VALUES
(NOW()),'ABERTO',14.00,118  

SET @pedido = LAST_INSERT_ID();
SELECT @pedido;

-------------------------------------------------

--ATUALIZANDO OU MODIFICANDO DAOS NA BD 
--- EX1 : ATUALIZANDO INFORMAÇÕES INDIVIDUAIS 
UPDATE cliente
SET TELEFONE = '19999999901'
WHERE ID_CLIENTE = 20;

UPDATE cliente
SET ativo = TRUE
where id_cliente = 18;

--- NUNCA, JAMAIS, NEVER ESUQEÇAM DE ULTILIZAR O WHERE

--- REGRA DE OURO 
--- PRIMEIRA ETAPA

SELECT * FROM cliente
WHERE ID_CLIENTE;

-- SEGUNDA ETAPA 
UPDATE cliente
SET ATIVO = FALSE
WHERE ID_CLIENTE =18;

--- EX2: ATUALIZANDO MAIS DO QUE UM CAMPO

UPDATE cliente
SET TELEFONE = '1999999929',
CIDADE = 'Campinas'
WHERE id_cliente = 18;


----  EX3: ATULIZANDO COM CONDICIONAIS

UPDATE produto
SET PRECO = PRECO * 2.50
WHERE ID_CATEGORIA = 1;


--- APAGANDO DADOS
--- EX 1: APAGAR DADOS SEM CONTER INFORMAÇÕES

DELETE FROM cliente;

--- EX 2: APAGAR DADOS COM CONDIÇÕES

DELETE FROM cliente
WHERE ID_CLIENTE = 18

--- EX 3: APGANDO DADOS DE TODA TABELA
TRUNCATE TABLE cliente;

-- EX 4: APAGAR DE FORMA REPRESENTATIVA OU LÓGICA

UPDATE produto
SET ATIVO = FALSEWHERE 
WHERE ID_PRODUTO = 19;

-------------------------------------
-- REALIZANDO PASSOS PARA UMA COMPRA NO SMARTCOFFEE
--- PASSO 1: CADASTRAR UM NOVO CLIENTE

INSERT INTO cliente (nome,email,telefone,cidade, ativo)
('Bruno A','bruno@email.com', '1999123456', 'Piracicaba', TRUE);

SET @cliente = LAST_INSERT_ID ();

--- PASSO 2: CRIAR O PEDIDO 
INSERT INOUT PEDIDO(DATA_PEDIDO, STATUS, VALOR_TOTAL,ID_CLIENTE) VALUES
(NOW(), 'ABERTO', 0.00,10);

--- PASSO 3: INSERIR ITENS NO PEDIDO
INSERT INTO ITEM_PEDIDO (ID_PEDIDO,ID_PRODUTO, QUANTIDADE, PRECO_UNITARIO) VALUES
(@PEDIDO, 4,1,73,13),
(@PEDIDO,11,1,,1.25);

---- PASSO 4: ATUALIZANDO O TOTAL E STATUS
UPDATE pedido
SET VALOR_TOTAL= 84.38,
STATUS = 'PREPARANDO'
WHERE ID_PEDIDO = @PEDIDO;

--- PASSO 5: RESISTRAR PAGAMENTO
UPDATE pedido
SET VALOR_TOTAL PAGAMENTO(ID_PEDIDO, ID_FORMA_PAGAMENTO, VALOR, DATA_PAGAMENTO) VALUES
(@PEDIDO, 1,84.38, NOW());


DELETE FROM PAGAMENTO
WHERE id_PAGAMENTO = 1;


-- CONSULTAR DADOS EM TABELAS BD
--- CONSULTAR TODA A TABELA
SELECT * FROM produto;
-- CONSULTAR INDIVIDUAL POR ID
SELECT * FROM cliente
WHERE id_cliente = 115;