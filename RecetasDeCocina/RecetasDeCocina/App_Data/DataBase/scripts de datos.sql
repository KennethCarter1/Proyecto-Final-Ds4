
USE RecetasDeCocina;
GO

----------------------------------------------------
--USUARIOS DEFAULT
----------------------------------------------------

INSERT INTO Usuarios (Usuario, Contrasena, ImagenUsuario) VALUES
('ditzel',   '12345', '/Content/Usuarios/1.png'),
('jonas',    '12345', '/Content/Usuarios/2.png'),
('javier',   '12345', '/Content/Usuarios/3.png'),
('rachel',   '12345', '/Content/Usuarios/4.png'),
('daniela',  '12345', '/Content/Usuarios/5.png'),
('kenneth',  '12345', '/Content/Usuarios/6.png'),
('yetzali',  '12345', '/Content/Usuarios/7.png'),
('luis',     '12345', '/Content/Usuarios/8.png'),
('richard',  '12345', '/Content/Usuarios/9.png');

select * from Usuarios

-- 1.jpg -> Arroz con pollo -> ditzel (1)
EXEC AgregarReceta
    @NombreReceta = 'Arroz con pollo',
    @Ingredientes = 'Arroz, Pollo, Guisantes, Zanahoria, Pimiento, Apio',
    @Preparacion = 'Lava arroz, Corta pollo, Sofríe vegetales, Dora pollo, Mezcla todo, Cocina hasta listo',
    @UsuarioID = 1,
    @Imagen = '/Content/comida/1.jpg';

-- 2.jpg -> Sancocho panameño -> jonas (2)
EXEC AgregarReceta
    @NombreReceta = 'Sancocho panameño',
    @Ingredientes = 'Gallina, Yuca, Ñame, Mazorca, Culantro, Apio',
    @Preparacion = 'Trocea verduras, Corta gallina, Añade a olla, Agrega agua, Cocina lento, Sirve caliente',
    @UsuarioID = 2,
    @Imagen = '/Content/comida/2.jpg';

-- 3.png -> Tamal de olla -> javier (3)
EXEC AgregarReceta
    @NombreReceta = 'Tamal de olla',
    @Ingredientes = 'Maíz, Pollo, Cerdo, Aceitunas, Pasas, Pimiento',
    @Preparacion = 'Muele maíz, Cocina carnes, Mezcla ingredientes, Añade aceitunas, Pon en olla, Hornea todo',
    @UsuarioID = 3,
    @Imagen = '/Content/comida/3.png';

-- 4.jpg -> Ceviche de corvina -> rachel (4)
EXEC AgregarReceta
    @NombreReceta = 'Ceviche de corvina',
    @Ingredientes = 'Corvina, Limón, Cebolla, Cilantro, Sal, Ají',
    @Preparacion = 'Corta corvina, Exprime limón, Pica cebolla, Mezcla todo, Agrega cilantro, Refrigera bien',
    @UsuarioID = 4,
    @Imagen = '/Content/comida/4.jpg';

-- 5.png -> Carimañolas -> daniela (5)
EXEC AgregarReceta
    @NombreReceta = 'Carimañolas',
    @Ingredientes = 'Yuca, Carne molida, Cebolla, Ajo, Sal, Aceite',
    @Preparacion = 'Hierve yuca, Ralla yuca, Cocina carne, Mezcla condimentos, Forma carimañolas, Fríe en aceite',
    @UsuarioID = 5,
    @Imagen = '/Content/comida/5.png';

-- 6.jpg -> Empanadas de carne -> kenneth (6)
EXEC AgregarReceta
    @NombreReceta = 'Empanadas de carne',
    @Ingredientes = 'Masa maíz, Carne molida, Cebolla, Pimiento, Huevo, Sal',
    @Preparacion = 'Prepara masa, Cocina carne, Pica vegetales, Mezcla ingredientes, Rellena empanada, Fríe doradas',
    @UsuarioID = 6,
    @Imagen = '/Content/comida/6.jpg';

-- 7.jpg -> Guacho de mariscos -> yetzali (7)
EXEC AgregarReceta
    @NombreReceta = 'Guacho de mariscos',
    @Ingredientes = 'Arroz, Camarones, Calamar, Pimientos, Tomate, Culantro',
    @Preparacion = 'Lava mariscos, Corta verduras, Sofríe mariscos, Añade arroz, Mezcla todo, Cocina hasta espeso',
    @UsuarioID = 7,
    @Imagen = '/Content/comida/7.jpg';

-- 8.jpg -> (no hay receta, salta) --

-- 9.jpg -> Tortilla de maíz gruesa -> luis (8)
EXEC AgregarReceta
    @NombreReceta = 'Tortilla de maíz gruesa',
    @Ingredientes = 'Maíz nuevo, Sal, Agua, Aceite, Queso, Huevo',
    @Preparacion = 'Muele maíz, Haz masa, Mezcla ingredientes, Forma tortillas, Fríe en sartén, Voltea dorar',
    @UsuarioID = 8,
    @Imagen = '/Content/comida/8.jpg';

