using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cineLabo.dominio
{
    internal class Funcion
    {
        public int id_funcion { get; set; }
        public int id_pelicula { get; set; }
        public DateTime fecha_hora { get; set; }
        public string idioma { get; set; }
        public double pre_unitario { get; set; }

        public Funcion(int id_funcion, int id_pelicula, DateTime fecha_hora, string idioma, double pre_unitario)
        {
            this.id_funcion = id_funcion;
            this.id_pelicula = id_pelicula;
            this.fecha_hora = fecha_hora;
            this.idioma = idioma;
            this.pre_unitario = pre_unitario;
        }
        public override string ToString()
        {
            return id_funcion + " - " + id_pelicula + " - " + fecha_hora + " - " + idioma;
        }
    }
}
