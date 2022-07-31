USE ecommerce;

INSERT INTO tb_usuarios 
VALUES 
(001, 'Vinicius Mendes', 'oMendes95', '12345', '0987654321'),
(002, 'Fabio', 'Fabio_iki', '2789', '123456789'),
(003,'Johnny', 'Johnny_gabriel','2456', '24151617');

SELECT * FROM tb_usuarios 
WHERE Usuario LIKE '%o%';


INSERT INTO Produtos
VALUES
('Helmet Riddell', 'Capacete futebol americano', '1100.00', '20', 'Equipamentos FA', 'foto_FA'),
('Shoulder pad schutt', 'Capacete futebol americano', '1000.00', '5', 'Shoulder pad FA', 'foto_FA2');

INSERT INTO Compras
VALUES
(003, 2, '31/07/2022');

SELECT p.id_produtos, p.produto, u.id, u.Nome
FROM Produtos AS p
INNER JOIN  tb_usuarios u
ON p.id_produtos = u.Id

SELECT * FROM Produtos
WHERE valor LIKE '1100'

SELECT SUM(estoque) AS qtdEstoqueProdutos FROM Produtos
SELECT AVG(valor) AS ValorMedioProdutos FROM Produtos