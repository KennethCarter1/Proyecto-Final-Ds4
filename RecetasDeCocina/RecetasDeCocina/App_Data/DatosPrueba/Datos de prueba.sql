USE RecetasDeCocina;

----------------------------------------------------
-- DATOS DE PRUEBA: 10 USUARIOS
----------------------------------------------------
INSERT INTO Usuarios (Usuario, Contrasena, ImagenUsuario) VALUES
('Kenneth', '12345', NULL),
('Maria', '23456', NULL),
('Carlos', '34567', NULL),
('Sofia', '45678', NULL),
('Diego', '56789', NULL),
('Laura', '67890', NULL),
('Roberto', '78901', NULL),
('Ana', '89012', NULL),
('Pedro', '90123', NULL),
('Lucia', '01234', NULL);
GO

----------------------------------------------------
-- DATOS DE PRUEBA: 7 RECETAS POR USUARIO (70 total)
----------------------------------------------------

-- Recetas de Kenneth (UsuarioID = 1)
INSERT INTO Recetas (NombreReceta, Ingredientes, Preparacion, UsuarioID, Imagen) VALUES
('Pizza Margarita', 'Harina, Tomate, Queso mozzarella, Albahaca, Aceite de oliva', 'Amasar la harina, Extender la masa, Agregar tomate, Añadir queso, Hornear 15 minutos', 1, NULL),
('Pasta Carbonara', 'Pasta, Huevos, Tocino, Queso parmesano, Pimienta negra', 'Hervir la pasta, Freír el tocino, Mezclar huevos con queso, Combinar todo, Servir caliente', 1, NULL),
('Ensalada César', 'Lechuga romana, Pollo, Crutones, Queso parmesano, Aderezo césar', 'Lavar la lechuga, Cocinar el pollo, Cortar en trozos, Mezclar ingredientes, Agregar aderezo', 1, NULL),
('Tacos al Pastor', 'Carne de cerdo, Piña, Tortillas, Cebolla, Cilantro', 'Marinar la carne, Cocinar en comal, Picar la piña, Calentar tortillas, Servir con cebolla y cilantro', 1, NULL),
('Hamburguesa Clásica', 'Carne molida, Pan, Lechuga, Tomate, Queso cheddar', 'Formar las hamburguesas, Cocinar a la parrilla, Tostar el pan, Armar con vegetales, Agregar queso', 1, NULL),
('Sushi Roll', 'Arroz, Alga nori, Salmón, Aguacate, Pepino', 'Cocinar el arroz, Extender el alga, Colocar ingredientes, Enrollar firmemente, Cortar en porciones', 1, NULL),
('Paella Valenciana', 'Arroz, Pollo, Mariscos, Azafrán, Pimientos', 'Sofreír el pollo, Agregar mariscos, Añadir arroz, Incorporar azafrán, Cocinar 20 minutos', 1, NULL);

-- Recetas de Maria (UsuarioID = 2)
INSERT INTO Recetas (NombreReceta, Ingredientes, Preparacion, UsuarioID, Imagen) VALUES
('Lasaña Boloñesa', 'Pasta para lasaña, Carne molida, Salsa bechamel, Tomate, Queso', 'Cocinar la carne, Preparar bechamel, Armar capas, Agregar queso, Hornear 30 minutos', 2, NULL),
('Pollo Teriyaki', 'Pollo, Salsa teriyaki, Arroz, Brócoli, Sésamo', 'Marinar el pollo, Cocinar en sartén, Hervir el arroz, Saltear brócoli, Servir con sésamo', 2, NULL),
('Ceviche de Pescado', 'Pescado blanco, Limón, Cebolla morada, Cilantro, Ají', 'Cortar el pescado, Exprimir limones, Picar cebolla, Mezclar ingredientes, Refrigerar 2 horas', 2, NULL),
('Risotto de Hongos', 'Arroz arborio, Hongos, Caldo de pollo, Vino blanco, Queso parmesano', 'Sofreír hongos, Tostar el arroz, Agregar caldo gradualmente, Incorporar vino, Terminar con queso', 2, NULL),
('Enchiladas Verdes', 'Tortillas, Pollo, Salsa verde, Crema, Queso fresco', 'Cocinar el pollo, Calentar tortillas, Bañar en salsa, Enrollar, Cubrir con crema y queso', 2, NULL),
('Brownie de Chocolate', 'Chocolate, Mantequilla, Huevos, Azúcar, Harina', 'Derretir chocolate, Batir huevos, Mezclar ingredientes, Verter en molde, Hornear 25 minutos', 2, NULL),
('Gazpacho Andaluz', 'Tomate, Pepino, Pimiento, Ajo, Aceite de oliva', 'Picar vegetales, Licuar todo, Agregar aceite, Refrigerar, Servir frío', 2, NULL);

