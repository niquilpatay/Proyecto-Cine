using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace cineLabo.datos
{
    // Class representing a base for database access
    internal class accesoDB
    {
        protected SqlConnection conexion = new SqlConnection(Properties.Resources.cnnString);
        protected SqlCommand comando = new SqlCommand();
        protected SqlParameter parametro = new SqlParameter();

        // Open the database connection and set command properties
        protected void conectar()
        {
            conexion.Open();
            comando.Connection = conexion;
            comando.CommandType = CommandType.StoredProcedure;
        }

        // Close the database connection
        protected void desconectar()
        {
            conexion.Close();
        }
    }
}
