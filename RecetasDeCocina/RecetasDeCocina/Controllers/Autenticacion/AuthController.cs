using RecetasDeCocina.Data.ApplicationDbContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.UI.WebControls;
using RecetasDeCocina.Models.Peticiones;
using RecetasDeCocina.Models.Respuestas;
using System.Data.SqlClient;

namespace RecetasDeCocina.Controllers.Autenticacion
{
    [RoutePrefix("api/auth")]
    public class AuthController : ApiController
    {
        private AplicacionDbContext db = new AplicacionDbContext();

        [HttpPost]
        [Route("login")]
        public IHttpActionResult Login(Logins datos)
        {
            if (datos == null || string.IsNullOrEmpty(datos.Usuario) || string.IsNullOrEmpty(datos.Contrasena))
            {
                return BadRequest("Datos de inicio de sesión incompletos.");
            }

            try
            {
                var resultado = db.Database.SqlQuery<IniciarSesionResultado>(
                    "EXEC IniciarSesion @Usuario, @Contrasena",
                    new SqlParameter("@Usuario", datos.Usuario),
                    new SqlParameter("@Contrasena", datos.Contrasena)
                ).FirstOrDefault();

                if (resultado != null && resultado.Exito == 1)
                {
                    return Ok(new LoginRespuesta
                    {
                        Exito = true,
                        Mensaje = "Inicio de sesión exitoso.",
                        UsuarioID = resultado.UsuarioID.Value  
                    });
                }
                else
                {
                    return Ok(new LoginRespuesta
                    {
                        Exito = false,
                        Mensaje = "Usuario o contraseña incorrectos.",
                        UsuarioID = null
                    });
                }
            }
            catch (Exception ex)
            {
                return InternalServerError(ex);
            }
        }

        [HttpPost]
        [Route("registro")]
        public IHttpActionResult Registro(Registro datos)
        {
            if (datos == null || string.IsNullOrEmpty(datos.Usuario) || string.IsNullOrEmpty(datos.Contrasena))
            {
                return Ok(new MensajeRespuesta
                {
                    Exito = false,
                    Mensaje = "Usuario y contraseña son requeridos"
                });
            }

            try
            {
                var resultado = db.Database.SqlQuery<RegistrarUsuarioResultado>(
                    "EXEC RegistrarUsuario @Usuario, @Contrasena, @ImagenUsuario",
                    new SqlParameter("@Usuario", datos.Usuario),
                    new SqlParameter("@Contrasena", datos.Contrasena),
                    new SqlParameter("@ImagenUsuario", datos.ImagenUsuario ?? "") 
                ).FirstOrDefault();

                if (resultado != null && resultado.Exito == 1)
                {
                    return Ok(new MensajeRespuesta
                    {
                        Exito = true,
                        Mensaje = "Usuario registrado correctamente"
                    });
                }
                else
                {
                    return Ok(new MensajeRespuesta
                    {
                        Exito = false,
                        Mensaje = "El usuario ya existe"
                    });
                }
            }
            catch (SqlException ex) 
            {
                return Ok(new MensajeRespuesta
                {
                    Exito = false,
                    Mensaje = $"Error SQL: {ex.Message}"
                });
            }
            catch (Exception ex)
            {
                return Ok(new MensajeRespuesta
                {
                    Exito = false,
                    Mensaje = $"Error: {ex.Message}"
                });
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
