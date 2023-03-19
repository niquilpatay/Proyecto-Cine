using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using cineLabo.dominio;
using System.Data;
using System.Data.SqlClient;

namespace cineLabo.servicio
{
    internal interface iServicio
    {
        int proximoTicket();
        DataTable listarTipoPagos();
        DataTable listarSucursales();
        DataTable listarClientes();
        DataTable listarReservas();
        DataTable listarFunciones();
        bool insertarTicket(Ticket t);
    }
}
