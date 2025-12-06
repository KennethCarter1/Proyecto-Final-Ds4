using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RecetasDeCocina.Models.Respuestas
{
    public class RecetaRespuesta
    {
        public int RecetaID { get; set; }
        public string NombreReceta { get; set; }
        public string Ingredientes { get; set; }
        public string Preparacion { get; set; }
        public double ValoracionReceta { get; set; }
        public int MeGustaReceta { get; set; }
        public string NombreUsuario { get; set; }
        public string ImagenUsuario { get; set; }
    }
}