-- 9.jpg -> Tamal panameño -> richard (9)
EXEC AgregarReceta
    @NombreReceta = 'Tamal panameño',
    @Ingredientes = 'Maíz, Pollo, Aceitunas, Pasas, Pimiento, Tomate',
    @Preparacion = 'Muele masa, Prepara carne, Pica vegetales, Mezcla todo, Envuelve en hojas, Cocina vapor',
    @UsuarioID = 9,
    @Imagen = '/Content/comida/9.jpg';

-- 10.jpg -> Chicheme -> ditzel (1)
EXEC AgregarReceta
    @NombreReceta = 'Chicheme',
    @Ingredientes = 'Maíz, Leche, Azúcar, Canela, Vainilla, Agua',
    @Preparacion = 'Hierve maíz, Añade leche, Endulza, Agrega canela, Incorpora vainilla, Sirve frío',
    @UsuarioID = 1,
    @Imagen = '/Content/comida/10.jpg';

-- 11.jpg -> Plátanos en tentación -> jonas (2)
EXEC AgregarReceta
    @NombreReceta = 'Plátanos en tentación',
    @Ingredientes = 'Plátano maduro, Azúcar, Canela, Vainilla, Agua, Clavos de olor',
    @Preparacion = 'Corta plátanos, Coloca sartén, Agrega azúcar, Agrega agua, Añade especias, Cocina caramelizar',
    @UsuarioID = 2,
    @Imagen = '/Content/comida/11.jpg';

-- 12.jpg -> Patacones (tostones) -> javier (3)
EXEC AgregarReceta
    @NombreReceta = 'Patacones (tostones)',
    @Ingredientes = 'Plátano verde, Aceite, Sal, Ajo, Agua, Limón',
    @Preparacion = 'Corta plátano, Fríe trozos, Aplasta discos, Fríe de nuevo, Añade sal, Sirve con limón',
    @UsuarioID = 3,
    @Imagen = '/Content/comida/12.jpg';

-- 13.jpg -> Almojábanos -> rachel (4)
EXEC AgregarReceta
    @NombreReceta = 'Almojábanos',
    @Ingredientes = 'Maíz molido, Sal, Agua, Queso, Mantequilla, Leche',
    @Preparacion = 'Prepara masa, Incorpora queso, Añade leche, Forma almojábanos, Hornea, Enfría servir',
    @UsuarioID = 4,
    @Imagen = '/Content/comida/13.jpg';

-- 14.jpg -> Arroz con leche panameño -> daniela (5)
EXEC AgregarReceta
    @NombreReceta = 'Arroz con leche panameño',
    @Ingredientes = 'Arroz, Leche, Canela, Azúcar, Pasas, Limón',
    @Preparacion = 'Hierve arroz, Añade leche, Incorpora canela, Endulza, Agrega pasas, Sirve frío',
    @UsuarioID = 5,
    @Imagen = '/Content/comida/14.jpg';

-- 15.jpg -> Bollos de maíz nuevo -> kenneth (6)
EXEC AgregarReceta
    @NombreReceta = 'Bollos de maíz nuevo',
    @Ingredientes = 'Maíz nuevo, Sal, Hojas maíz, Agua, Queso, Margarina',
    @Preparacion = 'Muele maíz, Mezcla sal, Añade margarina, Haz bollos, Envuelve en hoja, Hierve cocer',
    @UsuarioID = 6,
    @Imagen = '/Content/comida/15.jpg';

-- 16.jpg -> Mondongo a la culona -> yetzali (7)
EXEC AgregarReceta
    @NombreReceta = 'Mondongo a la culona',
    @Ingredientes = 'Mondongo, Papas, Zanahoria, Tomate, Cebolla, Culantro',
    @Preparacion = 'Lava mondongo, Pica vegetales, Sofríe todo, Añade agua, Cocina lento, Sirve caliente',
    @UsuarioID = 7,
    @Imagen = '/Content/comida/16.jpg';

-- 17.jpg -> Bandeja chiricana -> luis (8)
EXEC AgregarReceta
    @NombreReceta = 'Bandeja chiricana',
    @Ingredientes = 'Arroz, Guandú, Carne guisada, Tajadas, Queso, Ensalada',
    @Preparacion = 'Prepara arroz, Cocina carne, Fríe tajadas, Sirve queso, Arma ensalada, Ordena bandeja',
    @UsuarioID = 8,
    @Imagen = '/Content/comida/17.jpg';

-- 18.jpg -> Bistec picado panameño -> richard (9)
EXEC AgregarReceta
    @NombreReceta = 'Bistec picado panameño',
    @Ingredientes = 'Res picada, Tomate, Cebolla, Ajo, Pimiento, Aceite',
    @Preparacion = 'Corta carne, Pica vegetales, Sofríe en aceite, Añade condimentos, Mezcla todo, Sirve arroz',
    @UsuarioID = 9,
    @Imagen = '/Content/comida/18.jpg';

