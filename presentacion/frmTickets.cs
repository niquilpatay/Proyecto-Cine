using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using cineLabo.dominio;
using cineLabo.datos;
using cineLabo.servicio;
using System.Data.SqlClient;

namespace cineLabo
{
    // This form handles the creation and management of tickets
    public partial class frmTickets : Form
    {
        Ticket nuevo; // Represents the new ticket being created
        iServicio servicio; // Service layer interface for ticket-related operations

        // Constructor for the form
        public frmTickets()
        {
            InitializeComponent();
            nuevo = new Ticket(); // Initialize a new ticket
            servicio = new implementFactoryServicio().crearServicio(); // Initialize the service layer
            ultimoTicket(); // Display the next ticket number
            totalDetalles(); // Display the total number of details
        }

        // Method to display the next ticket number
        private void ultimoTicket()
        {
            lblProx.Text = "Ticket Nº: " + servicio.proximoTicket();
        }

        // Method to display the total number of details in the DataGridView
        private void totalDetalles()
        {
            lblDetalles.Text = "Cant. de detalles: " + dgvDetalles.Rows.Count;
        }

        // Load event handler for the form
        private void frmTickets_Load(object sender, EventArgs e)
        {
            // Populate combo boxes and DataGridView on form load
            cargarComboTipoPago();
            cargarComboSucursal();
            cargarComboCliente();
            cargarComboFuncion();
            cargarComboReserva();
            cargarDgvFunciones();
            limpiar(); // Clear the form
        }

        // Method to populate the payment type combo box
        private void cargarComboTipoPago()
        {
            DataTable tabla = servicio.listarTipoPagos();
            // Binding data to the combo box
            cboTipoPago.DataSource = tabla;
            cboTipoPago.ValueMember = tabla.Columns[0].ColumnName;
            cboTipoPago.DisplayMember = tabla.Columns[1].ColumnName;
            cboTipoPago.DropDownStyle = ComboBoxStyle.DropDownList;
        }

        // Method to populate the branch/venue combo box
        private void cargarComboSucursal()
        {
            DataTable tabla = servicio.listarSucursales();
            // Binding data to the combo box
            cboSucursal.DataSource = tabla;
            cboSucursal.ValueMember = tabla.Columns[0].ColumnName;
            cboSucursal.DisplayMember = tabla.Columns[2].ColumnName;
            cboSucursal.DropDownStyle = ComboBoxStyle.DropDownList;
        }

        // Method to populate the customer/client combo box
        private void cargarComboCliente()
        {
            DataTable tabla = servicio.listarClientes();
            // Binding data to the combo box
            cboCliente.DataSource = tabla;
            cboCliente.ValueMember = tabla.Columns[0].ColumnName;
            cboCliente.DisplayMember = tabla.Columns[1].ColumnName;
            cboCliente.DropDownStyle = ComboBoxStyle.DropDownList;
        }

        // Method to populate the movie function combo box
        private void cargarComboFuncion()
        {
            DataTable tabla = servicio.listarFunciones();
            // Binding data to the combo box
            cboFunciones.DataSource = tabla;
            cboFunciones.ValueMember = tabla.Columns[0].ColumnName;
            cboFunciones.DisplayMember = tabla.Columns[0].ColumnName;
            cboFunciones.DropDownStyle = ComboBoxStyle.DropDownList;
        }

        // Method to populate the DataGridView with movie functions
        private void cargarDgvFunciones()
        {
            DataTable tabla = servicio.listarFunciones();
            dgvFunciones.DataSource = tabla;
        }

        // Method to populate the reservation combo box
        private void cargarComboReserva()
        {
            DataTable tabla = servicio.listarReservas();
            // Binding data to the combo box
            cboReservas.DataSource = tabla;
            cboReservas.ValueMember = tabla.Columns[0].ColumnName;
            cboReservas.DisplayMember = tabla.Columns[1].ColumnName;
            cboReservas.DropDownStyle = ComboBoxStyle.DropDownList;
        }

        // Method to clear the form
        private void limpiar()
        {
            ultimoTicket(); // Display the next ticket number
                            // Resetting various controls to their default or empty states
            cboTipoPago.SelectedIndex = -1;
            cboSucursal.SelectedIndex = -1;
            cboCliente.SelectedIndex = -1;
            dtpFecha.Value = Convert.ToDateTime(DateTime.Today);
            cboFunciones.SelectedIndex = -1;
            nudDescuento.Value = 0;
            nudAsiento.Value = 1;
            cboReservas.SelectedIndex = -1;
            nudCosto.Value = 0;
            dgvDetalles.Rows.Clear();
            totalDetalles(); // Display the total number of details
        }

