using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RecetasDeCocina.Models.Peticiones
{
    public class AgregarReceta
    {
        public string NombreReceta { get; set; }
        public string Ingredientes { get; set; }
        public string Preparacion { get; set; }
        public int UsuarioID { get; set; }
        public string Imagen { get; set; }
    }
}