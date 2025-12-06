USE RecetasDeCocina;
GO

----------------------------------------------------
-- GET: Obtener todas las recetas
----------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'ObtenerRecetas')
    DROP PROCEDURE ObtenerRecetas;
GO

CREATE PROCEDURE ObtenerRecetas
AS
BEGIN
    SET NOCOUNT ON;


    SELECT
        R.RecetaID,
        R.NombreReceta,
        R.Ingredientes,
        R.Preparacion,
        R.UsuarioID,
        R.Imagen AS ImagenReceta,
        R.MeGustaReceta,
        R.ValoracionReceta,
        U.Usuario AS NombreUsuario,
        U.ImagenUsuario AS ImagenUsuario
    FROM Recetas R
    INNER JOIN Usuarios U ON R.UsuarioID = U.UsuarioID
    ORDER BY R.RecetaID DESC;  -- Últimas recetas primero
END;
GO

----------------------------------------------------
-- GET: Obtener recetas con más Me Gusta
----------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'ObtenerRecetasMasMeGusta')
    DROP PROCEDURE ObtenerRecetasMasMeGusta;
GO

CREATE PROCEDURE ObtenerRecetasMasMeGusta
AS
BEGIN
    SET NOCOUNT ON;


    SELECT
        R.RecetaID,
        R.NombreReceta,
        R.Ingredientes,
        R.Preparacion,
        R.UsuarioID,
        R.Imagen AS ImagenReceta,
        R.MeGustaReceta,
        R.ValoracionReceta,
        U.Usuario AS NombreUsuario,
        U.ImagenUsuario AS ImagenUsuario
    FROM Recetas R
    INNER JOIN Usuarios U ON R.UsuarioID = U.UsuarioID
    ORDER BY R.MeGustaReceta DESC;   -- Más me gusta primero
END;
GO

----------------------------------------------------
-- GET: Obtener recetas con mejor calificación
----------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'ObtenerRecetasMejorCalificacion')
    DROP PROCEDURE ObtenerRecetasMejorCalificacion;
GO

CREATE PROCEDURE ObtenerRecetasMejorCalificacion
AS
BEGIN
    SET NOCOUNT ON;



    SELECT
        R.RecetaID,
        R.NombreReceta,
        R.Ingredientes,
        R.Preparacion,
        R.UsuarioID,
        R.Imagen AS ImagenReceta,
        R.MeGustaReceta,
        R.ValoracionReceta,
        U.Usuario AS NombreUsuario,
        U.ImagenUsuario AS ImagenUsuario
    FROM Recetas R
    INNER JOIN Usuarios U ON R.UsuarioID = U.UsuarioID
    ORDER BY 
        R.ValoracionReceta DESC,   -- Mejor calificación primero
        R.MeGustaReceta DESC;      -- Si empatan, más me gusta
END;
GO

----------------------------------------------------
-- GET: Buscar recetas por nombre
----------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'BuscarRecetasPorNombre')
    DROP PROCEDURE BuscarRecetasPorNombre;
GO

CREATE PROCEDURE BuscarRecetasPorNombre
    @Nombre NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;



    SELECT 
        R.RecetaID,
        R.NombreReceta,
        R.Ingredientes,
        R.Preparacion,
        R.UsuarioID,
        R.Imagen AS ImagenReceta,
        R.MeGustaReceta,
        R.ValoracionReceta,
        U.Usuario AS NombreUsuario,
        U.ImagenUsuario AS ImagenUsuario
    FROM Recetas R
    INNER JOIN Usuarios U ON R.UsuarioID = U.UsuarioID
    WHERE R.NombreReceta LIKE '%' + @Nombre + '%'
    ORDER BY R.NombreReceta ASC;
END;
GO

----------------------------------------------------
-- GET: Obtener perfil completo de un usuario
----------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'ObtenerPerfilUsuario')
    DROP PROCEDURE ObtenerPerfilUsuario;
GO

CREATE PROCEDURE ObtenerPerfilUsuario
    @UsuarioID INT
