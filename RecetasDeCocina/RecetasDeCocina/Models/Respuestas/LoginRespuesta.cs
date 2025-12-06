using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RecetasDeCocina.Models.Respuestas
{
    public class LoginRespuesta
    {
        public bool Exito { get; set; }
        public string Mensaje { get; set; }
        public int? UsuarioID { get; set; }

    }
}