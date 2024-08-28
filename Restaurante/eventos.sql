-- EVENTOS

CREATE TABLE eventos (
    id_evento SERIAL PRIMARY KEY,
    nome_evento VARCHAR(255) NOT NULL,
    data_evento DATE NOT NULL,
    local_evento VARCHAR(255) NOT NULL,
    descricao_evento TEXT,
    preco_evento NUMERIC(8,2) NOT NULL
);

CREATE TABLE participantes (
    id_participante SERIAL PRIMARY KEY,
    nome_participante VARCHAR(255) NOT NULL,
    email_participante VARCHAR(255) NOT NULL,
    telefone_participante VARCHAR(20) NOT NULL,
    idade_participante INTEGER,
    empresa_participante VARCHAR(255)
);

CREATE TABLE inscricoes (
    id_inscricao SERIAL PRIMARY KEY,
    id_participante INTEGER REFERENCES participantes(id_participante),
    id_evento INTEGER REFERENCES eventos (id_evento),
    data_inscricao TIMESTAMP DEFAULT NOW()
);