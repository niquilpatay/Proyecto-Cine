using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using cineLabo.dominio;
using cineLabo.datos;
using System.Data;
using System.Data.SqlClient;

namespace cineLabo.servicio
{
    // Concrete implementation of iServicio, using iTicketDAO for data access
    internal class ticketServicio : iServicio
    {
        private iTicketDAO dao; // Data Access Object for ticket-related operations

        // Constructor initializing the data access object
        public ticketServicio()
        {
            dao = new gestorDB();
        }

        // Implementation of iServicio method to get the next ticket number
        public int proximoTicket()
        {
            return dao.getProximoTicket();
        }

        // Implementation of iServicio method to get a list of payment types
        public DataTable listarTipoPagos()
        {
            return dao.getListarTipoPagos();
        }

        // Implementation of iServicio method to get a list of branches/venues
        public DataTable listarSucursales()
        {
            return dao.getListarSucursales();
        }

        // Implementation of iServicio method to get a list of customers/clients
        public DataTable listarClientes()
        {
            return dao.getListarClientes();
        }

        // Implementation of iServicio method to get a list of reservations
        public DataTable listarReservas()
        {
            return dao.getListarReservas();
        }

        // Implementation of iServicio method to get a list of movie functions
        public DataTable listarFunciones()
        {
            return dao.getListarFunciones();
        }

        // Implementation of iServicio method to insert a new ticket
        public bool insertarTicket(Ticket t)
        {
            return dao.getInsertarTicket(t);
        }
    }
}
