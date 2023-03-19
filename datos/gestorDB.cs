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
    internal class gestorDB : iTicketDAO
    {
        public int getProximoTicket()
        {
            return ticketDAO.crearInstancia().proximoTicket();
        }
        public bool getInsertarTicket(Ticket t)
        {
            return ticketDAO.crearInstancia().insertarTicket(t);
        }
        public DataTable getListarTipoPagos()
        {
            return ticketDAO.crearInstancia().listarTipoPagos();
        }
        public DataTable getListarSucursales()
        {
            return ticketDAO.crearInstancia().listarSucursales();
        }
        public DataTable getListarClientes()
        {
            return ticketDAO.crearInstancia().listarClientes();
        }
        public DataTable getListarReservas()
        {
            return ticketDAO.crearInstancia().listarReservas();
        }
        public DataTable getListarFunciones()
        {
            return ticketDAO.crearInstancia().listarFunciones();
        }
    }
}
