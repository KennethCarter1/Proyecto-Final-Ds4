using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RecetasDeCocina.Models.Respuestas
{
    public class UsuarioBusquedaRespuesta
    {
        public int UsuarioID { get; set; }
        public string Usuario { get; set; }
        public string ImagenUsuario { get; set; }
        public int TotalMeGusta { get; set; }
        public double PromedioValoracion { get; set; }
        public List<RecetaDetalleRespuesta> Recetas { get; set; }
    }
}