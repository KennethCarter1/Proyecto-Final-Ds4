USE RecetasDeCocina;
GO

----------------------------------------------------
-- PROCEDIMIENTO: ModificarReceta
-- Descripción: Modifica los datos de una receta existente
----------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'ModificarReceta')
    DROP PROCEDURE ModificarReceta;
GO

CREATE PROCEDURE ModificarReceta
    @RecetaID INT,
    @NombreReceta NVARCHAR(100),
    @Ingredientes NVARCHAR(MAX),
    @Preparacion NVARCHAR(MAX),
    @Imagen NVARCHAR(255) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Verificar si la receta existe
    IF NOT EXISTS (SELECT 1 FROM Recetas WHERE RecetaID = @RecetaID)
    BEGIN
        SELECT Exito = 0;  -- No se encontró la receta
        RETURN;
    END

    -- Actualizar datos de la receta
    UPDATE Recetas
    SET 
        NombreReceta = @NombreReceta,
        Ingredientes = @Ingredientes,
        Preparacion = @Preparacion,
        Imagen = @Imagen
    WHERE RecetaID = @RecetaID;

    SELECT Exito = 1;  -- Modificación exitosa
END;
GO

----------------------------------------------------
-- PROCEDIMIENTO: EliminarReceta
-- Descripción: Elimina una receta y sus registros asociados (MeGusta y Valoracion)
----------------------------------------------------
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'EliminarReceta')
    DROP PROCEDURE EliminarReceta;
GO

CREATE PROCEDURE EliminarReceta
    @RecetaID INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Verificar si la receta existe
    IF NOT EXISTS (SELECT 1 FROM Recetas WHERE RecetaID = @RecetaID)
    BEGIN
        SELECT Exito = 0;  -- No se encontró la receta
        RETURN;
    END

    ----------------------------------------------------
    -- 1) Eliminar MeGusta asociados
    ----------------------------------------------------
    DELETE FROM MeGusta
    WHERE RecetaID = @RecetaID;

    ----------------------------------------------------
    -- 2) Eliminar Valoracion asociados
    ----------------------------------------------------
    DELETE FROM Valoracion
    WHERE RecetaID = @RecetaID;

    ----------------------------------------------------
    -- 3) Eliminar la receta
    ----------------------------------------------------
    DELETE FROM Recetas
    WHERE RecetaID = @RecetaID;

    SELECT Exito = 1;  -- Eliminación exitosa
END;
GO



EXEC ModificarReceta
    @RecetaID = 1,
    @NombreReceta = 'Nueva Pizza',
    @Ingredientes = 'Harina, Agua, Tomate, Queso, Aceitunas',
    @Preparacion = 'Mezclar, hornear 20 minutos',
    @Imagen = 'pizza.jpg';


EXEC EliminarReceta
    @RecetaID = 1;
