CREATE DATABASE Marketplace;

USE Marketplace;

CREATE TABLE tb_usuarios (
id_user INT NOT NULL PRIMARY KEY,
Nome VARCHAR (50) NOT NULL,
Usuario VARCHAR(50) NOT NULL,
Senha VARCHAR (50) NOT NULL,
CPF_Usuario VARCHAR (50) NOT NULL,
url_foto_User VARCHAR(80) NOT NULL,
);

CREATE TABLE tb_categoria (
id_cat INT NOT NULL PRIMARY KEY,
categoria VARCHAR(45),
);

Create TABLE  tb_produtos (
id_produto INT NOT NULL PRIMARY KEY ,
produto VARCHAR DEFAULT (45),
descricao VARCHAR(45),
Valor FLOAT,
url_imagem VARCHAR(100),
FK_criador INT,
FK_categorias INT,
FOREIGN KEY (FK_criador) REFERENCES tb_usuarios (id_user),
FOREIGN KEY (FK_categorias) REFERENCES tb_categoria (id_cat),
);
DROP TABLE tb_Categorias
DROP TABLE tb_usuarios
DROP TABLE tb_categoria

CREATE TABLE Compras (
FK_usuario INT,
FK_produtos INT,
FOREIGN KEY (FK_usuario) REFERENCES tb_usuarios (id_user),
FOREIGN KEY (FK_produtos) REFERENCES tb_produtos (id_produto),
);