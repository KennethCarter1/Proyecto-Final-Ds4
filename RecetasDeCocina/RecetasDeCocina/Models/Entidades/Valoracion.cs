using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations.Schema;

namespace RecetasDeCocina.Models.Entidades
{
    [Table("Valoracion")]
    public class Valoracion
    {
        public int ValoracionID { get; set; }
        public int UsuarioID { get; set; }
        public int RecetaID { get; set; }
        public int Puntuacion { get; set; }

    }
}