-- Recetas de Carlos (UsuarioID = 3)
INSERT INTO Recetas (NombreReceta, Ingredientes, Preparacion, UsuarioID, Imagen) VALUES
('Ramen Japonés', 'Fideos ramen, Caldo de hueso, Huevo, Cebollín, Cerdo chashu', 'Preparar el caldo, Cocinar fideos, Hervir huevo, Cortar cerdo, Montar el bowl', 3, NULL),
('Fajitas de Res', 'Carne de res, Pimientos, Cebolla, Tortillas, Especias', 'Marinar la carne, Saltear vegetales, Cocinar la carne, Calentar tortillas, Servir caliente', 3, NULL),
('Tiramisú', 'Queso mascarpone, Café, Bizcochos, Cacao, Huevos', 'Preparar café, Batir mascarpone, Remojar bizcochos, Armar capas, Refrigerar 4 horas', 3, NULL),
('Curry Tailandés', 'Pollo, Leche de coco, Pasta de curry, Vegetales, Arroz', 'Cocinar el pollo, Agregar curry, Incorporar leche de coco, Añadir vegetales, Servir con arroz', 3, NULL),
('Empanadas Argentinas', 'Masa, Carne, Cebolla, Huevo duro, Aceitunas', 'Preparar el relleno, Extender la masa, Rellenar, Cerrar empanadas, Hornear 20 minutos', 3, NULL),
('Pad Thai', 'Fideos de arroz, Camarones, Huevo, Cacahuates, Salsa tamarindo', 'Remojar fideos, Saltear camarones, Agregar huevo, Incorporar fideos, Decorar con cacahuates', 3, NULL),
('Crème Brûlée', 'Crema, Yemas de huevo, Azúcar, Vainilla, Azúcar morena', 'Mezclar ingredientes, Hornear al baño maría, Refrigerar, Espolvorear azúcar, Caramelizar con soplete', 3, NULL);

-- Recetas de Sofia (UsuarioID = 4)
INSERT INTO Recetas (NombreReceta, Ingredientes, Preparacion, UsuarioID, Imagen) VALUES
('Goulash Húngaro', 'Carne de res, Pimentón, Cebolla, Tomate, Paprika', 'Dorar la carne, Sofreír cebolla, Agregar pimentón, Incorporar paprika, Cocinar 90 minutos', 4, NULL),
('Tortilla Española', 'Papas, Huevos, Cebolla, Aceite de oliva, Sal', 'Freír las papas, Batir huevos, Mezclar con papas, Cocinar por ambos lados, Servir tibia', 4, NULL),
('Poké Bowl', 'Atún fresco, Arroz, Aguacate, Edamame, Salsa de soya', 'Cocinar arroz, Cortar atún en cubos, Preparar vegetales, Armar el bowl, Agregar salsa', 4, NULL),
('Moussaka Griega', 'Berenjena, Carne molida, Bechamel, Tomate, Queso', 'Freír berenjenas, Cocinar la carne, Preparar bechamel, Armar capas, Gratinar 40 minutos', 4, NULL),
('Pho Vietnamita', 'Fideos de arroz, Caldo de res, Carne, Hierbas frescas, Lima', 'Preparar caldo aromático, Cocinar fideos, Cortar carne fina, Montar el bowl, Servir con hierbas', 4, NULL),
('Quiche Lorraine', 'Masa, Tocino, Huevos, Crema, Queso gruyere', 'Extender la masa, Cocinar tocino, Batir huevos con crema, Verter en molde, Hornear 35 minutos', 4, NULL),
('Falafel', 'Garbanzos, Perejil, Ajo, Comino, Harina', 'Remojar garbanzos, Procesar ingredientes, Formar bolitas, Freír hasta dorar, Servir con tahini', 4, NULL);

