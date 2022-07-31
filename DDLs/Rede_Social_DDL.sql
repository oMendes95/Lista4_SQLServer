CREATE DATABASE Rede_Social;

USE Rede_Social;

CREATE TABLE tb_usuarios (
id_usuario INT NOT NULL PRIMARY KEY,
nome VARCHAR (45),
usuario VARCHAR(45),
senha VARCHAR (100),
url_foto VARCHAR (100),
);


CREATE TABLE tb_grupos (
id_groups INT NOT NULL PRIMARY KEY,
grupo VARCHAR(100),
descr VARCHAR (100),
url_imagem VARCHAR (100),
FK_criador INT,
FOREIGN KEY (FK_criador) REFERENCES tb_usuarios (id_usuario),
);



CREATE TABLE tb_postagens (
id_post INT NOT NULL PRIMARY KEY,
titulo VARCHAR (50),
descricao VARCHAR (100),
url_imagem VARCHAR (100),
data_postagem DATE,
FK_creator INT,
FK_groups INT,
FOREIGN KEY (FK_creator) REFERENCES tb_usuarios (id_usuario),
FOREIGN KEY (FK_groups) REFERENCES tb_grupos (id_groups),
);

CREATE TABLE tb_incritos (
FK_users INT,
FK_groups INT,
data DATE,
FOREIGN KEY (FK_users) REFERENCES tb_usuarios (id_usuario),
FOREIGN KEY (FK_groups) REFERENCES tb_grupos (id_groups),
);
