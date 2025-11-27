# Proyecto Final – Recetas de Cocina

Aplicación desarrollada en C# .NET Framework utilizando una arquitectura basada en Web API + MVC.  
El proyecto MVC consume la Web API mediante solicitudes HTTP utilizando formato JSON.  
El objetivo del sistema es gestionar recetas de cocina con funcionalidades completas de CRUD y manejo de usuarios.

---

## Estructura del Proyecto

### 1. Web API (.NET Framework)

La Web API es la capa encargada de manejar toda la lógica del sistema.  
Incluye los siguientes endpoints principales:

- Registrar usuario  
- Iniciar sesión  
- Agregar receta  
- Buscar receta  
- Listar recetas más populares  
- Listar recetas más calificadas  
- Eliminar receta  
- Actualizar receta  

Todos los endpoints reciben y retornan datos en formato JSON.  
El acceso a base de datos se realiza mediante SQL Server.

---

### 2. MVC (.NET Framework)

El proyecto MVC se encarga de la interfaz visual del usuario.  
Consume la Web API mediante `HttpClient` enviando y recibiendo JSON.

Incluye las siguientes vistas y funciones:

- Login y registro de usuario  
- Página principal  
- Búsqueda de recetas  
- Agregar nuevas recetas  
- Eliminar recetas  
- Actualizar recetas  
- Listar recetas recientes, populares y mejor calificadas  

Cada acción del usuario en MVC realiza una solicitud a la API.

---

## Comunicación MVC – API

La comunicación entre ambos proyectos se realiza mediante solicitudes HTTP:

- **GET** para obtener datos  
- **POST** para crear registros  
- **PUT** para actualizar recetas  
- **DELETE** para eliminar recetas  

Los modelos utilizados son compatibles entre ambos proyectos para que la comunicación sea consistente.

---

## Base de Datos

El sistema utiliza **SQL Server** para almacenar:

- Aun sin especificar

La Web API es la responsable de realizar todas las operaciones sobre la base de datos.

---

## Objetivo del Proyecto

Construir una aplicación separada mediante Web API + MVC, permitiendo un codigo claro.

