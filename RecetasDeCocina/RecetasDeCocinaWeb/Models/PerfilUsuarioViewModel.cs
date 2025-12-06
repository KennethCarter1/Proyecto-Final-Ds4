using System.Collections.Generic;

namespace RecetasDeCocinaWeb.Models   
{
    public class PerfilUsuarioViewModel
    {
        public PerfilUsuarioRespuesta Perfil { get; set; }
        public List<RecetaDetalleRespuesta> Recetas { get; set; }
    }

    public class PerfilUsuarioRespuesta
    {
        public int UsuarioID { get; set; }
        public string Usuario { get; set; }
        public string ImagenUsuario { get; set; }
        public int TotalMeGusta { get; set; }
        public double PromedioValoracion { get; set; }
    }

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