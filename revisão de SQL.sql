CREATE DATABASE 3_db_fatec
USE 3_db_fatec

CREATE TABLE cliente(
    CPF_cliente INT(11) PRIMARY KEY NOT NULL,
    nome_cliente VARCHAR(50) NOT NULL,
    endereco_cliente VARCHAR(100) NOT NULL,
    cidade_cliente VARCHAR(20) NOT NULL,
    telefone_cliente NUMERIC(11)
);

CREATE TABLE carro(
    id_carro INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    placa_carro INT(7) NOT NULL,
    cor_carro VARCHAR(20) NOT NULL,
    modelo_carro VARCHAR(20) NOT NULL,
    ano_carro DATE(4) NOT NULL,
    CONSTRAINT fk_CPF_cliente
    FOREIGN KEY (CPF_cliente)
    REFERENCES cliente (CPF)
);

CREATE TABLE manutencao(
    id_manutencao INT PRIMARY KEY NOT NULL,
    data_manutencao DATE(8) NOT NULL,
    valor_manutencao FLOAT(8,2) NOT NULL,
    CONSTRAINT fk_id_carro
    FOREIGN KEY (id_carro)
    REFERENCES carro (id)
);

INSERT INTO clientes (cpf, nome, endereco, cidade, telefone)
    VALUES (12345678901, "Solange Almeida", "R. 7 de setembro, 100", "", "15999999999"),
            (98765432123, "Taís Araújo", "R. 31 de março, 400", "Votorantim", "15999999991"),
            (22233344455, "Marcos Palmeira", "R. Itavuvu, 1000", "", "15999999992"),
            (12312312312, "Junior Moraes", "R. Avarenga Dantas, 1", "Mairinque", "11999999993"),
            (44455566677, "Cristiane Torloni", "R. Marcio de Sá, 2", "São Roque", "15999999994"),
            (88877766655, "Maria do Bairro", "R. Ubirajara, 2", "", "15999999995");

INSERT INTO automoveis (id, placa, cor, modelo, ano, CPF)
    VALUES ("ABC1010", "Branca", "Corsa", 2007, 12345678901),
            ("ABY1111", "Preta", "Uno", 2018, 98765432123),
            ("VBN6543", "Prata", "Ka", 1900, 22233344455),
            ("XAQ123", "Azul", "Corola", 1900, 12312312312),
            ("XZA222", "Marrom", "Corola", 2001, 88877766655),
            ("OPK8765", "Branca", "Gol ", 2010, 88877766655),
            ("PPP3434", "Amarelo", "Palio", 2010, 44455566677),
            ("BBB4561", "Prata", "Civic", 2017, 44455566677),
            ("XXC1111", "Prata", "Civic", 2016, 12345678901);

SELECT * FROM carro;

INSERT INTO manutencao (data_manutencao, idcarro, valor)
    VALUES ("2018-09-24", 1, 800.00),
           ("2018-09-20", 2, 1000.00),
           ("2018-08-24", 1, 300.00),
           ("2018-08-24", 3, 450.00),
           ("2018-08-24", 4, 986.00),
           ("2018-07-24", 5, 555.00),
           ("2018-07-24", 6, 130.00),
           ("2018-05-01", 7, 1000.00),
           ("2018-05-01", 8, 1205.00);

SELECT * FROM manutencao;

UPDATE cliente
    SET cidade = "Sorocaba"
    WHERE cidade = "";

SELECT * FROM cliente;

UPDATE carro
    SET modelo = "Corolla"
    WHERE modelo = "Corola"

SELECT * FROM carro;

UPDATE manutencao
    SET data_manutencao = "2018-01-01"
    WHERE valor > 1000.00;

SELECT * FROM manutencao;

DELETE FROM cliente 
    WHERE nome = "Taís Araújo"