        // Cancel button click event handler
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            // Display a confirmation dialog and close the form if confirmed
            if (MessageBox.Show("¿Segur@ de cancelar?", "CANCELANDO", MessageBoxButtons.YesNo,
                MessageBoxIcon.Question) == DialogResult.Yes)
            {
                this.Dispose();
            }
            else
            {
                return;
            }
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            // Validation checks to ensure necessary information is entered
            if (cboFunciones.Text.Equals(string.Empty))
            {
                MessageBox.Show("Insertar función", "AVISO",
                    MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }
            if (nudAsiento.Value == 0)
            {
                MessageBox.Show("Ingresar # de asiento", "AVISO",
                    MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                nudAsiento.Focus();
                return;
            }
            if (cboReservas.Text == string.Empty)
            {
                MessageBox.Show("Ingresar estado de reserva", "AVISO",
                    MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                cboReservas.Focus();
                return;
            }
            if (nudCosto.Value == 0)
            {
                MessageBox.Show("Ingresar costo", "AVISO",
                    MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                return;
            }

            // Check if the combination of function and seat is already inserted
            foreach (DataGridViewRow fila in dgvDetalles.Rows)
            {
                if (fila.Cells["idFuncion"].Value.ToString().Equals(cboFunciones.Text) &&
                    fila.Cells["asiento"].Value.ToString().Equals(nudAsiento.Text))
                {
                    MessageBox.Show("Función/asiento ya insertados", "AVISO",
                    MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                    return;
                }
            }

            // Extract information from selected function for creating a DetalleTicket
            DataRowView item = (DataRowView)cboFunciones.SelectedItem;
            int id_funcion = Convert.ToInt32(item.Row.ItemArray[0]);
            int id_pelicula = Convert.ToInt32(item.Row.ItemArray[1]);
            DateTime fecha = Convert.ToDateTime(item.Row.ItemArray[3]);
            string idioma = item.Row.ItemArray[4].ToString();
            double precio = Convert.ToDouble(item.Row.ItemArray[5]);

            // Create a Funcion object
            Funcion f = new Funcion(id_funcion, id_pelicula, fecha, idioma, precio);
            int asiento = Convert.ToInt32(nudAsiento.Value);
            double descuento = Convert.ToDouble(nudDescuento.Value);
            int reserva = Convert.ToInt32(cboReservas.SelectedValue);
            int id_t = servicio.proximoTicket();
            double costo = Convert.ToDouble(nudCosto.Value);

            // Create a DetalleTicket and add it to the Ticket instance
            DetalleTicket d = new DetalleTicket(f, asiento, descuento, reserva, id_t, costo);
            nuevo.AgregarDetalle(d);

            // Add the details to the DataGridView
            dgvDetalles.Rows.Add(new object[] { id_funcion, asiento, reserva, costo });
            totalDetalles(); // Update the total details count
        }

        private void btnAceptar_Click(object sender, EventArgs e)
        {
            // Validation checks for required information
            if (cboTipoPago.Text == string.Empty)
            {
                MessageBox.Show("Ingresar tipo de pago", "AVISO",
                    MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                cboTipoPago.Focus();
                return;
            }
            if (cboSucursal.Text == string.Empty)
            {
                MessageBox.Show("Ingresar sucursal", "AVISO",
                    MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                cboSucursal.Focus();
                return;
            }
            if (cboCliente.Text == string.Empty)
            {
                MessageBox.Show("Ingresar cliente", "AVISO",
                    MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                cboCliente.Focus();
                return;
            }
            if (dgvDetalles.Rows.Count < 1)
            {
                MessageBox.Show("Ingresar por lo menos 1 detalle", "AVISO",
                    MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                dgvDetalles.Focus();
                return;
            }

            // Assign selected values to the Ticket object
            nuevo.id_ticket = servicio.proximoTicket();
            nuevo.id_tipo_pago = cboTipoPago.SelectedIndex + 1;
            nuevo.id_sucursal = cboSucursal.SelectedIndex + 1;
            nuevo.id_cliente = cboCliente.SelectedIndex + 1;
            nuevo.fecha_compra = Convert.ToDateTime(dtpFecha.Value);

            // Insert the ticket using the servicio
            if (servicio.insertarTicket(nuevo))
            {
                MessageBox.Show("Ticket guardado");
                limpiar(); // Clear the form
            }
            else
            {
                MessageBox.Show("Ticket NO guardado");
            }
        }

        private void dgvDetalles_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            // Handle the removal of a detail when the corresponding button is clicked
            if (dgvDetalles.CurrentCell.ColumnIndex == 4)
            {
                nuevo.EliminarDetalle(dgvDetalles.CurrentRow.Index);
                dgvDetalles.Rows.Remove(dgvDetalles.CurrentRow);
                totalDetalles(); // Update the total details count
            }
        }
    }
}
