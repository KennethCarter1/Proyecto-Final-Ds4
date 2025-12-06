using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Mvc;
using Newtonsoft.Json;
using RecetasDeCocinaWeb.Models;
using System.Collections.Generic;

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
                Recetas = new List<RecetaDetalleRespuesta>()
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
    }
}