-- Recetas de Diego (UsuarioID = 5)
INSERT INTO Recetas (NombreReceta, Ingredientes, Preparacion, UsuarioID, Imagen) VALUES
('Chiles Rellenos', 'Chiles poblanos, Queso, Carne molida, Huevo, Salsa de tomate', 'Asar los chiles, Rellenar, Capear con huevo, Freír, Bañar con salsa', 5, NULL),
('Boeuf Bourguignon', 'Carne de res, Vino tinto, Champiñones, Cebolla, Tocino', 'Dorar la carne, Flamear con vino, Agregar vegetales, Cocinar lentamente, Reducir salsa', 5, NULL),
('Biryani Indio', 'Arroz basmati, Pollo, Yogurt, Especias, Azafrán', 'Marinar el pollo, Cocinar arroz, Saltear especias, Armar capas, Cocinar al vapor', 5, NULL),
('Camarones al Ajillo', 'Camarones, Ajo, Aceite de oliva, Guindilla, Perejil', 'Picar el ajo, Calentar aceite, Saltear camarones, Agregar guindilla, Decorar con perejil', 5, NULL),
('Strudel de Manzana', 'Manzanas, Masa filo, Canela, Azúcar, Pasas', 'Pelar manzanas, Mezclar con especias, Extender masa, Enrollar, Hornear 30 minutos', 5, NULL),
('Shakshuka', 'Huevos, Tomate, Pimientos, Cebolla, Comino', 'Sofreír vegetales, Agregar tomate, Hacer huecos, Cascar huevos, Cocinar hasta cuajar', 5, NULL),
('Pulled Pork', 'Cerdo, Salsa BBQ, Especias, Pan, Col', 'Marinar el cerdo, Cocinar lentamente, Desmenuzar, Mezclar con BBQ, Servir en pan', 5, NULL);

-- Recetas de Laura (UsuarioID = 6)
INSERT INTO Recetas (NombreReceta, Ingredientes, Preparacion, UsuarioID, Imagen) VALUES
('Coq au Vin', 'Pollo, Vino tinto, Champiñones, Tocino, Cebollitas', 'Marinar el pollo, Dorar con tocino, Flamear con vino, Agregar vegetales, Cocinar 45 minutos', 6, NULL),
('Dim Sum', 'Masa, Cerdo, Camarones, Jengibre, Salsa de soya', 'Preparar relleno, Formar dumpling, Cocinar al vapor, Preparar salsa, Servir caliente', 6, NULL),
('Tortilla de Patatas', 'Papas, Huevos, Cebolla, Aceite, Sal', 'Freír papas con cebolla, Batir huevos, Mezclar todo, Cocinar en sartén, Voltear con cuidado', 6, NULL),
('Tom Yum', 'Camarones, Galanga, Limoncillo, Champiñones, Chile', 'Hervir el caldo, Agregar aromáticos, Incorporar camarones, Añadir chile, Servir muy caliente', 6, NULL),
('Canelones de Espinaca', 'Pasta, Espinaca, Ricota, Salsa de tomate, Queso', 'Cocinar espinacas, Mezclar con ricota, Rellenar pasta, Bañar con salsa, Gratinar 25 minutos', 6, NULL),
('Baklava', 'Masa filo, Nueces, Miel, Mantequilla, Canela', 'Picar nueces, Armar capas con masa, Pincelar con mantequilla, Hornear, Bañar con miel', 6, NULL),
('Bibimbap', 'Arroz, Carne, Vegetales variados, Huevo, Gochujang', 'Cocinar arroz, Saltear vegetales, Cocinar carne, Freír huevo, Servir en bowl y mezclar', 6, NULL);

-- Recetas de Roberto (UsuarioID = 7)
INSERT INTO Recetas (NombreReceta, Ingredientes, Preparacion, UsuarioID, Imagen) VALUES
('Wiener Schnitzel', 'Ternera, Pan rallado, Huevo, Harina, Limón', 'Aplanar la carne, Empanar, Freír en abundante aceite, Escurrir, Servir con limón', 7, NULL),
('Cassoulet', 'Frijoles blancos, Pato, Salchicha, Tocino, Tomate', 'Remojar frijoles, Cocinar carnes, Mezclar ingredientes, Hornear lentamente, Gratinar superficie', 7, NULL),
('Yakitori', 'Pollo, Salsa teriyaki, Cebollín, Sésamo, Brochetas', 'Cortar el pollo, Ensartar en brochetas, Asar a la parrilla, Barnizar con salsa, Espolvorear sésamo', 7, NULL),
('Ratatouille', 'Berenjena, Calabacín, Tomate, Pimiento, Hierbas', 'Cortar vegetales en rodajas, Disponer en capas, Condimentar, Rociar con aceite, Hornear 40 minutos', 7, NULL),
('Fish and Chips', 'Pescado, Harina, Cerveza, Papas, Aceite', 'Preparar rebozado con cerveza, Cortar papas, Freír el pescado, Freír las papas, Servir con vinagre', 7, NULL),
('Ossobuco', 'Osobuco de ternera, Vino blanco, Tomate, Cebolla, Gremolata', 'Dorar la carne, Agregar vegetales, Incorporar vino, Cocinar lentamente, Terminar con gremolata', 7, NULL),
('Samosas', 'Masa, Papas, Guisantes, Especias, Aceite', 'Preparar relleno especiado, Formar triángulos, Rellenar, Sellar bordes, Freír hasta dorar', 7, NULL);

