-- Considere duas tabelas em um sistema de gerenciamento de pedidos de clientes: "Clientes" e "Pedidos". Cada cliente pode fazer vários pedidos, mas cada pedido está associado a apenas um cliente.

-- Tabela "Clientes":
-- Campos: ClienteID (Chave Primária), Nome, Email, Telefone
-- Tabela "Pedidos":
-- Campos: PedidoID (Chave Primária), ClienteID (Chave Estrangeira referenciando ClienteID na tabela Clientes), DataPedido, ValorTotal
-- Implementação: 
-- Crie as instruções SQL para criar essas duas tabelas com os relacionamentos apropriados.
-- Insira 05 registros para cada tabela criada.

-- Criar tabela
CREATE DATABASE Restaurante;

-- Mostrar Tabela
SHOW DATABASES;

-- Acessa Banco de Dados
USE Restaurante;

-- Criar Tabela
CREATE TABLE Restaurante.Clientes(
ID int(30) AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
Email VARCHAR(255)NOT NULL,
Telefone VARCHAR(23)NOT NULL
);

-- Criar Tabela
CREATE TABLE Restaurante.Pedidos(
ID int(30) AUTO_INCREMENT PRIMARY KEY,
ID_Clientes int,
DataPedido DATE NOT NULL,
ValorTotal decimal(10,2) NOT NULL,
foreign key(ID_Clientes) References Clientes(ID)
);

-- INSERINDO VALORES CLIENTES

INSERT INTO Restaurante.Clientes(Nome, Email, Telefone)
VALUES ('Matheus','matheus@gmail.com','(00) 0 0000-0000');

INSERT INTO Restaurante.Clientes(Nome, Email, Telefone)
VALUES ('Carlos','carlos@gmail.com','(11) 1 1111-1111');

INSERT INTO Restaurante.Clientes(Nome, Email, Telefone)
VALUES ('Lima','lima@gmail.com','(22) 2 2222-2222');

INSERT INTO Restaurante.Clientes(Nome, Email, Telefone)
VALUES ('Maria','maria@gmail.com','(33) 3 3333-3333');

INSERT INTO Restaurante.Clientes(Nome, Email, Telefone)
VALUES ('Justin','justin@gmail.com','(44) 4 4444-4444');

-- INSERINDO VALORES PEDIDOS
INSERT INTO Restaurante.Pedidos(ID_Clientes,DataPedido,ValorTotal)
VALUES (1,'2023-05-06',23.30);

INSERT INTO Restaurante.Pedidos(ID_Clientes,DataPedido,ValorTotal)
VALUES (3,'2023-06-06',113.30);

INSERT INTO Restaurante.Pedidos(ID_Clientes,DataPedido,ValorTotal)
VALUES (3,'2023-10-06',2000.00);

INSERT INTO Restaurante.Pedidos(ID_Clientes,DataPedido,ValorTotal)
VALUES (4,'2023-01-06',1.30);

INSERT INTO Restaurante.Pedidos(ID_Clientes,DataPedido,ValorTotal)
VALUES (5,'2023-01-20',100.30);




-- Acessa Banco de Dados
SELECT * FROM Restaurante.Pedidos;

DROP DATABASE Restaurante;
