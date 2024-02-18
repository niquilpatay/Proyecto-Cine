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
    // Class implementing data access logic, inheriting from accesoDB
    internal class ticketDAO : accesoDB
    {
        private static ticketDAO instancia;

        // Ensure a single instance of ticketDAO
        public static ticketDAO crearInstancia()
        {
            if (instancia == null)
            {
                instancia = new ticketDAO();
            }
            return instancia;
        }

        // Retrieve the next ticket using a stored procedure
        public int proximoTicket()
        {
            SqlParameter p = new SqlParameter("@prox", SqlDbType.Int);
            int verificacion = 0;

            try
            {
                comando.Parameters.Clear();
                conectar();
                comando.CommandText = "SP_PROXIMO_TICKET";
                p.Direction = ParameterDirection.Output;
                comando.Parameters.Add(p);
                comando.ExecuteNonQuery();

                try
                {
                    verificacion = (int)p.Value;
                }
                catch
                {
                    return 1;
                }

                return (int)p.Value;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                // Close the connection if open
                if (conexion.State == ConnectionState.Open)
                {
                    desconectar();
                }
            }
        }

        // Retrieve a list of payment types using a stored procedure
        public DataTable listarTipoPagos()
        {
            comando.Parameters.Clear();
            conectar();
            DataTable tabla = new DataTable();
            comando.CommandText = "SP_CONSULTAR_TIPOSPAGO";
            tabla.Load(comando.ExecuteReader());
            desconectar();
            return tabla;
        }

        // Retrieve a list of branches using a stored procedure
        public DataTable listarSucursales()
        {
            comando.Parameters.Clear();
            conectar();
            DataTable tabla = new DataTable();
            comando.CommandText = "SP_CONSULTAR_SUCURSALES";
            tabla.Load(comando.ExecuteReader());
            desconectar();
            return tabla;
        }

        // Retrieve a list of clients using a stored procedure
        public DataTable listarClientes()
        {
            comando.Parameters.Clear();
            conectar();
            DataTable tabla = new DataTable();
            comando.CommandText = "SP_CONSULTAR_CLIENTES2";
            tabla.Load(comando.ExecuteReader());
            desconectar();
            return tabla;
        }

        // Retrieve a list of reservations using a stored procedure
        public DataTable listarReservas()
        {
            comando.Parameters.Clear();
            conectar();
            DataTable tabla = new DataTable();
            comando.CommandText = "SP_CONSULTAR_RESERVAS";
            tabla.Load(comando.ExecuteReader());
            desconectar();
            return tabla;
        }

        // Retrieve a list of functions using a stored procedure
        public DataTable listarFunciones()
        {
            comando.Parameters.Clear();
            conectar();
            DataTable tabla = new DataTable();
            comando.CommandText = "SP_CONSULTAR_FUNCIONES";
            tabla.Load(comando.ExecuteReader());
            desconectar();
            return tabla;
        }

        // Inserts a new ticket and its details using a stored procedure
        public bool insertarTicket(Ticket t)
        {
            bool ok = true; // Flag to track the success of the operation
            SqlTransaction transaction = null; // SQL transaction for ensuring data integrity

            try
            {
                comando.Parameters.Clear(); // Clear any existing parameters
                conectar(); // Open the database connection

                transaction = conexion.BeginTransaction(); // Begin a SQL transaction
                comando.Transaction = transaction; // Assign the transaction to the command
                comando.CommandText = "SP_INSERTAR_TICKET"; // Set the stored procedure for inserting a ticket

                // Set parameters for the ticket
                comando.Parameters.AddWithValue("@id_tipo_pago", t.id_tipo_pago);
                comando.Parameters.AddWithValue("@id_sucursal", t.id_sucursal);
                comando.Parameters.AddWithValue("@id_cliente", t.id_cliente);
                comando.Parameters.AddWithValue("@fecha_compra", t.fecha_compra);
                comando.ExecuteNonQuery(); // Execute the command to insert the ticket
                comando.Parameters.Clear(); // Clear parameters for the next operation
                int count = 1;

                // Iterate through the details of the ticket
                foreach (DetalleTicket d in t.DetalleTickets)
                {
                    comando.CommandText = "SP_INSERTAR_DETALLES"; // Set the stored procedure for inserting ticket details
                                                                  // Set parameters for the ticket details
                    comando.Parameters.AddWithValue("@id_funcion", d.funcion.id_funcion);
                    comando.Parameters.AddWithValue("@id_asiento", d.id_asiento);
                    comando.Parameters.AddWithValue("@descuento", d.descuento);
                    comando.Parameters.AddWithValue("@id_reserva", d.id_reserva);
                    comando.Parameters.AddWithValue("@id_ticket", t.id_ticket); 
                    comando.Parameters.AddWithValue("@costo", d.costo);
                    count++;
                    comando.ExecuteNonQuery(); // Execute the command to insert ticket details
                    comando.Parameters.Clear(); // Clear parameters for the next iteration
                }

                transaction.Commit(); // Commit the transaction as all operations were successful
            }
            catch (Exception)
            {
                transaction.Rollback(); // Rollback the transaction in case of an exception
                ok = false; // Set the flag to indicate a failure
            }
            finally
            {
                if (conexion.State == ConnectionState.Open)
                {
                    desconectar(); // Close the database connection if it's still open
                }
            }
            return ok; // Return the success status
        }
    }
}
