----------------------------------------------------
-- FORZAR DESCONEXIÓN Y BORRAR
----------------------------------------------------
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'RecetasDeCocina')
BEGIN
    
    USE master;


    ALTER DATABASE RecetasDeCocina SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

    DROP DATABASE RecetasDeCocina;
END
GO

----------------------------------------------------
--BASE DE DATOS
----------------------------------------------------
CREATE DATABASE RecetasDeCocina;
GO

USE RecetasDeCocina;
GO

----------------------------------------------------
--  TABLAS
----------------------------------------------------
IF OBJECT_ID('Valoracion', 'U') IS NOT NULL DROP TABLE Valoracion;
IF OBJECT_ID('MeGusta', 'U') IS NOT NULL DROP TABLE MeGusta;
IF OBJECT_ID('Recetas', 'U') IS NOT NULL DROP TABLE Recetas;
IF OBJECT_ID('Usuarios', 'U') IS NOT NULL DROP TABLE Usuarios;
GO

----------------------
--   TABLA Usuarios
----------------------
CREATE TABLE Usuarios (
    UsuarioID INT IDENTITY(1,1) PRIMARY KEY,
    Usuario NVARCHAR(50) NOT NULL,
    Contrasena NVARCHAR(255) NOT NULL,
    ImagenUsuario NVARCHAR(255) NULL
);
GO

----------------------
--   TABLA Recetas
----------------------
CREATE TABLE Recetas (
    RecetaID INT IDENTITY(1,1) PRIMARY KEY,
    NombreReceta NVARCHAR(100) NOT NULL,
    Ingredientes NVARCHAR(MAX) NOT NULL,
    Preparacion NVARCHAR(MAX) NOT NULL,
    ValoracionReceta FLOAT DEFAULT 0,
    MeGustaReceta INT DEFAULT 0,
    UsuarioID INT NOT NULL,
    Imagen NVARCHAR(255) NULL,

    CONSTRAINT FK_Recetas_Usuario
        FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID)
);
GO

----------------------
--   TABLA MeGusta
----------------------
CREATE TABLE MeGusta (
    MeGustaID INT IDENTITY(1,1) PRIMARY KEY,
    UsuarioID INT NOT NULL,
    RecetaID INT NOT NULL,

    CONSTRAINT FK_MeGusta_Usuario
        FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
    CONSTRAINT FK_MeGusta_Receta
        FOREIGN KEY (RecetaID) REFERENCES Recetas(RecetaID)
);
GO

----------------------
--   TABLA Valoracion
----------------------
CREATE TABLE Valoracion (
    ValoracionID INT IDENTITY(1,1) PRIMARY KEY,
    UsuarioID INT NOT NULL,
    RecetaID INT NOT NULL,
    Puntuacion INT NOT NULL CHECK (Puntuacion BETWEEN 1 AND 10),

    CONSTRAINT FK_Valor_Usuario
        FOREIGN KEY (UsuarioID) REFERENCES Usuarios(UsuarioID),
    CONSTRAINT FK_Valor_Receta
        FOREIGN KEY (RecetaID) REFERENCES Recetas(RecetaID)
);
GO
