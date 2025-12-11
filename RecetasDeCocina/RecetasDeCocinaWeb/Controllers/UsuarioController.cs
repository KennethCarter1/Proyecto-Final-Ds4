using Newtonsoft.Json;
using RecetasDeCocinaWeb.Models;
using RecetasDeCocinaWeb.Models.Respuestas;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;
using System.IO;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace RecetasDeCocinaWeb.Controllers
{
    public class UsuarioController : Controller
    {
        private string apiBaseUrl = System.Configuration.ConfigurationManager.AppSettings["ApiBaseUrl"];

        public async Task<ActionResult> MiPerfil()
        {
            if (Session["UsuarioID"] == null)
                return RedirectToAction("Login", "Auth");

            int usuarioId = (int)Session["UsuarioID"];


            var modeloVacio = new PerfilUsuarioViewModel
            {
                Perfil = new PerfilUsuarioRespuesta(),
                Recetas = new List<Models.RecetaDetalleRespuesta>()
            };

            try
            {
                using (var client = new HttpClient())
                {

                    client.DefaultRequestHeaders.Accept.Clear();
                    client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));

                    var response = await client.GetAsync($"{apiBaseUrl}usuarios/perfil/{usuarioId}");

                    if (response.IsSuccessStatusCode)
                    {
                        var json = await response.Content.ReadAsStringAsync();
                        var perfilCompleto = JsonConvert.DeserializeObject<PerfilUsuarioViewModel>(json);

                        Trace.TraceWarning("ImagenUsuario en Perfil: " + perfilCompleto?.Perfil?.ImagenUsuario);

                        return View(perfilCompleto ?? modeloVacio);
                    }
                    else
                    {
                        ViewBag.Error = "No se pudo cargar el perfil del usuario";
                        return View(modeloVacio);
                    }
                }
            }
            catch (System.Exception ex)
            {
                ViewBag.Error = "Error al conectar con el servidor: " + ex.Message;
                return View(modeloVacio);
            }
        }


        public async Task<ActionResult> UsuarioBusqueda(string query)
        {
            var resultado = new BusquedaUsuariosRespuesta { Usuarios = new List<UsuarioBusquedaRespuesta>() };

            if (!string.IsNullOrWhiteSpace(query))
            {
                var apiBaseUrl = ConfigurationManager.AppSettings["ApiBaseUrl"];

                string endpoint;
                if (apiBaseUrl.EndsWith("/api/", StringComparison.OrdinalIgnoreCase) || apiBaseUrl.EndsWith("api/", StringComparison.OrdinalIgnoreCase))
                {
                    endpoint = $"{apiBaseUrl}usuarios/buscar?nombre={Uri.EscapeDataString(query)}";
                }
                else
                {
                    endpoint = $"{apiBaseUrl}api/usuarios/buscar?nombre={Uri.EscapeDataString(query)}";
                }

                using (var client = new HttpClient())
                {
                    var response = await client.GetAsync(endpoint);

                    var json = await response.Content.ReadAsStringAsync();

                    if (response.IsSuccessStatusCode)
                    {
                        resultado = JsonConvert.DeserializeObject<BusquedaUsuariosRespuesta>(json);

                    }
                }
            }
            foreach (var usuario in resultado.Usuarios)
            {
                System.Diagnostics.Debug.WriteLine("ImagenUsuario: " + usuario.ImagenUsuario);
            }

            return View(resultado);
        }

        [HttpGet]
        public ActionResult AgregarReceta()
        {
            return View();
        }

        [HttpPost]
        public async Task<ActionResult> AgregarReceta(AgregarReceta model, HttpPostedFileBase ImagenUsuario)
        {
            try
            {
                // 1. Guardar la imagen (si hay)
                var carpetaDestino = Server.MapPath("~/Content/comida");
                if (!Directory.Exists(carpetaDestino))
                    Directory.CreateDirectory(carpetaDestino);

                if (ImagenUsuario != null && ImagenUsuario.ContentLength > 0)
                {
                    Trace.TraceInformation($"Uploading receta image: {ImagenUsuario.FileName}, {ImagenUsuario.ContentLength}");
                    var nombreArchivo = Guid.NewGuid().ToString("N") + Path.GetExtension(ImagenUsuario.FileName);
                    var rutaFisica = Path.Combine(carpetaDestino, nombreArchivo);

                    try
                    {
                        ImagenUsuario.SaveAs(rutaFisica);
                        model.Imagen = "/Content/comida/" + nombreArchivo;
                    }
                    catch (Exception ex)
                    {
                        Trace.TraceError("Error saving image file: " + ex);
                        ViewBag.Error = "No se pudo guardar la imagen de la receta. Verifique permisos de la carpeta y el tamaño del archivo.";
                        return View(model);
                    }
                }
                else
                {
                    model.Imagen = "/Content/comida/comida-default.png";
                }

                // 2. Asignar UsuarioID
                if (Session["UsuarioID"] != null)
                    model.UsuarioID = (int)Session["UsuarioID"];
                else
                    return RedirectToAction("Login", "Usuario");

  
                string apiBaseUrl = ConfigurationManager.AppSettings["ApiBaseUrl"];
                using (var client = new HttpClient())
                {
                    var json = JsonConvert.SerializeObject(model);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");
                    var response = await client.PostAsync(apiBaseUrl + "recetas", content);

                    if (response.IsSuccessStatusCode)
                    {
                        var result = await response.Content.ReadAsStringAsync();
                        var respuesta = JsonConvert.DeserializeObject<dynamic>(result);

                        if (respuesta.Exito == true)
                        {
                            TempData["mensaje"] = (string)respuesta.Mensaje;
                            return RedirectToAction("MiPerfil", "Usuario");
                        }
                        else
                        {
                            ViewBag.Error = (string)respuesta.Mensaje;
                            return View(model);
                        }
                    }
                    else
                    {
                        ViewBag.Error = "Error al conectar con la API de recetas";
                        return View(model);
                    }
                }
            }
            catch (Exception ex)
            {
                Trace.TraceError("Error agregar receta: " + ex);
                ViewBag.Error = "No se pudo agregar la receta: " + ex.Message;
                return View(model);
            }
        }

    }
}