-- Recetas de Ana (UsuarioID = 8)
INSERT INTO Recetas (NombreReceta, Ingredientes, Preparacion, UsuarioID, Imagen) VALUES
('Carbonnade Flamande', 'Carne de res, Cerveza, Cebolla, Mostaza, Pan de especias', 'Dorar la carne, Caramelizar cebolla, Agregar cerveza, Cocinar lentamente, Espesar con pan', 8, NULL),
('Tonkatsu', 'Cerdo, Pan panko, Huevo, Harina, Salsa tonkatsu', 'Aplanar el cerdo, Empanar con panko, Freír hasta dorar, Cortar en tiras, Servir con salsa', 8, NULL),
('Bouillabaisse', 'Pescados variados, Azafrán, Tomate, Hinojo, Rouille', 'Preparar caldo aromático, Cocinar pescados, Agregar azafrán, Servir con rouille, Acompañar con pan', 8, NULL),
('Tacos de Pescado', 'Pescado, Tortillas, Repollo, Crema, Salsa', 'Cocinar el pescado, Calentar tortillas, Picar repollo, Armar tacos, Agregar crema y salsa', 8, NULL),
('Pavlova', 'Claras de huevo, Azúcar, Crema, Frutas, Vainilla', 'Batir claras a punto de nieve, Hornear lentamente, Enfriar completamente, Cubrir con crema, Decorar con frutas', 8, NULL),
('Jambalaya', 'Arroz, Pollo, Salchicha, Camarones, Especias cajún', 'Sofreír las carnes, Agregar arroz, Incorporar caldo, Añadir especias, Cocinar hasta absorber', 8, NULL),
('Spanakopita', 'Espinaca, Queso feta, Masa filo, Cebolla, Eneldo', 'Cocinar espinacas, Mezclar con queso, Armar capas de masa, Hornear hasta dorar, Cortar en porciones', 8, NULL);

-- Recetas de Pedro (UsuarioID = 9)
INSERT INTO Recetas (NombreReceta, Ingredientes, Preparacion, UsuarioID, Imagen) VALUES
('Beef Wellington', 'Solomillo, Foie gras, Champiñones, Hojaldre, Huevo', 'Sellar la carne, Preparar duxelles, Envolver con hojaldre, Barnizar con huevo, Hornear 25 minutos', 9, NULL),
('Okonomiyaki', 'Repollo, Harina, Huevo, Cerdo, Salsa okonomiyaki', 'Mezclar ingredientes, Cocinar en plancha, Voltear, Cubrir con salsa, Decorar con bonito', 9, NULL),
('Sauerbraten', 'Carne de res, Vinagre, Especias, Jengibre, Pasas', 'Marinar 3 días, Dorar la carne, Cocinar lentamente, Preparar salsa, Servir con puré', 9, NULL),
('Miso Ramen', 'Fideos, Caldo miso, Cerdo, Huevo marinado, Alga nori', 'Preparar caldo aromático, Cocinar fideos, Marinar huevo, Cortar cerdo, Montar el bowl', 9, NULL),
('Chicken Tikka Masala', 'Pollo, Yogurt, Especias, Tomate, Crema', 'Marinar el pollo, Asar en tandoor, Preparar salsa masala, Incorporar pollo, Terminar con crema', 9, NULL),
('Arancini', 'Arroz, Ragú, Queso mozzarella, Pan rallado, Azafrán', 'Cocinar arroz con azafrán, Formar bolas, Rellenar con ragú, Empanar, Freír hasta dorar', 9, NULL),
('Peking Duck', 'Pato, Salsa hoisin, Tortillas, Pepino, Cebollín', 'Marinar el pato, Asar lentamente, Cortar en lonchas, Calentar tortillas, Servir con salsa', 9, NULL);

