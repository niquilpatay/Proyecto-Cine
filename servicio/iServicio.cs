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
    // Interface defining the contract for the service layer
    internal interface iServicio
    {
        int proximoTicket(); // Method to get the next ticket number
        DataTable listarTipoPagos(); // Method to get a list of payment types
        DataTable listarSucursales(); // Method to get a list of branches/venues
        DataTable listarClientes(); // Method to get a list of customers/clients
        DataTable listarReservas(); // Method to get a list of reservations
        DataTable listarFunciones(); // Method to get a list of movie functions
        bool insertarTicket(Ticket t); // Method to insert a new ticket
    }
}