AS
BEGIN
    SET NOCOUNT ON;

    ----------------------------------------------------
    -- 1) Datos del usuario + totales de me gusta y promedio
    ----------------------------------------------------
    SELECT
        U.UsuarioID,
        U.Usuario,
        U.ImagenUsuario,
        ISNULL(SUM(R.MeGustaReceta), 0) AS TotalMeGusta,            -- Total de me gusta en todas sus recetas
        ISNULL(AVG(R.ValoracionReceta), 0) AS PromedioValoracion    -- Promedio de calificaciones en todas sus recetas
    FROM Usuarios U
    LEFT JOIN Recetas R ON U.UsuarioID = R.UsuarioID
    WHERE U.UsuarioID = @UsuarioID
    GROUP BY U.UsuarioID, U.Usuario, U.ImagenUsuario;

    ----------------------------------------------------
    -- 2) Listado completo de sus recetas
    ----------------------------------------------------
    SELECT
        R.RecetaID,
        R.NombreReceta,
        R.Ingredientes,
        R.Preparacion,
        R.Imagen AS ImagenReceta,
        R.MeGustaReceta,
        R.ValoracionReceta
    FROM Recetas R
    WHERE R.UsuarioID = @UsuarioID
    ORDER BY R.RecetaID DESC;
END;
GO

----------------------------------------------------
-- GET: Buscar usuarios por nombre (perfil completo)
----------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'BuscarUsuariosPorNombre')
    DROP PROCEDURE BuscarUsuariosPorNombre;
GO

CREATE PROCEDURE BuscarUsuariosPorNombre
    @Nombre NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    ----------------------------------------------------
    -- 1) Datos del usuario + totales de me gusta y promedio
    ----------------------------------------------------
    SELECT
        U.UsuarioID,
        U.Usuario,
        U.ImagenUsuario,
        ISNULL(SUM(R.MeGustaReceta), 0) AS TotalMeGusta,
        ISNULL(AVG(R.ValoracionReceta), 0) AS PromedioValoracion
    FROM Usuarios U
    LEFT JOIN Recetas R ON U.UsuarioID = R.UsuarioID
    WHERE U.Usuario LIKE '%' + @Nombre + '%'
    GROUP BY U.UsuarioID, U.Usuario, U.ImagenUsuario
    ORDER BY U.Usuario ASC;

    ----------------------------------------------------
    -- 2) Listado completo de sus recetas
    ----------------------------------------------------
    SELECT
        R.UsuarioID,
        R.RecetaID,
        R.NombreReceta,
        R.Ingredientes,
        R.Preparacion,
        R.Imagen AS ImagenReceta,
        R.MeGustaReceta,
        R.ValoracionReceta
    FROM Recetas R
    INNER JOIN Usuarios U ON R.UsuarioID = U.UsuarioID
    WHERE U.Usuario LIKE '%' + @Nombre + '%'
    ORDER BY R.UsuarioID, R.RecetaID DESC;
END;
GO


USE RecetasDeCocina;
GO

----------------------------------------------------
-- GET: Obtener todas las recetas de un usuario específico
----------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'ObtenerRecetasPorUsuario')
    DROP PROCEDURE ObtenerRecetasPorUsuario;
GO

CREATE PROCEDURE ObtenerRecetasPorUsuario
    @UsuarioID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        R.RecetaID,
        R.NombreReceta,
        R.Ingredientes,
        R.Preparacion,
        R. UsuarioID,
        R. Imagen AS ImagenReceta,
        R.MeGustaReceta,
        R.ValoracionReceta,
        U.Usuario AS NombreUsuario,
        U.ImagenUsuario AS ImagenUsuario
    FROM Recetas R
    INNER JOIN Usuarios U ON R.UsuarioID = U. UsuarioID
    WHERE R.UsuarioID = @UsuarioID
    ORDER BY R.RecetaID DESC;  -- Últimas recetas primero
END;
GO

----------------------------------------------------
-- GET: Obtener receta por ID
----------------------------------------------------
IF OBJECT_ID('ObtenerRecetaPorId') IS NOT NULL
    DROP PROCEDURE ObtenerRecetaPorId;
GO

CREATE PROCEDURE ObtenerRecetaPorId
    @RecetaID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        r.RecetaID,
        r. NombreReceta,
        r.Ingredientes,
        r.Preparacion,
        r.Imagen AS ImagenReceta,
        r. MeGustaReceta,
        r.ValoracionReceta,
        r. UsuarioID,
        u.Usuario,
        u.ImagenUsuario
    FROM Recetas r
    INNER JOIN Usuarios u ON r. UsuarioID = u. UsuarioID
    WHERE r. RecetaID = @RecetaID;
END;
GO