-- 19.jpg -> dulce frio de frutas -> ditzel (1, vuelta al inicio)
EXEC AgregarReceta
    @NombreReceta = 'dulce frio de frutas',
    @Ingredientes = 'Fruta mixta, Leche condensada, Galletas, Azúcar, Vainilla, Limón',
    @Preparacion = 'Pica frutas, Coloca en bowl, Añade leche condensada, Incorpora galletas, Mezcla vainilla, Decora limón',
    @UsuarioID = 1,
    @Imagen = '/Content/comida/19.png';



-- Ditzel (1) da Like a todas MENOS la propia
DECLARE @i INT = 2;
WHILE @i <= 19
BEGIN
    EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = @i;
    SET @i = @i + 1;
END

-- Jonas (2) da Like a varias seleccionadas
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 1;  -- Arroz con pollo (ditzel)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 3;  -- Tamal de olla (javier)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 6;  -- Empanadas de carne (kenneth)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 11; -- Plátanos en tentación (jonas)

-- Javier (3) da Like a recetas de ditzel y propias
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 1;  -- Arroz con pollo (ditzel)
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 12; -- Patacones (tostones) (javier)
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 13; -- Almojábanos (rachel)

-- Rachel (4) da Like a recetas suyas y populares
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 4;  -- Ceviche de corvina (rachel)
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 7;  -- Guacho de mariscos (yetzali)
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 13; -- Almojábanos (rachel)

-- Daniela (5) da Like a "dulce frio de frutas" y propias
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 19; -- dulce frio de frutas (ditzel)
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 5;  -- Carimañolas (daniela)
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 14; -- Arroz con leche panameño (daniela)

-- Kenneth (6) da Like a las de luis y propias
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 6;  -- Empanadas de carne (kenneth)
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 8;  -- Tortilla de maíz gruesa (luis)
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 17; -- Bandeja chiricana (luis)
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 15; -- Bollos de maíz nuevo (kenneth)

-- Yetzali (7) da Like a las de ditzel y jonas
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 1;  -- Arroz con pollo (ditzel)
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 2;  -- Sancocho panameño (jonas)

-- Luis (8) da Like a todas las de richard
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 9;  -- Tamal panameño (richard)
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 18; -- Bistec picado panameño (richard)

-- Richard (9) da Like a las de daniela y propias
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 5;   -- Carimañolas (daniela)
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 9;   -- Tamal panameño (richard)
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 18;  -- Bistec picado panameño (richard)

-- TODOS los usuarios dan Like a "Ceviche de corvina" (RecetaID=4) para que sea la más popular
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 4;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 4;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 4;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 4;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 4;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 4;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 4;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 4;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 4;


-- ditzel (1) califica las recetas de jonas y rachel
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 2, @Calificacion = 8;  -- Sancocho panameño (jonas)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 4, @Calificacion = 7;  -- Ceviche de corvina (rachel)

-- jonas (2) califica la suya y la de kenneth
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 2, @Calificacion = 10; -- Sancocho panameño (jonas)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 15, @Calificacion = 9; -- Bollos de maíz nuevo (kenneth)

-- javier (3) califica su propia receta y la de richard
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 3, @Calificacion = 6;  -- Tamal de olla (javier)
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 18, @Calificacion = 7; -- Bistec picado panameño (richard)

-- rachel (4) califica la de daniela y la de yetzali
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 5, @Calificacion = 9;  -- Carimañolas (daniela)
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 16, @Calificacion = 8; -- Mondongo a la culona (yetzali)

-- daniela (5) califica tres recetas
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 14, @Calificacion = 5; -- Arroz con leche panameño (daniela)
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 19, @Calificacion = 10; -- dulce frio de frutas (ditzel)
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 7, @Calificacion = 9; -- Guacho de mariscos (yetzali)

-- kenneth (6) califica tres diferentes
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 6, @Calificacion = 8;  -- Empanadas de carne (kenneth)
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 17, @Calificacion = 7; -- Bandeja chiricana (luis)
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 13, @Calificacion = 9; -- Almojábanos (rachel)

-- yetzali (7) califica a rachel y su propia receta
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 13, @Calificacion = 6; -- Almojábanos (rachel)
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 16, @Calificacion = 8; -- Mondongo a la culona (yetzali)

-- luis (8) califica recetas populares
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 9, @Calificacion = 8;  -- Tamal panameño (richard)
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 4, @Calificacion = 10; -- Ceviche de corvina (rachel)

-- richard (9) califica a todos menos la suya
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 1, @Calificacion = 9; -- Arroz con pollo (ditzel)
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 2, @Calificacion = 8; -- Sancocho panameño (jonas)
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 3, @Calificacion = 5; -- Tamal de olla (javier)
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 4, @Calificacion = 7; -- Ceviche de corvina (rachel)

-- TODOS califican “Ceviche de corvina” diferente (RecetaID=4)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 4, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 4, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 4, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 4, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 4, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 4, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 4, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 4, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 4, @Calificacion = 9;

-- richard repite votación para “Ceviche de corvina” para probar actualización
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 4, @Calificacion = 10;