CREATE DATABASE Mercado;

SHOW DATABASES;

USE Mercado;

CREATE TABLE Clientes (

	Id INT auto_increment PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR (255) NOT NULL,
    Telefone VARCHAR(22) NOT NULL
);

CREATE TABLE Pedidos (

	PedidoId INT auto_increment primary key,
    ClienteId INT,
    foreign key (ClienteId) REFERENCES Clientes(Id),
    DataPedido DATE,
    ValorTotal DOUBLE NOT NULL
);

INSERT INTO Clientes (Nome, Email, Telefone) VALUES 
('Helena', 'helena@gmail.com', '71-99887-6644'),
('Gabriela', 'gabriela@gmail.com', '71-9876-2133'),
('Ana Julia', 'anaju@gmail.com',  '71-9876-2003'),
('Carolina', 'carol@gmail.com',  '71-99216-7793'),
('Bianca', 'biad@gmail.com',  '71-9849-2903');

INSERT INTO Pedidos (DataPedido, ValorTotal) VALUES 
('2023-09-01', '548.00'),
('2023-06-30', '89.50'),
('2023-03-03', '368.75'),
('2023-08-21', '15.00'),
('2023-01-11', '864.75');
    
SELECT * FROM Pedidos;

SELECT * FROM Clientes;

DROP TABLE Clientes;

DROP TABLE Pedidos;



