CREATE DATABASE Empresa;

SHOW DATABASES;

USE Empresa;

CREATE TABLE Departamentos (

	Id INT auto_increment PRIMARY KEY,
    NomeD VARCHAR(255) NOT NULL

);

CREATE TABLE Funcionarios (

	FuncionarioId INT auto_increment primary key,
    Nome VARCHAR(255) NOT NULL,
    Cargo TEXT NOT NULL,
    Salario DOUBLE NOT NULL,
    DepId INT,
    foreign key (DepId) REFERENCES Departamentos(Id)
    
);

INSERT INTO Departamentos (NomeD) VALUES 
('Recursos Humanos'),
('Financeiro'),
('Marketing'),
('Saúde'),
('Tecnologia');
        
        
        
INSERT INTO Funcionarios(Nome, Cargo, Salario) VALUES 
('Pedro', 'Gerente de Finanças', '12.000'),
('Helena', 'Gerente de Marketing', '15.000'),
('Tito', 'Gerente de RH', '18.000'),
('Luciano', 'Analista', '21.000'),
('Luiza', 'Médica', '35.000');
      
      
SELECT * FROM Departamentos;

SELECT * FROM Funcionarios;

DROP TABLE Funcionarios;

DROP TABLE Departamentos;