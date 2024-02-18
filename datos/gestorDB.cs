using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using cineLabo.dominio;
using System.Data;
using System.Data.SqlClient;

namespace cineLabo.datos
{
    // Class implementing iTicketDAO interface, serving as a manager for database operations
    internal class gestorDB : iTicketDAO
    {
        // Methods calling corresponding methods from ticketDAO instance
        public int getProximoTicket() => ticketDAO.crearInstancia().proximoTicket();
        public bool getInsertarTicket(Ticket t) => ticketDAO.crearInstancia().insertarTicket(t);
        public DataTable getListarTipoPagos() => ticketDAO.crearInstancia().listarTipoPagos();
        public DataTable getListarSucursales() => ticketDAO.crearInstancia().listarSucursales();
        public DataTable getListarClientes() => ticketDAO.crearInstancia().listarClientes();
        public DataTable getListarReservas() => ticketDAO.crearInstancia().listarReservas();
        public DataTable getListarFunciones() => ticketDAO.crearInstancia().listarFunciones();
    }
}
