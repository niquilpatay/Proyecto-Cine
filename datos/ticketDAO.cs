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
    internal class ticketDAO : accesoDB
    {
        private static ticketDAO instancia;
        public static ticketDAO crearInstancia()
        {
            if(instancia == null)
            {
                instancia = new ticketDAO();
            }
            return instancia;
        }

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
            catch(Exception e)
            {
                throw e;
            }
            finally
            {
                if(conexion.State == ConnectionState.Open)
                {
                    desconectar();
                }
            }
        }

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

        public bool insertarTicket(Ticket t)
        {
            bool ok = true;
            SqlTransaction transaction = null;

            try
            {
                comando.Parameters.Clear();
                conectar();

                transaction = conexion.BeginTransaction();
                comando.Transaction = transaction;
                comando.CommandText = "SP_INSERTAR_TICKET";
                comando.Parameters.AddWithValue("@id_tipo_pago", t.id_tipo_pago);
                comando.Parameters.AddWithValue("@id_sucursal", t.id_sucursal);
                comando.Parameters.AddWithValue("@id_cliente", t.id_cliente);
                comando.Parameters.AddWithValue("@fecha_compra", t.fecha_compra);
                comando.ExecuteNonQuery();
                comando.Parameters.Clear();
                int count = 1;

                foreach (DetalleTicket d in t.DetalleTickets)
                {
                    comando.CommandText = "SP_INSERTAR_DETALLES";
                    comando.Parameters.AddWithValue("@id_funcion", d.funcion.id_funcion);
                    comando.Parameters.AddWithValue("@id_asiento", d.id_asiento);
                    comando.Parameters.AddWithValue("@descuento", d.descuento);
                    comando.Parameters.AddWithValue("@id_reserva", d.id_reserva);
                    comando.Parameters.AddWithValue("@id_ticket", t.id_ticket);
                    comando.Parameters.AddWithValue("@costo", d.costo);
                    count++;
                    comando.ExecuteNonQuery();
                    comando.Parameters.Clear();
                }

                transaction.Commit();
            }
            catch (Exception)
            {
                transaction.Rollback();
                ok = false;
            }
            finally
            {
                if (conexion.State == ConnectionState.Open)
                {
                    desconectar();
                }
            }
            return ok;
        }
    }
}
