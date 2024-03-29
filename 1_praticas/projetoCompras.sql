CREATE DATABASE GASMANAGER;

USE GASMANAGER;

CREATE TABLE CLIENTE(
    ID INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(100) NOT NULL
);

CREATE TABLE ENDERECO(
    ID_ENDERECO INT PRIMARY KEY AUTO_INCREMENT,
    BAIRRO VARCHAR(100) NOT NULL,
    RUA VARCHAR(100) NOT NULL,
    NUMERO VARCHAR(10) NOT NULL,
    REFERENCIA VARCHAR(100),
    ID_CLIENTE INT,
    FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(ID)
);

CREATE TABLE TELEFONE(
    ID_TELEFONE INT PRIMARY KEY AUTO_INCREMENT,
    TIPO_TELEFONE CHAR(3) NOT NULL,
    NUMERO VARCHAR(20) NOT NULL,
    ID_CLIENTE INT,
    FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(ID)
);

CREATE TABLE PEDIDO(
    ID_PEDIDO INT PRIMARY KEY AUTO_INCREMENT,
    VALOR_TOTAL DECIMAL(10,2) NOT NULL,
    DATA_PEDIDO DATETIME NOT NULL,
    ID_CLIENTE INT,
    FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(ID)
);

CREATE TABLE ITEM_PEDIDO (
    ID_ITEM_PEDIDO INT PRIMARY KEY AUTO_INCREMENT,
    QTD_ITEM INT NOT NULL,
    STATUS_PAGAMENTO VARCHAR(50) NOT NULL,
    ID_PEDIDO INT,
    ID_ITEM INT,
    FOREIGN KEY (ID_PEDIDO) REFERENCES PEDIDO(ID_PEDIDO),
    FOREIGN KEY (ID_ITEM) REFERENCES ITEM(ID_ITEM)
);

CREATE TABLE ITEM(
    ID_ITEM INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(100) NOT NULL,
    VALOR_UNITARIO DOUBLE(10,2) NOT NULL
);

INSERT INTO CLIENTE (NOME) VALUES
('Ana Julia Teodoro dos Santos'),
('Lucas Gonçalvez'),
('Carlos Santos');

INSERT INTO ENDERECO (BAIRRO, RUA, NUMERO, REFERENCIA, ID_CLIENTE) VALUES
('Centro', 'Rua das Flores', '100', 'Próximo ao mercado', 1),
('Bairro Novo', 'Av. Principal', '500', 'Casa Amarela', 2),
('Jardim Botânico', 'Rua das Palmeiras', '50', 'Próximo à praça', 3);

INSERT INTO TELEFONE (TIPO_TELEFONE, NUMERO, ID_CLIENTE) VALUES
('CEL', '99999-9999', 1),
('RES', '3333-3333', 1),
('CEL', '88888-8888', 2),
('CEL', '77777-7777', 3);

INSERT INTO PEDIDO (VALOR_TOTAL, DATA_PEDIDO, ID_CLIENTE) VALUES
(125.00, NOW(), 1),
(24.00, NOW(), 2),
(250.00, NOW(), 3);

-- Inserindo itens dos pedidos (considerando gás e água)
INSERT INTO ITEMPEDIDO (NOME_ITEM, PRECO_ITEM, QTD_ITEM, ID_PEDIDO) VALUES
('Gás', 125.00, 1, 1),
('Água', 12.00, 2, 2),
('Gás', 125.00, 2, 3);

SELECT PED.*, 