using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using RecetasDeCocina.Models.Entidades;

namespace RecetasDeCocina.Data.ApplicationDbContext
{
    public class AplicacionDbContext: DbContext
    {
        public AplicacionDbContext() : base("name=RecetasConnection")
        {

        }

        //public DbSet<Recetas> Recetas { get; set; }
        //public DbSet<Usuarios> Usuarios { get; set; }
        //public DbSet<MeGusta> MeGustas { get; set; }
        //public DbSet<Valoracion> Valoraciones { get; set; }
    }
}