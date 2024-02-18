using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using cineLabo.dominio;

namespace cineLabo.datos
{
    // Interface defining the contract for data access operations
    internal interface iTicketDAO
    {
        int getProximoTicket();
        DataTable getListarTipoPagos();
        DataTable getListarSucursales();
        DataTable getListarClientes();
        DataTable getListarReservas();
        DataTable getListarFunciones();
        bool getInsertarTicket(Ticket t);
    }
}
