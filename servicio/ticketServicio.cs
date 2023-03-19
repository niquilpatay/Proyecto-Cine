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
    internal class ticketServicio : iServicio
    {
        private iTicketDAO dao;
        public ticketServicio()
        {
            dao = new gestorDB();
        }

        public int proximoTicket()
        {
            return dao.getProximoTicket();
        }
        public DataTable listarTipoPagos()
        {
            return dao.getListarTipoPagos();
        }
        public DataTable listarSucursales()
        {
            return dao.getListarSucursales();
        }
        public DataTable listarClientes()
        {
            return dao.getListarClientes();
        }
        public DataTable listarReservas()
        {
            return dao.getListarReservas();
        }
        public DataTable listarFunciones()
        {
            return dao.getListarFunciones();
        }
        public bool insertarTicket(Ticket t)
        {
            return dao.getInsertarTicket(t);
        }
    }
}
