CREATE DATABASE Blog;

SHOW DATABASES;

USE Blog;

CREATE TABLE Artigos (

	Id INT auto_increment primary key,
    Titulo VARCHAR (300) NOT NULL,
    Conteudo TEXT,
    DataPublicacao DATE

);

CREATE TABLE Comentarios (

	ComentarioId INT auto_increment primary key,
    ArtigoId INT,
    foreign key (ArtigoId) REFERENCES Artigos(Id),
    Autor VARCHAR(200) NOT NULL,
    Texto TEXT(300),
    DataComentario DATE
    
);

INSERT INTO Artigos (Titulo, Conteudo, DataPublicacao) VALUES  
('ATP', 'Vamos entender a função da ATP na biologia', '2011-08-21'),
('Alelos letais', 'BIOLOGIA: O que são os Alelos Letais?', '2019-02-18'),
('Zebras', 'Por que as zebras são listradas?', '2017-12-08'),
('Células eucariontes', 'Células eucariontes: O que são?', '2010-03-17'),
( 'Dolomita', 'Para que serve a Dolomita?', '2011-09-30');

INSERT INTO Comentarios (Autor, Texto, DataComentario) VALUES 
('Marilia Dória', 'Muito interessante', '2021-07-21'),
('Anna Almeida', 'Verídico', '2022-09-16'),
('Alexandre Brito','Gostei bastante!', '2019-02-11'),
('Lucas Cardoso', 'Muito bom', '2023-09-22'),
('Júlia Porto', 'Interessante', '2023-01-12');
        
SELECT * FROM Artigos;

SELECT * FROM Comentarios;
        

DROP TABLE Artigos;