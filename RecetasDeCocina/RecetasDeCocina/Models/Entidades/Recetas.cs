using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace RecetasDeCocina.Models.Entidades
{
    [Table("Recetas")]
    public class Recetas
    {
        public int RecetaID { get; set; }
        public string Nombre { get; set; }
        public string Ingredientes { get; set; }
        public string Preparacion { get; set; }
        public double ValoracionReceta { get; set; }
        public int MegustaReceta { get; set; }
        public int UsuarioID { get; set; }
        public string Imagen { get; set; }
    }
}