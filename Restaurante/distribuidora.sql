CREATE TABLE cargo (
    cod_cargo SERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    salario_base numeric(18,2) NOT NULL
);

CREATE TABLE funcionario (
    cod_funcionario SERIAL NOT NULL PRIMARY KEY,
    cod_cargo INT REFERENCES cargo(cod_cargo),
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100),
);

CREATE TABLE transportadora (
    cod_transportadora SERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE nota_fiscal (
    cod_nota_fiscal SERIAL NOT NULL PRIMARY KEY,
    cod_transportadora INT REFERENCES transportadora(cod_transportadora),
    cod_funcionario INT REFERENCES funcionario(cod_funcionario),
    valor_frete NUMERIC(18,2)
);





CREATE TABLE fabricante (
    cod_fabricante SERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cidade VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE tipo_produto (
    cod_tipo_produto SERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE produto (
    cod_produto SERIAL NOT NULL PRIMARY KEY,
    cod_tipo_produto INT REFERENCES tipo_produto(cod_tipo_produto),
    cod_fabricante INT REFERENCES fabricante(cod_fabricante),
    nome VARCHAR(100) NOT NULL,
    peso VARCHAR(10),
    medida VARCHAR(10),
    preco NUMERIC(18,2),
    qtde_estoque INT
);

CREATE TABLE item_nota (
    cod_nota_fiscal INT REFERENCES nota_fiscal(cod_nota_fiscal),
    cod_produto INT REFERENCES produto(cod_produto),
    quantidade INT,
    valor_unitario NUMERIC(18,2)
);