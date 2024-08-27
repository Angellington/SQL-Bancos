CREATE TABLE clientes (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE produtos (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    nome_produto VARCHAR(200) NOT NULL
);

INSERT INTO clientes(nome) VALUES ('Leoncio');
INSERT INTO clientes(nome) VALUES ('Minerva');
INSERT INTO clientes(nome) VALUES ('Isabela');
INSERT INTO clientes(nome) VALUES ('Camila');
INSERT INTO clientes(nome) VALUES ('Gregs');
INSERT INTO clientes(nome) VALUES ('Meiko');
INSERT INTO clientes(nome) VALUES ('Zenny');

INSERT INTO produtos(nome_produto) VALUES('Pica pau');
INSERT INTO produtos(nome_produto) VALUES('Colar da Neve');
INSERT INTO produtos(nome_produto) VALUES('Flor Rosa');
INSERT INTO produtos(nome_produto) VALUES('Chapéu de Palha');
INSERT INTO produtos(nome_produto) VALUES('Chuca');
INSERT INTO produtos(nome_produto) VALUES('Amoeba');
INSERT INTO produtos(nome_produto) VALUES('Jogo da Steam');

ALTER TABLE clientes
ADD PRIMARY KEY(id);

ALTER TABLE produtos
ADD PRIMARY KEY(id);

CREATE TABLE compras(
    id_cliente INT,
    id_produtos INT,
    quantidade VARCHAR(20),

    CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    CONSTRAINT fk_produtos FOREIGN KEY (id_produtos) REFERENCES produtos(id)
);





CONSTRAINT fk_SERVICOS FOREIGN KEY (servicoID) REFERENCES SERVICOS(id)


INSERT INTO compras(id_cliente, id_produtos, quantidade) VALUES('1', '1', '5');
INSERT INTO compras(id_cliente, id_produtos, quantidade) VALUES('1', '3', '10');
INSERT INTO compras(id_cliente, id_produtos, quantidade) VALUES('1', '5', '93534');
INSERT INTO compras(id_cliente, id_produtos, quantidade) VALUES('2', '2', '15');
INSERT INTO compras(id_cliente, id_produtos, quantidade) VALUES('3', '1', '15');
INSERT INTO compras(id_cliente, id_produtos, quantidade) VALUES('3', '4', '2');
INSERT INTO compras(id_cliente, id_produtos, quantidade) VALUES('4', '5', '3');
