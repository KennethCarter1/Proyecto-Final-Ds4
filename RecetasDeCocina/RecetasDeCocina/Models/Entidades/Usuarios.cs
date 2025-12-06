using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace RecetasDeCocina.Models.Entidades
{
    [Table("Usuarios")]
    public class Usuarios
    {
        public int UsuarioID { get; set; }
        public string Usuario { get; set; }
        public string Contrasena { get; set; }
        public string ImagenUsuario { get; set; }

    }
}