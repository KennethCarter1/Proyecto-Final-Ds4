using RecetasDeCocina.Data;
using RecetasDeCocina.Data.ApplicationDbContext;
using RecetasDeCocina.Models.Respuestas;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web.Http;

namespace RecetasDeCocina.Controllers.Usuarios
{
    [RoutePrefix("api/usuarios")]
    public class UsuariosController : ApiController
    {
        private AplicacionDbContext db = new AplicacionDbContext();

        [HttpGet]
        [Route("perfil/{id:int}")]
        public IHttpActionResult ObtenerPerfil(int id)
        {
            try
            {
                using (var command = db.Database.Connection.CreateCommand())
                {
                    command.CommandText = "ObtenerPerfilUsuario";
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    command.Parameters.Add(new SqlParameter("@UsuarioID", id));

                    db.Database.Connection.Open();

                    using (var reader = command.ExecuteReader())
                    {
                        // Primer result set: Perfil del usuario
                        PerfilUsuarioRespuesta perfil = null;
                        if (reader.Read())
                        {
                            perfil = new PerfilUsuarioRespuesta
                            {
                                UsuarioID = reader.IsDBNull(reader.GetOrdinal("UsuarioID")) ? 0 : reader.GetInt32(reader.GetOrdinal("UsuarioID")),
                                Usuario = reader.IsDBNull(reader.GetOrdinal("Usuario")) ? "" : reader.GetString(reader.GetOrdinal("Usuario")),
                                ImagenUsuario = reader.IsDBNull(reader.GetOrdinal("ImagenUsuario")) ? "" : reader.GetString(reader.GetOrdinal("ImagenUsuario")),
                                TotalMeGusta = reader.IsDBNull(reader.GetOrdinal("TotalMeGusta")) ? 0 : reader.GetInt32(reader.GetOrdinal("TotalMeGusta")),
                                PromedioValoracion = reader.IsDBNull(reader.GetOrdinal("PromedioValoracion")) ? 0.0 : reader.GetDouble(reader.GetOrdinal("PromedioValoracion"))
                            };
                        }

                        // Segundo result set: Recetas del usuario
                        var recetas = new List<RecetaDetalleRespuesta>();
                        if (reader.NextResult())
                        {
                            while (reader.Read())
                            {
                                recetas.Add(new RecetaDetalleRespuesta
                                {
                                    RecetaID = reader.IsDBNull(reader.GetOrdinal("RecetaID")) ? 0 : reader.GetInt32(reader.GetOrdinal("RecetaID")),
                                    NombreReceta = reader.IsDBNull(reader.GetOrdinal("NombreReceta")) ? "" : reader.GetString(reader.GetOrdinal("NombreReceta")),
                                    Ingredientes = reader.IsDBNull(reader.GetOrdinal("Ingredientes")) ? "" : reader.GetString(reader.GetOrdinal("Ingredientes")),
                                    Preparacion = reader.IsDBNull(reader.GetOrdinal("Preparacion")) ? "" : reader.GetString(reader.GetOrdinal("Preparacion")),
                                    ImagenReceta = reader.IsDBNull(reader.GetOrdinal("ImagenReceta")) ? "" : reader.GetString(reader.GetOrdinal("ImagenReceta")),
                                    MeGustaReceta = reader.IsDBNull(reader.GetOrdinal("MeGustaReceta")) ? 0 : reader.GetInt32(reader.GetOrdinal("MeGustaReceta")),
                                    ValoracionReceta = reader.IsDBNull(reader.GetOrdinal("ValoracionReceta")) ? 0.0 : reader.GetDouble(reader.GetOrdinal("ValoracionReceta"))
                                });
                            }
                        }

                        if (perfil == null)
                        {
                            return NotFound();
                        }

                        return Ok(new PerfilCompletoRespuesta
                        {
                            Perfil = perfil,
                            Recetas = recetas
                        });
                    }
                }
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }

        [HttpGet]
        [Route("buscar")]
        public IHttpActionResult BuscarUsuarios(string nombre)
        {
            if (string.IsNullOrEmpty(nombre))
            {
                return BadRequest("El nombre es requerido");
            }

            try
            {
                using (var command = db.Database.Connection.CreateCommand())
                {
                    command.CommandText = "BuscarUsuariosPorNombre";
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    command.Parameters.Add(new SqlParameter("@Nombre", nombre));

                    db.Database.Connection.Open();

                    using (var reader = command.ExecuteReader())
                    {
                        // Primer result set: Usuarios encontrados
                        var usuariosDict = new Dictionary<int, UsuarioBusquedaRespuesta>();

                        while (reader.Read())
                        {
                            int usuarioID = reader.GetInt32(reader.GetOrdinal("UsuarioID"));
                            string usuario = !reader.IsDBNull(reader.GetOrdinal("Usuario"))
                                ? reader.GetString(reader.GetOrdinal("Usuario")) : "";
                            string imagenUsuario = !reader.IsDBNull(reader.GetOrdinal("ImagenUsuario"))
                                ? reader.GetString(reader.GetOrdinal("ImagenUsuario")) : "";
                            int totalMeGusta = !reader.IsDBNull(reader.GetOrdinal("TotalMeGusta"))
                                ? reader.GetInt32(reader.GetOrdinal("TotalMeGusta")) : 0;
                            double promedioValoracion = !reader.IsDBNull(reader.GetOrdinal("PromedioValoracion"))
                                ? reader.GetDouble(reader.GetOrdinal("PromedioValoracion")) : 0.0;

                            usuariosDict[usuarioID] = new UsuarioBusquedaRespuesta
                            {
                                UsuarioID = usuarioID,
                                Usuario = usuario,
                                ImagenUsuario = imagenUsuario,
                                TotalMeGusta = totalMeGusta,
                                PromedioValoracion = promedioValoracion,
                                Recetas = new List<RecetaDetalleRespuesta>()
                            };
                        }

                        // Segundo result set: Recetas de los usuarios encontrados
                        if (reader.NextResult())
                        {
                            while (reader.Read())
                            {
                                int usuarioID = reader.GetInt32(reader.GetOrdinal("UsuarioID"));

                                string nombreReceta = !reader.IsDBNull(reader.GetOrdinal("NombreReceta"))
                                    ? reader.GetString(reader.GetOrdinal("NombreReceta")) : "";
                                string ingredientes = !reader.IsDBNull(reader.GetOrdinal("Ingredientes"))
                                    ? reader.GetString(reader.GetOrdinal("Ingredientes")) : "";
                                string preparacion = !reader.IsDBNull(reader.GetOrdinal("Preparacion"))
                                    ? reader.GetString(reader.GetOrdinal("Preparacion")) : "";
                                string imagenReceta = !reader.IsDBNull(reader.GetOrdinal("ImagenReceta"))
                                    ? reader.GetString(reader.GetOrdinal("ImagenReceta")) : "";
                                int recetaID = !reader.IsDBNull(reader.GetOrdinal("RecetaID"))
                                    ? reader.GetInt32(reader.GetOrdinal("RecetaID")) : 0;
                                int meGustaReceta = !reader.IsDBNull(reader.GetOrdinal("MeGustaReceta"))
                                    ? reader.GetInt32(reader.GetOrdinal("MeGustaReceta")) : 0;
                                double valoracionReceta = !reader.IsDBNull(reader.GetOrdinal("ValoracionReceta"))
                                    ? reader.GetDouble(reader.GetOrdinal("ValoracionReceta")) : 0.0;

                                if (usuariosDict.ContainsKey(usuarioID))
                                {
                                    usuariosDict[usuarioID].Recetas.Add(new RecetaDetalleRespuesta
                                    {
                                        RecetaID = recetaID,
                                        NombreReceta = nombreReceta,
                                        Ingredientes = ingredientes,
                                        Preparacion = preparacion,
                                        ImagenReceta = imagenReceta,
                                        MeGustaReceta = meGustaReceta,
                                        ValoracionReceta = valoracionReceta
                                    });
                                }
                            }
                        }

                        return Ok(new BusquedaUsuariosRespuesta
                        {
                            Usuarios = usuariosDict.Values.ToList()
                        });
                    }
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