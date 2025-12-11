using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RecetasDeCocinaWeb.Models.Respuestas
{
    public class RecetaDetalleRespuesta
    {
        public int RecetaID { get; set; }
        public string NombreReceta { get; set; }
        public string Ingredientes { get; set; }
        public string Preparacion { get; set; }
        public string ImagenReceta { get; set; }
        public int MeGustaReceta { get; set; }
        public double ValoracionReceta { get; set; }
    }
}