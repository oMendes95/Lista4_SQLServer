CREATE DATABASE Classificados;

USE Classificados;


CREATE TABLE tb_usuarios(
id_user INT NOT NULL PRIMARY KEY IDENTITY,
nome VARCHAR(50)NOT NULL,
senha VARCHAR(110)NOT NULL,
usuario VARCHAR(50)NOT NULL,
url_imagem VARCHAR (100),
);


CREATE TABLE tb_anuncios (
id_anun INT NOT NULL PRIMARY KEY IDENTITY,
titulo VARCHAR (50),
descricao VARCHAR (500),
contato VARCHAR (50),
url_imagem VARCHAR (100),
data DATE,
FK_usuario INT,
FOREIGN KEY (FK_usuario) REFERENCES tb_usuarios (id_user),
);




