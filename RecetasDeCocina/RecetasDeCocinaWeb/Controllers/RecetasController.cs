using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace RecetasDeCocinaWeb.Controllers
{
    public class RecetasController : Controller
    {
        private string apiBaseUrl = ConfigurationManager.AppSettings["ApiBaseUrl"];

        // GET: Recetas
        public async Task<ActionResult> Index()
        {
            if (Session["UsuarioID"] == null)
            {
                return RedirectToAction("Login", "Auth");
            }

            try
            {
                using(var client= new HttpClient())
                {
                    var response = await client.GetAsync($"{apiBaseUrl}recetas");

                    if (response.IsSuccessStatusCode)
                    {
                        var result = await response.Content.ReadAsStringAsync();
                        var datos = JsonConvert.DeserializeObject<Models.ListaRecetas>(result);

                        return View(datos.Recetas);
                    }
                    else
                    {
                        ViewBag.Error = "No se pudieron cargar las recetas";
                        return View();
                    }


                }
            }
            catch (Exception ex)
            {
                ViewBag.Error = "Error al conectar con el servidor: " + ex.Message;
                return View();
            }

        }


        [HttpPost]
        public ActionResult CalificarReceta(int recetaId, int calificacion, string returnUrl)
        {
            try
            {
                if (Session["UsuarioID"] == null)
                {
                    TempData["Error"] = "Debe iniciar sesión para calificar";
                    return RedirectToAction("Login", "Auth");
                }

                int usuarioId = Convert.ToInt32(Session["UsuarioID"]);

                if (calificacion < 1 || calificacion > 10)
                {
                    TempData["Error"] = "Calificación inválida";
                    return RedirectToAction("Index");
                }

                string url = apiBaseUrl + $"recetas/{recetaId}/calificar";

                var datos = new
                {
                    UsuarioID = usuarioId,
                    Calificacion = calificacion
                };

                using (var client = new HttpClient())
                {
                    var json = JsonConvert.SerializeObject(datos);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");

                    var response = client.PostAsync(url, content).Result;

                    if (response.IsSuccessStatusCode)
                    {
                        TempData["Mensaje"] = "¡Calificación guardada exitosamente!";
                    }
                    else
                    {
                        TempData["Error"] = "Error al guardar la calificación";
                    }
                }
                if (!string.IsNullOrEmpty(returnUrl))
                {
                    return Redirect(returnUrl);
                }

                return RedirectToAction("Index");


            }
            catch (Exception ex)
            {
                TempData["Error"] = "Error: " + ex.Message;
                return RedirectToAction("Index");
            }
        }

        [HttpPost]
        public ActionResult ToggleMeGusta(int recetaId, string returnUrl)
        {
            try
            {
                if (Session["UsuarioID"] == null)
                {
                    TempData["Error"] = "Debe iniciar sesión para dar Me Gusta";
                    return RedirectToAction("Login", "Auth");
                }

                int usuarioId = Convert.ToInt32(Session["UsuarioID"]);

                string url = apiBaseUrl + $"recetas/{recetaId}/me-gusta";

                var datos = new
                {
                    UsuarioID = usuarioId
                };

                using (var client = new HttpClient())
                {
                    var json = JsonConvert.SerializeObject(datos);
                    var content = new StringContent(json, Encoding.UTF8, "application/json");

                    var response = client.PostAsync(url, content).Result;

                    if (response.IsSuccessStatusCode)
                    {
                        TempData["Mensaje"] = "Me gusta actualizado";
                    }
                    else
                    {
                        TempData["Error"] = "Error al actualizar me gusta";
                    }
                }

                if (!string.IsNullOrEmpty(returnUrl))
                {
                    return Redirect(returnUrl);
                }


                return RedirectToAction("Index");
            }
            catch (Exception ex)
            {
                TempData["Error"] = "Error: " + ex.Message;
                return RedirectToAction("Index");
            }
        }

        public async Task<ActionResult> Populares()
        {
            if (Session["UsuarioID"] == null)
            {
                return RedirectToAction("Login", "Auth");
            }

            try
            {
                using (var client = new HttpClient())
                {
                    var response = await client.GetAsync($"{apiBaseUrl}recetas/mas-me-gusta");

                    if (response.IsSuccessStatusCode)
                    {
                        var result = await response.Content.ReadAsStringAsync();
                        var datos = JsonConvert.DeserializeObject<Models.ListaRecetas>(result);

                        return View(datos.Recetas);
                    }
                    else
                    {
                        ViewBag.Error = "No se pudieron cargar las recetas populares";
                        return View();
                    }
                }
            }
            catch (Exception ex)
            {
                ViewBag.Error = "Error al conectar con el servidor: " + ex.Message;
                return View();
            }
        }

        public async Task<ActionResult> Calificadas()
        {
            if (Session["UsuarioID"] == null)
            {
                return RedirectToAction("Login", "Auth");
            }

            try
            {
                using (var client = new HttpClient())
                {
                    var response = await client.GetAsync($"{apiBaseUrl}recetas/mejor-calificacion");

                    if (response.IsSuccessStatusCode)
                    {
                        var result = await response.Content.ReadAsStringAsync();
                        var datos = JsonConvert.DeserializeObject<Models.ListaRecetas>(result);

                        return View(datos.Recetas);
                    }
                    else
                    {
                        ViewBag.Error = "No se pudieron cargar las recetas populares";
                        return View();
                    }
                }
            }
            catch (Exception ex)
            {
                ViewBag.Error = "Error al conectar con el servidor: " + ex.Message;
                return View();
            }
        }

    }
}