-- Recetas de Lucia (UsuarioID = 10)
INSERT INTO Recetas (NombreReceta, Ingredientes, Preparacion, UsuarioID, Imagen) VALUES
('Coulibiac', 'Salmón, Arroz, Champiñones, Hojaldre, Eneldo', 'Cocinar arroz, Saltear champiñones, Armar capas con salmón, Envolver en hojaldre, Hornear 35 minutos', 10, NULL),
('Bún Ch?', 'Cerdo, Fideos de arroz, Hierbas, Salsa nuoc cham, Vegetales', 'Asar el cerdo, Cocinar fideos, Preparar salsa, Cortar vegetales, Servir en bowl separado', 10, NULL),
('Roulade de Res', 'Carne, Tocino, Pepinillo, Mostaza, Cebolla', 'Extender la carne, Rellenar, Enrollar y atar, Dorar, Cocinar en salsa', 10, NULL),
('Onigiri', 'Arroz, Salmón, Alga nori, Sal, Sésamo', 'Cocinar arroz, Formar triángulos, Rellenar con salmón, Envolver con alga, Espolvorear sésamo', 10, NULL),
('Beef Stroganoff', 'Carne de res, Champiñones, Crema ácida, Cebolla, Mostaza', 'Saltear la carne, Cocinar champiñones, Agregar crema, Incorporar mostaza, Servir con pasta', 10, NULL),
('Dolma', 'Hojas de parra, Arroz, Carne, Menta, Limón', 'Preparar relleno, Envolver en hojas, Cocinar al vapor, Rociar con limón, Servir tibio', 10, NULL),
('Banoffee Pie', 'Galletas, Dulce de leche, Plátano, Crema, Chocolate', 'Formar base con galletas, Cubrir con dulce de leche, Colocar plátanos, Agregar crema, Decorar con chocolate', 10, NULL);
GO


----------------------------------------------------
-- DATOS DE PRUEBA: ME GUSTA VARIADOS
----------------------------------------------------

-- Usuarios dando Me Gusta de forma variada (distribución aleatoria)

