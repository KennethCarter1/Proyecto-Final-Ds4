using System;
using System.Configuration;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using Newtonsoft.Json;
using RecetasDeCocinaWeb.Models;

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
        public async Task<ActionResult> Registro(Registro model)
        {
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
                    {
                        return RedirectToAction("Login");
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

        public ActionResult Logout()
        {
            Session.Clear();
            Session.Abandon();
            return RedirectToAction("Login");
        }
    }
}