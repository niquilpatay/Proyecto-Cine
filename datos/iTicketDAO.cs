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
