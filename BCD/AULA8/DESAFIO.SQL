-- ============================================================
-- AULA 08 - ATIVIDADE PRÁTICA DE DML
-- Nome: Isabeli Sousa MArtins
-- Turma: DEVIE 2026 Data: 30/09/2026
-- Base: smartcoffee_dml
-- ============================================================
USE smartcoffee_dml_isa;

-- IMPORTANTE:
-- Para toda questão de UPDATE ou DELETE, escreva primeiro um SELECT
-- com o mesmo WHERE para validar os registros afetados.

-- PARTE A - INSERT

-- 1. Cadastre dois novos clientes com dados diferentes.
INSERT INTO cliente (nome,email,telefone, cidade, ativo) VALUES
('Chico Frederico', 'chiquinho@email.com', '40028922', 'Pintopolis', TRUE),
('Luís Fernando', 'luis@email.com', '12345678', 'Limeira', TRUE);

SELECT * FROM cliente;
-- 2. Cadastre a categoria 'Especiais da Casa'.



-- 3. Localize o id da categoria criada e cadastre três produtos nela.


-- 4. Cadastre um terceiro cliente sem telefone.
INSERT INTO cliente (nome,email,telefone, cidade, ativo) VALUES
('Luís Priscilo', 'priscilinho@email.com', NULL, 'Araraquara', TRUE);


-- 5. Crie um novo pedido para um dos clientes cadastrados.
INSERT INOUT pedido (data_pedido, STATUS, valor_total,id_cliente) VALUES
(NOW(), 'ABERTO', 0.00,10);

-- 6. Use LAST_INSERT_ID() para guardar o id do pedido em @pedido_atividade
--    e insira pelo menos dois itens nesse pedido.


-- PARTE B - UPDATE

-- 7. Corrija o telefone de um dos clientes criados.
-- SELECT de validação:
-- UPDATE:
-- SELECT final:
UPDATE cliente 
SET TELEFONE = '55555555',
WHERE id_cliente = 49;

-- 8. Altere cidade e telefone de outro cliente em um único UPDATE.
UPDATE cliente
set telefone = '676767676767',
CIDADE = 'Piracicaba',
WHERE id_cliente = 48;


-- 9. Aumente em 8% o preço dos produtos da categoria 'Especiais da Casa'.


-- 10. Altere o status do pedido criado para 'PREPARANDO'.
UPDATE pedido
SET VALOR_TOTAL= 84.38,
STATUS = 'PREPARANDO'
WHERE ID_PEDIDO = @PEDIDO;

-- 11. Atualize valor_total do pedido de acordo com os itens cadastrados.
--     Você pode calcular previamente com SELECT SUM(quantidade * preco_unitario).


-- 12. Escolha um dos produtos criados e faça uma exclusão lógica (ativo = FALSE).


-- PARTE C - DELETE

-- 13. Crie um cliente de teste sem pedidos.
--    Depois localize e exclua apenas esse cliente.


-- 14. Tente excluir um cliente da base original que possua pedidos.
--     Deixe o DELETE comentado após o teste e descreva o erro abaixo.
-- Resultado observado:



-- 15. Explique em comentário por que a FK bloqueou a exclusão.
-- Resposta:


-- 16. Crie uma categoria temporária chamada 'Excluir Depois' e remova-a.