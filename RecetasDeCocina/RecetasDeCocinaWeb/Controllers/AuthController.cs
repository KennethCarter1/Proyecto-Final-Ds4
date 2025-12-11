using Newtonsoft.Json;
using RecetasDeCocinaWeb.Models;
using System;
using System.Configuration;
using System.IO;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Diagnostics;

namespace RecetasDeCocinaWeb.Controllers
{
    public class AuthController : Controller
    {
        private readonly string apiBaseUrl = ConfigurationManager.AppSettings["ApiBaseUrl"];

        // GET: Login
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public async Task<ActionResult> Login(Login model)
        {
            using (var client = new HttpClient())
            {
                var json = JsonConvert.SerializeObject(model);
                var content = new StringContent(json, System.Text.Encoding.UTF8, "application/json");

                var response = await client.PostAsync($"{apiBaseUrl}/auth/login", content);

                if (response.IsSuccessStatusCode)
                {
                    var result = await response.Content.ReadAsStringAsync();
                    
                    var respuesta = JsonConvert.DeserializeObject<dynamic>(result);


                    if (respuesta.Exito == true)
                    {

                        Session["UsuarioID"] = (int)respuesta.UsuarioID;
                       
                        
                        return RedirectToAction("Index", "Recetas");
                    }
                    else
                    {
                        ViewBag.Error = (string)respuesta.Mensaje;
                        return View(model);
                    }
                }
                else
                {
                    ViewBag.Error = "Error al conectar con el servidor";
                    return View(model);
                }
            }
        }

        // GET: Registro
        public ActionResult Registro()
        {
            return View();
        }

        [HttpPost]
        public async Task<ActionResult> Registro(Registro model, HttpPostedFileBase ImagenUsuario)
        {
            try
            {
                var carpetaDestino = Server.MapPath("~/Content/Usuarios");
                if (!Directory.Exists(carpetaDestino))
                    Directory.CreateDirectory(carpetaDestino);

                if (ImagenUsuario != null && ImagenUsuario.ContentLength > 0)
                {
                    // Log file info
                    Trace.TraceInformation($"Uploading file: Name={ImagenUsuario.FileName}, Length={ImagenUsuario.ContentLength}");

                    var nombreArchivo = Guid.NewGuid().ToString("N") + Path.GetExtension(ImagenUsuario.FileName);
                    var rutaFisica = Path.Combine(carpetaDestino, nombreArchivo);

                    try
                    {
                        ImagenUsuario.SaveAs(rutaFisica);
                        model.ImagenUsuario = "/Content/Usuarios/" + nombreArchivo;
                    }
                    catch (Exception ex)
                    {
                        // Log and return friendly error instead of crashing
                        Trace.TraceError("Error saving uploaded file: " + ex);
                        ViewBag.Error = "No se pudo guardar la imagen. Verifique permisos de la carpeta y el tamaño del archivo.";
                        return View(model);
                    }
                }
                else
                {
                    model.ImagenUsuario = "/Content/Usuarios/default.png";
                }

                using (var client = new HttpClient())
                {
                    var json = JsonConvert.SerializeObject(model);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");
                    var response = await client.PostAsync(apiBaseUrl + "auth/registro", content);

                    if (response.IsSuccessStatusCode)
                    {
                        var result = await response.Content.ReadAsStringAsync();
                        var respuesta = JsonConvert.DeserializeObject<dynamic>(result);

                        if (respuesta.Exito == true)
                            return RedirectToAction("Login");
                        else
                        {
                            ViewBag.Error = (string)respuesta.Mensaje;
                            return View(model);
                        }
                    }
                    else
                    {
                        ViewBag.Error = "Error al conectar con el servidor";
                        return View(model);
                    }
                }
            }
            catch (Exception ex)
            {
                // ATRAPA cualquier excepción del método.
                Trace.TraceError("Registro error: " + ex);
                ViewBag.Error = "Error en el registro: " + ex.Message;
                return View(model);
            }
        }

        public ActionResult Logout()
        {
            Session.Clear();
            Session.Abandon();
            return RedirectToAction("Login");
        }
    }
}