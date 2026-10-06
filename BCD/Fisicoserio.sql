-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE PEDIDOS+PAGAMENTOS (
DATA_HORA Texto(1),
TIPO_PEDIDO Texto(1),
id_pedidos Texto(1),
STATUS varchar (50),
VALOR_TOTAL Texto(1),
ID_PAGAMENTOS Texto(1),
valor_pago Texto(1),
data_hora_pagamento Texto(1),
status_pagamento Texto(1),
pix Texto(1),
cartao Texto(1),
dinheiro Texto(1),
PRIMARY KEY(id_pedidos,ID_PAGAMENTOS)
)

CREATE TABLE FUNCIONARIOS (
id_funcionaris Texto(1) PRIMARY KEY,
CARGA_HORARIA Texto(1),
NOME varchar(100) not null,
SALARIO Texto(1),
CARGO varchar (50),
id_pedidos Texto(1),
FOREIGN KEY(/*erro: ??*/) REFERENCES PEDIDOS+PAGAMENTOS (id_pedidos,ID_PAGAMENTOS)
)

CREATE TABLE CLIENTE (
ID_CLIENTE Texto(1) PRIMARY KEY,
data_cadastro Texto(1),
NOME varchar(100)NOT Null,
ENDEREÇO Texto(1),
EMAIL vaarchar (150) not null,
CPF varcha (40)
)

CREATE TABLE PRODUTOS (
NOME Texto(1),
id_produtos Texto(1) PRIMARY KEY,
CATEGORIA Texto(1),
PRECO_UNITARIO Texto(1),
presencial Texto(1),
delivery Texto(1)
)

CREATE TABLE ESTOQUE (
ID_insumo Texto(1) PRIMARY KEY,
nome_insumo Texto(1),
quantidade_atual Texto(1),
unidade_media Texto(1),
quantidade_minima Texto(1)
)

CREATE TABLE DELIVERY (
id_delivery Texto(1) PRIMARY KEY,
endereço_entrega Texto(1),
taxa_entrega Texto(1),
status_entrega Texto(1),
data_hora_saida Texto(1),
id_pedidos Texto(1),
ID_PAGAMENTOS Texto(1),
FOREIGN KEY(ID_PAGAMENTOS,,) REFERENCES PEDIDOS+PAGAMENTOS (id_pedidos,ID_PAGAMENTOS)
)

CREATE TABLE PROGRAMA_FINALIDADE (
ID_FIDELIDADE Texto(1) PRIMARY KEY,
saldo_pontos Texto(1),
data_hora_saida Texto(1)
)

CREATE TABLE REALIZA (
ID_CLIENTE Texto(1),
id_pedidos Texto(1),
FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE (ID_CLIENTE),
FOREIGN KEY(/*erro: ??*/) REFERENCES PEDIDOS+PAGAMENTOS (id_pedidos,ID_PAGAMENTOS)
)

CREATE TABLE CONTEM (
id_produtos Texto(1),
id_pedidos Texto(1),
ID_PAGAMENTOS Texto(1),
FOREIGN KEY(id_produtos) REFERENCES PRODUTOS (id_produtos),
FOREIGN KEY(ID_PAGAMENTOS,,) REFERENCES PEDIDOS+PAGAMENTOS (id_pedidos,ID_PAGAMENTOS)
)

CREATE TABLE ENTREGA (
id_delivery Texto(1),
id_funcionaris Texto(1),
FOREIGN KEY(id_delivery) REFERENCES DELIVERY (id_delivery),
FOREIGN KEY(id_funcionaris) REFERENCES FUNCIONARIOS (id_funcionaris)
)

CREATE TABLE CONSOME (
ID_insumo Texto(1),
id_produtos Texto(1),
FOREIGN KEY(ID_insumo) REFERENCES ESTOQUE (ID_insumo),
FOREIGN KEY(id_produtos) REFERENCES PRODUTOS (id_produtos)
)

CREATE TABLE PARTICIPA (
ID_CLIENTE Texto(1),
ID_FIDELIDADE Texto(1),
FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE (ID_CLIENTE)/*falha: chave estrangeira*/
)

