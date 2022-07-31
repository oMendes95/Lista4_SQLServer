USE Classificados

INSERT INTO tb_usuarios
VALUES
( 'Vinicius Mendes', '12345','oMendes95','URL_Foto1'),
( 'Fabio', '2789','Fabio_iki',  'URL_Foto2');

INSERT INTO tb_anuncios
VALUES 
('Chuteira under armour', 'Chuteira de Futebol Americano tamanho 45', '9707070', 'url_1','31/07/2022',1),
('Helmet Xenith', 'Capacete FA', '9808080', 'url_imagem',' 30/07/2022', 2); 

SELECT * FROM tb_anuncios
WHERE Contato LIKE '%9%'

SELECT * FROM tb_anuncios
WHERE titulo LIKE '%f%' 

SELECT p.id_anun, p.titulo, u.id_user, u.Nome
FROM tb_anuncios AS p
RIGHT JOIN  tb_usuarios u
ON p.id_anun= u.id_user

SELECT COUNT(usuario) AS QtdeUsuarioRegistrado FROM tb_usuarios;