-- Receta 1 (5 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 1;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 1;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 1;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 1;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 1;

-- Receta 2 (8 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 2;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 2;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 2;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 2;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 2;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 2;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 2;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 2;

-- Receta 3 (3 me gusta)
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 3;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 3;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 3;

-- Receta 4 (6 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 4;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 4;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 4;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 4;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 4;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 4;

-- Receta 5 (2 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 5;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 5;

-- Receta 6 (7 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 6;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 6;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 6;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 6;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 6;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 6;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 6;

-- Receta 7 (4 me gusta)
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 7;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 7;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 7;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 7;

-- Receta 8 (9 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 8;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 8;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 8;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 8;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 8;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 8;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 8;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 8;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 8;

-- Receta 9 (5 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 9;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 9;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 9;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 9;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 9;

-- Receta 10 (3 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 10;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 10;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 10;

-- Receta 11 (6 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 11;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 11;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 11;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 11;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 11;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 11;

-- Receta 12 (4 me gusta)
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 12;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 12;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 12;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 12;

-- Receta 13 (7 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 13;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 13;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 13;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 13;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 13;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 13;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 13;

-- Receta 14 (2 me gusta)
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 14;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 14;

-- Receta 15 (8 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 15;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 15;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 15;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 15;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 15;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 15;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 15;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 15;

-- Receta 16 (5 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 16;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 16;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 16;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 16;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 16;

-- Receta 17 (3 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 17;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 17;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 17;

-- Receta 18 (6 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 18;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 18;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 18;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 18;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 18;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 18;

-- Receta 19 (4 me gusta)
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 19;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 19;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 19;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 19;

-- Receta 20 (7 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 20;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 20;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 20;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 20;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 20;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 20;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 20;

-- Receta 21 (9 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 21;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 21;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 21;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 21;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 21;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 21;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 21;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 21;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 21;

-- Receta 22 (2 me gusta)
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 22;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 22;

-- Receta 23 (5 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 23;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 23;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 23;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 23;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 23;

-- Receta 24 (6 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 24;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 24;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 24;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 24;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 24;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 24;

-- Receta 25 (4 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 25;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 25;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 25;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 25;

-- Receta 26 (8 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 26;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 26;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 26;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 26;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 26;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 26;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 26;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 26;

-- Receta 27 (3 me gusta)
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 27;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 27;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 27;

-- Receta 28 (7 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 28;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 28;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 28;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 28;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 28;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 28;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 28;

-- Receta 29 (5 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 29;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 29;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 29;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 29;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 29;

-- Receta 30 (6 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 30;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 30;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 30;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 30;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 30;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 30;

-- Receta 31 (4 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 31;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 31;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 31;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 31;

-- Receta 32 (9 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 32;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 32;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 32;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 32;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 32;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 32;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 32;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 32;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 32;

-- Receta 33 (3 me gusta)
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 33;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 33;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 33;

-- Receta 34 (7 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 34;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 34;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 34;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 34;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 34;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 34;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 34;

-- Receta 35 (5 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 35;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 35;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 35;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 35;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 35;

-- Receta 36 (2 me gusta)
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 36;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 36;

-- Receta 37 (8 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 37;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 37;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 37;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 37;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 37;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 37;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 37;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 37;

-- Receta 38 (6 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 38;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 38;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 38;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 38;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 38;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 38;

-- Receta 39 (4 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 39;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 39;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 39;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 39;

-- Receta 40 (7 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 40;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 40;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 40;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 40;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 40;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 40;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 40;

-- Receta 41 (5 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 41;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 41;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 41;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 41;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 41;

-- Receta 42 (9 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 42;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 42;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 42;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 42;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 42;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 42;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 42;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 42;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 42;

-- Receta 43 (3 me gusta)
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 43;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 43;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 43;

-- Receta 44 (6 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 44;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 44;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 44;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 44;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 44;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 44;

-- Receta 45 (4 me gusta)
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 45;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 45;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 45;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 45;

-- Receta 46 (8 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 46;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 46;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 46;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 46;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 46;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 46;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 46;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 46;

-- Receta 47 (2 me gusta)
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 47;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 47;

-- Receta 48 (7 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 48;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 48;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 48;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 48;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 48;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 48;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 48;

-- Receta 49 (5 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 49;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 49;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 49;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 49;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 49;

-- Receta 50 (6 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 50;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 50;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 50;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 50;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 50;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 50;

-- Receta 51 (4 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 51;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 51;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 51;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 51;

-- Receta 52 (8 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 52;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 52;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 52;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 52;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 52;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 52;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 52;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 52;

-- Receta 53 (3 me gusta)
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 53;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 53;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 53;

-- Receta 54 (9 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 54;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 54;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 54;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 54;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 54;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 54;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 54;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 54;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 54;

-- Receta 55 (5 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 55;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 55;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 55;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 55;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 55;

-- Receta 56 (7 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 56;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 56;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 56;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 56;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 56;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 56;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 56;

-- Receta 57 (2 me gusta)
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 57;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 57;

-- Receta 58 (6 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 58;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 58;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 58;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 58;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 58;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 58;

-- Receta 59 (4 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 59;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 59;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 59;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 59;

-- Receta 60 (8 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 60;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 60;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 60;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 60;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 60;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 60;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 60;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 60;

-- Receta 61 (5 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 61;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 61;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 61;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 61;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 61;

-- Receta 62 (3 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 62;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 62;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 62;

-- Receta 63 (9 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 63;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 63;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 63;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 63;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 63;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 63;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 63;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 63;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 63;

-- Receta 64 (6 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 64;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 64;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 64;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 64;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 64;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 64;

-- Receta 65 (4 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 65;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 65;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 65;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 65;

-- Receta 66 (7 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 66;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 66;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 66;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 66;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 66;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 66;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 66;

-- Receta 67 (2 me gusta)
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 67;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 67;

-- Receta 68 (8 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 68;
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 68;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 68;
EXEC ToggleMeGusta @UsuarioID = 5, @RecetaID = 68;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 68;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 68;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 68;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 68;

-- Receta 69 (5 me gusta)
EXEC ToggleMeGusta @UsuarioID = 2, @RecetaID = 69;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 69;
EXEC ToggleMeGusta @UsuarioID = 6, @RecetaID = 69;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 69;
EXEC ToggleMeGusta @UsuarioID = 9, @RecetaID = 69;

-- Receta 70 (6 me gusta)
EXEC ToggleMeGusta @UsuarioID = 1, @RecetaID = 70;
EXEC ToggleMeGusta @UsuarioID = 3, @RecetaID = 70;
EXEC ToggleMeGusta @UsuarioID = 4, @RecetaID = 70;
EXEC ToggleMeGusta @UsuarioID = 7, @RecetaID = 70;
EXEC ToggleMeGusta @UsuarioID = 8, @RecetaID = 70;
EXEC ToggleMeGusta @UsuarioID = 10, @RecetaID = 70;
GO

----------------------------------------------------
-- VERIFICAR ME GUSTA
----------------------------------------------------
SELECT R.RecetaID, R. NombreReceta, R.MeGustaReceta
FROM Recetas R
ORDER BY R.MeGustaReceta DESC;
GO

----------------------------------------------------
-- DATOS DE PRUEBA: VALORACIONES VARIADAS
----------------------------------------------------

-- Usuarios calificando recetas de forma variada (calificaciones entre 1 y 10)

-- Receta 1 (5 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 1, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 1, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 1, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 1, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 1, @Calificacion = 10;

-- Receta 2 (8 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 2, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 2, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 2, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 2, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 2, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 2, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 2, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 2, @Calificacion = 10;

-- Receta 3 (3 valoraciones)
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 3, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 3, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 3, @Calificacion = 6;

-- Receta 4 (6 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 4, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 4, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 4, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 4, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 4, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 4, @Calificacion = 8;

-- Receta 5 (2 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 5, @Calificacion = 5;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 5, @Calificacion = 6;

-- Receta 6 (7 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 6, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 6, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 6, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 6, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 6, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 6, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 6, @Calificacion = 9;

-- Receta 7 (4 valoraciones)
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 7, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 7, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 7, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 7, @Calificacion = 8;

-- Receta 8 (9 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 8, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 8, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 8, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 8, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 8, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 8, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 8, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 8, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 8, @Calificacion = 9;

-- Receta 9 (5 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 9, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 9, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 9, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 9, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 9, @Calificacion = 7;

-- Receta 10 (3 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 10, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 10, @Calificacion = 5;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 10, @Calificacion = 6;

-- Receta 11 (6 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 11, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 11, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 11, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 11, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 11, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 11, @Calificacion = 9;

-- Receta 12 (4 valoraciones)
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 12, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 12, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 12, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 12, @Calificacion = 8;

-- Receta 13 (7 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 13, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 13, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 13, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 13, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 13, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 13, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 13, @Calificacion = 9;

-- Receta 14 (2 valoraciones)
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 14, @Calificacion = 5;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 14, @Calificacion = 4;

-- Receta 15 (8 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 15, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 15, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 15, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 15, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 15, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 15, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 15, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 15, @Calificacion = 10;

-- Receta 16 (5 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 16, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 16, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 16, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 16, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 16, @Calificacion = 7;

-- Receta 17 (3 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 17, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 17, @Calificacion = 5;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 17, @Calificacion = 6;

-- Receta 18 (6 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 18, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 18, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 18, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 18, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 18, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 18, @Calificacion = 8;

-- Receta 19 (4 valoraciones)
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 19, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 19, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 19, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 19, @Calificacion = 8;

-- Receta 20 (7 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 20, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 20, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 20, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 20, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 20, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 20, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 20, @Calificacion = 9;

-- Receta 21 (9 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 21, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 21, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 21, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 21, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 21, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 21, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 21, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 21, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 21, @Calificacion = 9;

-- Receta 22 (2 valoraciones)
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 22, @Calificacion = 4;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 22, @Calificacion = 5;

-- Receta 23 (5 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 23, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 23, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 23, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 23, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 23, @Calificacion = 7;

-- Receta 24 (6 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 24, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 24, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 24, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 24, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 24, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 24, @Calificacion = 8;

-- Receta 25 (4 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 25, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 25, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 25, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 25, @Calificacion = 7;

-- Receta 26 (8 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 26, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 26, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 26, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 26, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 26, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 26, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 26, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 26, @Calificacion = 9;

-- Receta 27 (3 valoraciones)
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 27, @Calificacion = 5;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 27, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 27, @Calificacion = 5;

-- Receta 28 (7 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 28, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 28, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 28, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 28, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 28, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 28, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 28, @Calificacion = 8;

-- Receta 29 (5 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 29, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 29, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 29, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 29, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 29, @Calificacion = 7;

-- Receta 30 (6 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 30, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 30, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 30, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 30, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 30, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 30, @Calificacion = 8;

-- Receta 31 (4 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 31, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 31, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 31, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 31, @Calificacion = 7;

-- Receta 32 (9 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 32, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 32, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 32, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 32, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 32, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 32, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 32, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 32, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 32, @Calificacion = 9;

-- Receta 33 (3 valoraciones)
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 33, @Calificacion = 5;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 33, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 33, @Calificacion = 5;

-- Receta 34 (7 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 34, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 34, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 34, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 34, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 34, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 34, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 34, @Calificacion = 8;

-- Receta 35 (5 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 35, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 35, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 35, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 35, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 35, @Calificacion = 7;

-- Receta 36 (2 valoraciones)
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 36, @Calificacion = 4;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 36, @Calificacion = 5;

-- Receta 37 (8 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 37, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 37, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 37, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 37, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 37, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 37, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 37, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 37, @Calificacion = 10;

-- Receta 38 (6 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 38, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 38, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 38, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 38, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 38, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 38, @Calificacion = 9;

-- Receta 39 (4 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 39, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 39, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 39, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 39, @Calificacion = 7;

-- Receta 40 (7 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 40, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 40, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 40, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 40, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 40, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 40, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 40, @Calificacion = 8;

-- Receta 41 (5 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 41, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 41, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 41, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 41, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 41, @Calificacion = 7;

-- Receta 42 (9 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 42, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 42, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 42, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 42, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 42, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 42, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 42, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 42, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 42, @Calificacion = 9;

-- Receta 43 (3 valoraciones)
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 43, @Calificacion = 5;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 43, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 43, @Calificacion = 5;

-- Receta 44 (6 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 44, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 44, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 44, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 44, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 44, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 44, @Calificacion = 9;

-- Receta 45 (4 valoraciones)
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 45, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 45, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 45, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 45, @Calificacion = 7;

-- Receta 46 (8 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 46, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 46, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 46, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 46, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 46, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 46, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 46, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 46, @Calificacion = 10;

-- Receta 47 (2 valoraciones)
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 47, @Calificacion = 4;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 47, @Calificacion = 5;

-- Receta 48 (7 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 48, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 48, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 48, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 48, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 48, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 48, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 48, @Calificacion = 8;

-- Receta 49 (5 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 49, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 49, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 49, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 49, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 49, @Calificacion = 7;

-- Receta 50 (6 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 50, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 50, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 50, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 50, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 50, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 50, @Calificacion = 8;

-- Receta 51 (4 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 51, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 51, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 51, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 51, @Calificacion = 7;

-- Receta 52 (8 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 52, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 52, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 52, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 52, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 52, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 52, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 52, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 52, @Calificacion = 9;

-- Receta 53 (3 valoraciones)
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 53, @Calificacion = 5;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 53, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 53, @Calificacion = 5;

-- Receta 54 (9 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 54, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 54, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 54, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 54, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 54, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 54, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 54, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 54, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 54, @Calificacion = 10;

-- Receta 55 (5 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 55, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 55, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 55, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 55, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 55, @Calificacion = 7;

-- Receta 56 (7 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 56, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 56, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 56, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 56, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 56, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 56, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 56, @Calificacion = 8;

-- Receta 57 (2 valoraciones)
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 57, @Calificacion = 4;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 57, @Calificacion = 5;

-- Receta 58 (6 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 58, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 58, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 58, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 58, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 58, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 58, @Calificacion = 9;

-- Receta 59 (4 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 59, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 59, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 59, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 59, @Calificacion = 7;

-- Receta 60 (8 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 60, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 60, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 60, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 60, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 60, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 60, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 60, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 60, @Calificacion = 9;

-- Receta 61 (5 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 61, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 61, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 61, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 61, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 61, @Calificacion = 7;

-- Receta 62 (3 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 62, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 62, @Calificacion = 5;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 62, @Calificacion = 6;

-- Receta 63 (9 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 63, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 63, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 63, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 63, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 63, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 63, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 63, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 63, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 63, @Calificacion = 10;

-- Receta 64 (6 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 64, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 64, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 64, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 64, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 64, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 64, @Calificacion = 9;

-- Receta 65 (4 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 65, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 65, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 65, @Calificacion = 6;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 65, @Calificacion = 7;

-- Receta 66 (7 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 66, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 66, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 66, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 66, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 66, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 66, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 66, @Calificacion = 8;

-- Receta 67 (2 valoraciones)
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 67, @Calificacion = 4;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 67, @Calificacion = 5;

-- Receta 68 (8 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 68, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 68, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 68, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 5, @RecetaID = 68, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 68, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 68, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 68, @Calificacion = 10;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 68, @Calificacion = 9;

-- Receta 69 (5 valoraciones)
EXEC CalificarReceta @UsuarioID = 2, @RecetaID = 69, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 69, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 6, @RecetaID = 69, @Calificacion = 7;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 69, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 9, @RecetaID = 69, @Calificacion = 7;

-- Receta 70 (6 valoraciones)
EXEC CalificarReceta @UsuarioID = 1, @RecetaID = 70, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 3, @RecetaID = 70, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 4, @RecetaID = 70, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 7, @RecetaID = 70, @Calificacion = 8;
EXEC CalificarReceta @UsuarioID = 8, @RecetaID = 70, @Calificacion = 9;
EXEC CalificarReceta @UsuarioID = 10, @RecetaID = 70, @Calificacion = 8;
GO

----------------------------------------------------
-- VERIFICAR VALORACIONES
----------------------------------------------------
SELECT R.RecetaID, R.NombreReceta, R.ValoracionReceta
FROM Recetas R
ORDER BY R.ValoracionReceta DESC;
GO