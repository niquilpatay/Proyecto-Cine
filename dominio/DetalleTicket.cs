using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cineLabo.dominio
{
    internal class DetalleTicket
    {
        public Funcion funcion { get; set; }
        public int id_asiento { get; set; }
        public double descuento { get; set; }
        public int id_reserva { get; set; }
        public int id_ticket { get; set; }
        public double costo { get; set; }

        public DetalleTicket(Funcion funcion, int id_asiento, double descuento, int id_reserva, int id_ticket, double costo)
        {
            this.funcion = funcion;
            this.id_asiento = id_asiento;
            this.descuento = descuento;
            this.id_reserva = id_reserva;
            this.id_ticket = id_ticket;
            this.costo = costo;
        }
    }
}
