CREATE TABLE pessoas (
    id SERIAL NOT NULL PRIMARY KEY,
    nickname VARCHAR(100) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100),
);

-- CONSTRAINT para CANAL
-- ALTER TABLE pessoas ADD COLUMN id_canal INT;
-- ALTER TABLE pessoas
-- ADD CONSTRAINT fk_canal FOREIGN KEY (id_canal) REFERENCES canal(id);

CREATE TABLE pessoas_vozes (
    pessoas_id INT NOT NULL REFERENCES pessoas(id),
    vozA VARCHAR(30) NOT NULL REFERENCES vozes(id),
    vozB VARCHAR(30) REFERENCES vozes(id),
    vozC VARCHAR(30) REFERENCES vozes(id),
    PRIMARY KEY (pessoas_id)
);

CREATE TABLE vozes (
    id SERIAL NOT NULL,
    voz VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE canal (
    id SERIAL NOT NULL,
    canal VARCHAR(500),
    PRIMARY KEY (id)   
)

