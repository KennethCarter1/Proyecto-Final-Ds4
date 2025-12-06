using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RecetasDeCocina.Models.Peticiones
{
    public class QuitarMeGusta
    {
        public int UsuarioID { get; set; }
        public int RecetaID { get; set; }
    }
}