using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace RecetasDeCocina.Models.Entidades
{
    [Table("MeGusta")]
    public class MeGusta
    {
        public int MeGustaID { get; set; }
        public int UsuarioID { get; set; }
        public int RecetaID { get; set; }

    }
}