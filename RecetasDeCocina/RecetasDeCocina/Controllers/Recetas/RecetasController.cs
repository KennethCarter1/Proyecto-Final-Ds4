using RecetasDeCocina.Data;
using RecetasDeCocina.Data.ApplicationDbContext;
using RecetasDeCocina.Models.Peticiones;
using RecetasDeCocina.Models.Respuestas;
using System;
using System.Data.SqlClient;
using System.Linq;
using System.Web.Http;

namespace RecetasDeCocina.Controllers.Recetas
{
    [RoutePrefix("api/recetas")]
    public class RecetasController : ApiController
    {
        private AplicacionDbContext db = new AplicacionDbContext();


        [HttpGet]
        [Route("")]
        public IHttpActionResult ObtenerRecetas()
        {
            try
            {
                var recetas = db.Database.SqlQuery<RecetaRespuesta>(
                    "EXEC ObtenerRecetas"
                ).ToList();

                return Ok(new ListaRecetas
                {
                    Recetas = recetas
                });
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }


        [HttpGet]
        [Route("mas-me-gusta")]
        public IHttpActionResult ObtenerRecetasMasMeGusta()
        {
            try
            {
                var recetas = db.Database.SqlQuery<RecetaRespuesta>(
                    "EXEC ObtenerRecetasMasMeGusta"
                ).ToList();

                return Ok(new ListaRecetas
                {
                    Recetas = recetas
                });
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }

        [HttpGet]
        [Route("mejor-calificacion")]
        public IHttpActionResult ObtenerRecetasMejorCalificacion()
        {
            try
            {
                var recetas = db.Database.SqlQuery<RecetaRespuesta>(
                    "EXEC ObtenerRecetasMejorCalificacion"
                ).ToList();

                return Ok(new ListaRecetas
                {
                    Recetas = recetas
                });
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }


        [HttpGet]
        [Route("buscar")]
        public IHttpActionResult BuscarRecetasPorNombre(string nombre)
        {
            if (string.IsNullOrEmpty(nombre))
            {
                return BadRequest("El nombre es requerido");
            }

            try
            {
                var recetas = db.Database.SqlQuery<RecetaRespuesta>(
                    "EXEC BuscarRecetasPorNombre @Nombre",
                    new SqlParameter("@Nombre", nombre)
                ).ToList();

                return Ok(new ListaRecetas
                {
                    Recetas = recetas
                });
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }

        // GET: api/recetas/{id}
        [HttpGet]
        [Route("{id:int}")]
        public IHttpActionResult ObtenerRecetaPorId(int id)
        {
            try
            {
                var receta = db.Database.SqlQuery<RecetaRespuesta>(
                    "EXEC ObtenerRecetaPorId @RecetaID",
                    new SqlParameter("@RecetaID", id)
                ).FirstOrDefault();

                if (receta != null)
                {
                    return Ok(receta);
                }
                else
                {
                    return Ok(new MensajeRespuesta
                    {
                        Exito = false,
                        Mensaje = "Receta no encontrada"
                    });
                }
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }

        // GET: api/recetas/usuario/{id}
        [HttpGet]
        [Route("usuario/{id:int}")]
        public IHttpActionResult ObtenerRecetasPorUsuario(int id)
        {
            try
            {
                var recetas = db.Database.SqlQuery<RecetaRespuesta>(
                    "EXEC ObtenerRecetasPorUsuario @UsuarioID",
                    new SqlParameter("@UsuarioID", id)
                ).ToList();

                return Ok(new ListaRecetas
                {
                    Recetas = recetas
                });
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }

        // POST: api/recetas
        [HttpPost]
        [Route("")]
        public IHttpActionResult AgregarReceta(AgregarReceta datos)
        {
            if (datos == null || string.IsNullOrEmpty(datos.NombreReceta))
            {
                return Ok(new MensajeRespuesta
                {
                    Exito = false,
                    Mensaje = "Los datos de la receta son requeridos"
                });
            }

            try
            {
                var resultado = db.Database.SqlQuery<MensajeResultadoSP>(
                    "EXEC AgregarReceta @NombreReceta, @Ingredientes, @Preparacion, @UsuarioID, @Imagen",
                    new SqlParameter("@NombreReceta", datos.NombreReceta),
                    new SqlParameter("@Ingredientes", datos.Ingredientes),
                    new SqlParameter("@Preparacion", datos.Preparacion),
                    new SqlParameter("@UsuarioID", datos.UsuarioID),
                    new SqlParameter("@Imagen", (object)datos.Imagen ?? DBNull.Value)
                ).FirstOrDefault();

                if (resultado != null && resultado.Exito == 1)
                {
                    return Ok(new MensajeRespuesta
                    {
                        Exito = true,
                        Mensaje = "Receta agregada correctamente"
                    });
                }
                else
                {
                    return Ok(new MensajeRespuesta
                    {
                        Exito = false,
                        Mensaje = "Error al agregar la receta"
                    });
                }
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }

        // PUT: api/recetas/{id}
        [HttpPut]
        [Route("{id:int}")]
        public IHttpActionResult ModificarReceta(int id, ModificarReceta datos)
        {
            if (datos == null || string.IsNullOrEmpty(datos.NombreReceta))
            {
                return Ok(new MensajeRespuesta
                {
                    Exito = false,
                    Mensaje = "Los datos de la receta son requeridos"
                });
            }

            try
            {
                var resultado = db.Database.SqlQuery<MensajeResultadoSP>(
                    "EXEC ModificarReceta @RecetaID, @NombreReceta, @Ingredientes, @Preparacion, @Imagen",
                    new SqlParameter("@RecetaID", id),
                    new SqlParameter("@NombreReceta", datos.NombreReceta),
                    new SqlParameter("@Ingredientes", datos.Ingredientes),
                    new SqlParameter("@Preparacion", datos.Preparacion),
                    new SqlParameter("@Imagen", (object)datos.Imagen ?? DBNull.Value)
                ).FirstOrDefault();

                if (resultado != null && resultado.Exito == 1)
                {
                    return Ok(new MensajeRespuesta
                    {
                        Exito = true,
                        Mensaje = "Receta modificada correctamente"
                    });
                }
                else
                {
                    return Ok(new MensajeRespuesta
                    {
                        Exito = false,
                        Mensaje = "Receta no encontrada"
                    });
                }
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }

        // DELETE: api/recetas/{id}
        [HttpDelete]
        [Route("{id:int}")]
        public IHttpActionResult EliminarReceta(int id)
        {
            try
            {
                var resultado = db.Database.SqlQuery<MensajeResultadoSP>(
                    "EXEC EliminarReceta @RecetaID",
                    new SqlParameter("@RecetaID", id)
                ).FirstOrDefault();

                if (resultado != null && resultado.Exito == 1)
                {
                    return Ok(new MensajeRespuesta
                    {
                        Exito = true,
                        Mensaje = "Receta eliminada correctamente"
                    });
                }
                else
                {
                    return Ok(new MensajeRespuesta
                    {
                        Exito = false,
                        Mensaje = "Receta no encontrada"
                    });
                }
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }


        [HttpPost]
        [Route("{id:int}/me-gusta")]
        public IHttpActionResult ToggleMeGusta(int id, DarMeGusta datos)
        {
            if (datos == null || datos.UsuarioID <= 0)
            {
                return Ok(new MensajeRespuesta
                {
                    Exito = false,
                    Mensaje = "El ID de usuario es requerido"
                });
            }

            try
            {
                var resultado = db.Database.SqlQuery<MensajeResultadoSP>(
                    "EXEC ToggleMeGusta @UsuarioID, @RecetaID",
                    new SqlParameter("@UsuarioID", datos.UsuarioID),
                    new SqlParameter("@RecetaID", id)
                ).FirstOrDefault();

                if (resultado != null && resultado.Exito == 1)
                {
                    return Ok(new MensajeRespuesta
                    {
                        Exito = true,
                        Mensaje = "Me gusta actualizado"
                    });
                }
                else
                {
                    return Ok(new MensajeRespuesta
                    {
                        Exito = false,
                        Mensaje = "Error al actualizar me gusta"
                    });
                }
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }


        [HttpPost]
        [Route("{id:int}/calificar")]
        public IHttpActionResult CalificarReceta(int id, Calificar datos)
        {
            if (datos == null || datos.UsuarioID <= 0 || datos.Calificacion < 1 || datos.Calificacion > 10)
            {
                return Ok(new MensajeRespuesta
                {
                    Exito = false,
                    Mensaje = "Datos inválidos.  La calificación debe estar entre 1 y 10"
                });
            }

            try
            {
                var resultado = db.Database.SqlQuery<MensajeResultadoSP>(
                    "EXEC CalificarReceta @UsuarioID, @RecetaID, @Calificacion",
                    new SqlParameter("@UsuarioID", datos.UsuarioID),
                    new SqlParameter("@RecetaID", id),
                    new SqlParameter("@Calificacion", datos.Calificacion)
                ).FirstOrDefault();

                if (resultado != null && resultado.Exito == 1)
                {
                    return Ok(new MensajeRespuesta
                    {
                        Exito = true,
                        Mensaje = "Calificación registrada correctamente"
                    });
                }
                else
                {
                    return Ok(new MensajeRespuesta
                    {
                        Exito = false,
                        Mensaje = "Error al calificar la receta"
                    });
                }
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}