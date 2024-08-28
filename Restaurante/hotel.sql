CREATE TABLE clientes(
    id_cliente INT PRIMARY KEY,
    nome_cliente VARCHAR(50) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    emil VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL
);

CREATE TABLE reservas (
    id_reserva INT PRIMARY KEY,
    id_cliente INT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE quartos(
    id_quarto INT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    capacidade INT NOT NULL,
    diaria DECIMAL(8,2) NOT NULL
);

CREATE TABLE reservas_quartos (
    id_reserva INT NOT NULL,
    id_quarto INT NOT NULL,
    data_entrada DATE NOT NULL,
    data_saida DATE NOT NULL,
    PRIMARY KEY (id_reserva, id_quarto),
    FOREIGN KEY (id_reserva) REFERENCES reservas(id_reserva),
    FOREIGN KEY (id_quarto) REFERENCES quartos(id_quarto)
);


