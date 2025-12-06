USE RecetasDeCocina;
GO

----------------------------------------------------
-- POST: Iniciar Sesión
----------------------------------------------------
IF OBJECT_ID('IniciarSesion') IS NOT NULL
    DROP PROCEDURE IniciarSesion;
GO

CREATE PROCEDURE IniciarSesion
    @Usuario NVARCHAR(50),
    @Contrasena NVARCHAR(255)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ID INT;

    -- Buscar usuario con nombre y contraseña
    SELECT @ID = UsuarioID
    FROM Usuarios
    WHERE Usuario = @Usuario
      AND Contrasena = @Contrasena;

    -- Devuelve datos completos si encontró usuario
    IF @ID IS NOT NULL
        SELECT 
            UsuarioID = @ID, 
              
            Exito = 1
        FROM Usuarios U
        WHERE U.UsuarioID = @ID;
    ELSE
        SELECT 
            UsuarioID = NULL,        
            Exito = 0;
END;
GO



----------------------------------------------------
-- POST: Registrar Usuario
----------------------------------------------------
IF OBJECT_ID('RegistrarUsuario') IS NOT NULL
    DROP PROCEDURE RegistrarUsuario;
GO

-- Registra un nuevo usuario si no existe otro con el mismo nombre
CREATE PROCEDURE RegistrarUsuario
    @Usuario NVARCHAR(50),
    @Contrasena NVARCHAR(255),
    @ImagenUsuario NVARCHAR(255) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Existe INT;

    -- Verificar si el usuario ya existe
    SELECT @Existe = COUNT(*)
    FROM Usuarios
    WHERE Usuario = @Usuario;

    IF @Existe > 0
    BEGIN
        SELECT Exito = 0; -- Nombre repetido
        RETURN;
    END

    -- Insertar nuevo usuario
    INSERT INTO Usuarios (Usuario, Contrasena, ImagenUsuario)
    VALUES (@Usuario, @Contrasena, @ImagenUsuario);

    SELECT Exito = 1;
END;
GO



----------------------------------------------------
-- POST: Agregar Receta
----------------------------------------------------
IF OBJECT_ID('AgregarReceta') IS NOT NULL
    DROP PROCEDURE AgregarReceta;
GO

-- Inserta una receta si el usuario existe
CREATE PROCEDURE AgregarReceta
    @NombreReceta NVARCHAR(100),
    @Ingredientes NVARCHAR(MAX),
    @Preparacion NVARCHAR(MAX),
    @UsuarioID INT,
    @Imagen NVARCHAR(255) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Existe INT;

    -- Verificar usuario
    SELECT @Existe = COUNT(*)
    FROM Usuarios
    WHERE UsuarioID = @UsuarioID;

    IF @Existe = 0
    BEGIN
        SELECT Exito = 0; -- Usuario inválido
        RETURN;
    END

    -- Insertar receta
    INSERT INTO Recetas (NombreReceta, Ingredientes, Preparacion, UsuarioID, Imagen)
    VALUES (@NombreReceta, @Ingredientes, @Preparacion, @UsuarioID, @Imagen);

    SELECT Exito = 1;
END;
GO



----------------------------------------------------
-- POST: Toggle Me Gusta
----------------------------------------------------
IF OBJECT_ID('ToggleMeGusta') IS NOT NULL
    DROP PROCEDURE ToggleMeGusta;
GO

-- Agrega o quita "Me Gusta" y actualiza contador
CREATE PROCEDURE ToggleMeGusta
    @UsuarioID INT,
    @RecetaID INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ExisteUsuario INT;
    DECLARE @ExisteReceta INT;
    DECLARE @YaExiste INT;

    -- Verificar usuario
    SELECT @ExisteUsuario = COUNT(*)
    FROM Usuarios
    WHERE UsuarioID = @UsuarioID;

    IF @ExisteUsuario = 0
    BEGIN
        SELECT Exito = 0;
        RETURN;
    END

    -- Verificar receta
    SELECT @ExisteReceta = COUNT(*)
    FROM Recetas
    WHERE RecetaID = @RecetaID;

    IF @ExisteReceta = 0
    BEGIN
        SELECT Exito = 0;
        RETURN;
    END

    -- Verificar si ya dio Me Gusta
    SELECT @YaExiste = COUNT(*)
    FROM MeGusta
    WHERE UsuarioID = @UsuarioID
      AND RecetaID = @RecetaID;

    -- Si ya existe → quitar Me Gusta
    IF @YaExiste > 0
    BEGIN
        DELETE FROM MeGusta
        WHERE UsuarioID = @UsuarioID
          AND RecetaID = @RecetaID;

        UPDATE Recetas
        SET MeGustaReceta = MeGustaReceta - 1
        WHERE RecetaID = @RecetaID;

        SELECT Exito = 1;
        RETURN;
    END

    -- Si no existe → agregar Me Gusta
    INSERT INTO MeGusta (UsuarioID, RecetaID)
    VALUES (@UsuarioID, @RecetaID);

    UPDATE Recetas
    SET MeGustaReceta = MeGustaReceta + 1
    WHERE RecetaID = @RecetaID;

    SELECT Exito = 1;
END;
GO



----------------------------------------------------
-- POST: Calificar Receta (1–10)
----------------------------------------------------
IF OBJECT_ID('CalificarReceta') IS NOT NULL
    DROP PROCEDURE CalificarReceta;
GO

-- Inserta o actualiza una calificación y recalcula el promedio
CREATE PROCEDURE CalificarReceta
    @UsuarioID INT,
    @RecetaID INT,
    @Calificacion INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ExisteUsuario INT;
    DECLARE @ExisteReceta INT;
    DECLARE @YaCalifico INT;

    -- Validar rango
    IF @Calificacion < 1 OR @Calificacion > 10
    BEGIN
        SELECT Exito = 0;
        RETURN;
    END

    -- Verificar usuario
    SELECT @ExisteUsuario = COUNT(*)
    FROM Usuarios
    WHERE UsuarioID = @UsuarioID;

    IF @ExisteUsuario = 0
    BEGIN
        SELECT Exito = 0;
        RETURN;
    END

    -- Verificar receta
    SELECT @ExisteReceta = COUNT(*)
    FROM Recetas
    WHERE RecetaID = @RecetaID;

    IF @ExisteReceta = 0
    BEGIN
        SELECT Exito = 0;
        RETURN;
    END

    -- Verificar si ya calificó
    SELECT @YaCalifico = COUNT(*)
    FROM Valoracion
    WHERE UsuarioID = @UsuarioID
      AND RecetaID = @RecetaID;

    -- Actualizar si ya existe
    IF @YaCalifico > 0
    BEGIN
        UPDATE Valoracion
        SET Puntuacion = @Calificacion
        WHERE UsuarioID = @UsuarioID
          AND RecetaID = @RecetaID;
    END
    ELSE
    BEGIN
        INSERT INTO Valoracion (UsuarioID, RecetaID, Puntuacion)
        VALUES (@UsuarioID, @RecetaID, @Calificacion);
    END

    -- Recalcular promedio
    UPDATE Recetas
    SET ValoracionReceta = (
        SELECT AVG(CAST(Puntuacion AS FLOAT))
        FROM Valoracion
        WHERE RecetaID = @RecetaID
    )
    WHERE RecetaID = @RecetaID;

    SELECT Exito = 1;
END;
GO


USE RecetasDeCocina;
GO


