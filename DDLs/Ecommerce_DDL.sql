CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE tb_usuarios (
id INT NOT NULL PRIMARY KEY,
Nome VARCHAR (50) NOT NULL,
Usuario VARCHAR(50) NOT NULL,
Senha VARCHAR (50) NOT NULL,
Documento VARCHAR (50) NOT NULL,
);

CREATE TABLE Compras (
FK_usuario INT,
FK_produtos INT,
data DATE,
FOREIGN KEY (FK_usuario) REFERENCES tb_usuarios (Id),
FOREIGN KEY (FK_produtos) REFERENCES Produtos(id_Produtos),
);

CREATE TABLE Produtos(
id_Produtos INT NOT NULL PRIMARY KEY IDENTITY,
produto VARCHAR(45),
descricao VARCHAR(100),
valor FLOAT,
estoque INT, 
category VARCHAR (30),
url_imagem VARCHAR(10),
);

INSERT VALUE

DROP TABLE Compras;

DROP TABLE  Produtos; 
DROP TABLE Compras;
DROP TABLE tb_usuarios;