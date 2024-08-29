CREATE TABLE autor (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    nome_autor VARCHAR(100) NOT NULL,
);

CREATE TABLE musica (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    nome_musica VARCHAR(200) NOT NULL
);

CREATE TABLE musica_autor (
    autor_nome BIGINT NOT NULL REFERENCES autor(id),
    musica_nome BIGINT NOT NULL REFERENCES musica(id),
    PRIMARY KEY (autor_nome, musica_nome)
);


CREATE TABLE categoria (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    tipo VARCHAR(100) NOT NULL
);

CREATE TABLE gravadora (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    id_musica BIGINT,
    nome_gravadora VARCHAR(100),
    localizacao VARCHAR(200),
    telefone VARCHAR(20),
    contato VARCHAR(100),
    CONSTRAINT fk_musica_gravadora FOREIGN KEY(id_musica) REFERENCES musica(id)
);

CREATE TABLE preco (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    id_musica BIGINT,
    menor_preco NUMERIC(18,2),
    maior_preco NUMERIC(18,2),
    CONSTRAINT fk_musica_preco FOREIGN KEY(id_musica) REFERENCES musica(id)
);

CREATE TABLE musica_categoria (
    id_musica BIGINT NOT NULL REFERENCES musica(id),
    id_categoria BIGINT NOT NULL REFERENCES categoria(id)       
);

-- TABELA AUTOR
INSERT INTO autor (nome_autor) VALUES ('Annabel');
INSERT INTO autor (nome_autor) VALUES ('Hatsune Miku');
INSERT INTO autor (nome_autor) VALUES ('Anitta');
INSERT INTO autor (nome_autor) VALUES ('Kafu');
INSERT INTO autor (nome_autor) VALUES ('Luiza Sonza');
INSERT INTO autor (nome_autor) VALUES ('Meiko');
INSERT INTO autor (nome_autor) VALUES ('Cazuza');
INSERT INTO autor (nome_autor) VALUES ('Aline Barros');

-- TABELA MUSICA
INSERT INTO musica (nome_musica) VALUES ('Lilac Slumber');
INSERT INTO musica (nome_musica) VALUES ('World Is Mine');
INSERT INTO musica (nome_musica) VALUES ('Poderosa');
INSERT INTO musica (nome_musica) VALUES ('Phony');
INSERT INTO musica (nome_musica) VALUES ('RATANABA');
INSERT INTO musica (nome_musica) VALUES ('With Friends');
INSERT INTO musica (nome_musica) VALUES ('Descobridos dos Sete Mares');
INSERT INTO musica (nome_musica) VALUES ('Ressuscita-me');

-- TABELA CATEGORIA
INSERT INTO categoria (tipo) VALUES ('J-POP');
INSERT INTO categoria (tipo) VALUES ('Indie');
INSERT INTO categoria (tipo) VALUES ('BR');
INSERT INTO categoria (tipo) VALUES ('Vocaloid');
INSERT INTO categoria (tipo) VALUES ('Funk');
INSERT INTO categoria (tipo) VALUES ('POP');
INSERT INTO categoria (tipo) VALUES ('GOSPEL');

-- TABELA PRECO
INSERT INTO preco (menor_preco) VALUES (2030);