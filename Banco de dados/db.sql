CREATE DATABASE Chapter
GO

USE Chapter
GO

CREATE TABLE Livros (
    Id INT PRIMARY KEY IDENTITY,
    Titulo VARCHAR(150) NOT NULL,
    QuantidadePaginas INT,
    Disponivel BIT
)
GO

INSERT INTO Livros (Titulo, QuantidadePaginas, Disponivel) 
VALUES ('Titulo A', 120, 1)
GO

INSERT INTO Livros (Titulo, QuantidadePaginas, Disponivel) 
VALUES ('Titulo B', 220, 0)
GO

-- UPDATE Livros SET Titulo = 'Titulo A1' Where Id = 1;

 -- DELETE FROM Livros WHERE Id = 1;

SELECT Id, Titulo, QuantidadePaginas, Disponivel FROM Livros
GO

CREATE TABLE Usuarios (
    Id INT PRIMARY KEY IDENTITY,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Senha VARCHAR(120) NOT NULL,
	Tipo INT NOT NULL -- adicionado ER3 UC11
)
GO

INSERT INTO Usuarios VALUES ('email@sp.br', '1234', 0)

INSERT INTO Usuarios VALUES ('eustacio@gmail.com', '6666', 1)
GO

SELECT * FROM Usuarios WHERE email = 'eustacio@gmail.com' AND senha = '6666'
GO