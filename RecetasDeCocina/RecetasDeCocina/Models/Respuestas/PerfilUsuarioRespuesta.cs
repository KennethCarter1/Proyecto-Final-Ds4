using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace RecetasDeCocina.Models.Respuestas
{
    public class PerfilUsuarioRespuesta
    {
        [Key]
        public int UsuarioID { get; set; }
        public string Usuario { get; set; }
        public string ImagenUsuario { get; set; }
        public int TotalMeGusta { get; set; }
        public double PromedioValoracion { get; set; }
    }
}