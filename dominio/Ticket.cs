using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace cineLabo.dominio
{
    internal class Ticket
    {
        public int id_ticket;
        public int id_tipo_pago;
        public int id_sucursal;
        public int id_cliente;
        public DateTime fecha_compra;
        public List<DetalleTicket> DetalleTickets;

        public Ticket()
        {
            DetalleTickets = new List<DetalleTicket>();
        }
        public void AgregarDetalle(DetalleTicket detalle)
        {
            DetalleTickets.Add(detalle);
        }
        public void EliminarDetalle(int indice)
        {
            DetalleTickets.RemoveAt(indice);
        }
    }
}
