USE Rede_Social

INSERT INTO tb_usuarios
VALUES
(1, 'Vinicius Mendes', 'o_Mendes95', '12345', 'URL_1'),
(2, 'João Guilherme', 'JGuilherme', '54321', 'URL_2');

INSERT INTO tb_grupos
VALUES 
(1, 'Caçadores de promoções', 'Grupo para encontrar promoções de produtos eletronicos','url_1',2),
(2, 'Caçadores de esportes', 'Grupo para encontrar promoções de produtos esportivos','url_2',1);

INSERT INTO tb_postagens
VALUES 
(1, 'Somos os Caçadores de promoções', ' este é um Grupo para encontrar promoções de produtos eletronicos','url_1', '20/07/2022',2,1),
(2, 'Bem vindos aos Caçadores de esportes', ' este é um Grupo para encontrar promoções de produtos eletronicos','url_1', '24/07/2022',1,2);

INSERT INTO tb_incritos
VALUES 
(1,2,'22/07/2022'),
(2,1,'23/07/2022');

SELECT * FROM tb_grupos
WHERE descr like '%eletro%';

SELECT * FROM tb_usuarios
WHERE nome LIKE '%Vinicius%'

SELECT COUNT(usuario) AS Quantidade_De_Grupos FROM tb_usuarios;

SELECT * FROM tb_usuarios
FULL JOIN tb_postagens
ON tb_usuarios.id_usuario = tb_postagens.id_post