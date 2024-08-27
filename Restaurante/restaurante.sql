-- Tabela de Clientes
CREATE TABLE clientes (
    id BIGSERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(255) NOT NULL
);

-- Tabela de Mesa
CREATE TABLE mesas (
    id BIGSERIAL PRIMARY KEY,
    capacidade INT NOT NULL,
    disponibilidade BOOLEAN NOT NULL
);

-- Tabela de Pedidos
CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    id_cliente INT       REFERENCES clientes(id) NOT NULL,
    id_mesa INT          REFERENCES mesas(id),
    data_pedido TIMESTAMP NOT NULL,
    status_pedido VARCHAR(20) NOT NULL,
    CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    CONSTRAINT fk_mesa FOREIGN KEY (id_mesa) REFERENCES mesas(id)
);

-- Tabela de itens do menu
CREATE TABLE itens_menu (
    id BIGSERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL
);

-- Tabela de pedidos de itens do menu
CREATE TABLE pedidos_itens_menu (
    id_pedido INT REFERENCES restaurante.pedidos(id) NOT NULL,
    id_item INT REFERENCES restaurante.itens_menu(id) NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL
)