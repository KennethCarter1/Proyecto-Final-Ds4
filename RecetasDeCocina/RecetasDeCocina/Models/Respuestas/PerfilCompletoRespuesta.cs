using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace RecetasDeCocina.Models.Respuestas
{
    public class PerfilCompletoRespuesta
    {

        public PerfilUsuarioRespuesta Perfil { get; set; }
        public List<RecetaDetalleRespuesta> Recetas { get; set; }
    }
}