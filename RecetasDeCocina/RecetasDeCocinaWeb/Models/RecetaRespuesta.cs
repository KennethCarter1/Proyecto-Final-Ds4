using System.Collections.Generic;

namespace RecetasDeCocinaWeb.Models
{
    public class RecetaRespuesta
    {
        public int RecetaID { get; set; }
        public string NombreReceta { get; set; }
        public string Ingredientes { get; set; }
        public string Preparacion { get; set; }
        public double ValoracionReceta { get; set; }
        public int MeGustaReceta { get; set; }
        public int UsuarioID { get; set; }

        public string NombreUsuario { get; set; }
        public string ImagenUsuario { get; set; }

        public string ImagenReceta { get; set; }
    }

    public class ListaRecetas
    {
        public List<RecetaRespuesta> Recetas { get; set; }
    }
}