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
    public partial class frmTickets : Form
    {
        Ticket nuevo;
        iServicio servicio;

        public frmTickets()
        {
            InitializeComponent();
            nuevo = new Ticket();
            servicio = new implementFactoryServicio().crearServicio();
            ultimoTicket();
            totalDetalles();
        }
        private void ultimoTicket()
        {
            lblProx.Text = "Ticket Nº: " + servicio.proximoTicket();
        }
        private void totalDetalles()
        {
            lblDetalles.Text = "Cant. de detalles: " + dgvDetalles.Rows.Count;
        }

        private void frmTickets_Load(object sender, EventArgs e)
        {
            cargarComboTipoPago();
            cargarComboSucursal();
            cargarComboCliente();
            cargarComboFuncion();
            cargarComboReserva();
            cargarDgvFunciones();
            limpiar();
        }
        private void cargarComboTipoPago()
        {
            DataTable tabla = servicio.listarTipoPagos();
            cboTipoPago.DataSource = tabla;
            cboTipoPago.ValueMember = tabla.Columns[0].ColumnName;
            cboTipoPago.DisplayMember = tabla.Columns[1].ColumnName;
            cboTipoPago.DropDownStyle = ComboBoxStyle.DropDownList;
        }
        private void cargarComboSucursal()
        {
            DataTable tabla = servicio.listarSucursales();
            cboSucursal.DataSource = tabla;
            cboSucursal.ValueMember = tabla.Columns[0].ColumnName;
            cboSucursal.DisplayMember = tabla.Columns[2].ColumnName;
            cboSucursal.DropDownStyle = ComboBoxStyle.DropDownList;
        }
        private void cargarComboCliente()
        {
            DataTable tabla = servicio.listarClientes();
            cboCliente.DataSource = tabla;
            cboCliente.ValueMember = tabla.Columns[0].ColumnName;
            cboCliente.DisplayMember = tabla.Columns[1].ColumnName;
            cboCliente.DropDownStyle = ComboBoxStyle.DropDownList;
        }
        private void cargarComboFuncion()
        {
            DataTable tabla = servicio.listarFunciones();
            cboFunciones.DataSource = tabla;
            cboFunciones.ValueMember = tabla.Columns[0].ColumnName;
            cboFunciones.DisplayMember = tabla.Columns[0].ColumnName;
            cboFunciones.DropDownStyle = ComboBoxStyle.DropDownList;
        }
        private void cargarDgvFunciones()
        {
            DataTable tabla = servicio.listarFunciones();
            dgvFunciones.DataSource = tabla;
        }
        private void cargarComboReserva()
        {
            DataTable tabla = servicio.listarReservas();
            cboReservas.DataSource = tabla;
            cboReservas.ValueMember = tabla.Columns[0].ColumnName;
            cboReservas.DisplayMember = tabla.Columns[1].ColumnName;
            cboReservas.DropDownStyle = ComboBoxStyle.DropDownList;
        }
        private void limpiar()
        {
            ultimoTicket();
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
            totalDetalles();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
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

            DataRowView item = (DataRowView)cboFunciones.SelectedItem;
            int id_funcion = Convert.ToInt32(item.Row.ItemArray[0]);
            int id_pelicula = Convert.ToInt32(item.Row.ItemArray[1]);
            DateTime fecha = Convert.ToDateTime(item.Row.ItemArray[3]);
            string idioma = item.Row.ItemArray[4].ToString();
            double precio = Convert.ToDouble(item.Row.ItemArray[5]);

            Funcion f = new Funcion(id_funcion,id_pelicula,fecha,idioma,precio);
            int asiento = Convert.ToInt32(nudAsiento.Value);
            double descuento = Convert.ToDouble(nudDescuento.Value);
            int reserva = Convert.ToInt32(cboReservas.SelectedValue);
            int id_t = servicio.proximoTicket();
            double costo = Convert.ToDouble(nudCosto.Value);
            DetalleTicket d = new DetalleTicket(f, asiento, descuento, reserva, id_t, costo);

            nuevo.AgregarDetalle(d);
            dgvDetalles.Rows.Add(new object[] { id_funcion,asiento,reserva,costo});
            totalDetalles();
        }

        private void btnAceptar_Click(object sender, EventArgs e)
        {
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

            nuevo.id_ticket = servicio.proximoTicket();
            nuevo.id_tipo_pago = cboTipoPago.SelectedIndex + 1;
            nuevo.id_sucursal = cboSucursal.SelectedIndex + 1;
            nuevo.id_cliente = cboCliente.SelectedIndex + 1;
            nuevo.fecha_compra = Convert.ToDateTime(dtpFecha.Value);

            if (servicio.insertarTicket(nuevo))
            {
                MessageBox.Show("Ticket guardado");
                limpiar();
            }
            else
            {
                MessageBox.Show("Ticket NO guardado");
            }

        }

        private void dgvDetalles_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvDetalles.CurrentCell.ColumnIndex == 4)
            {
                nuevo.EliminarDetalle(dgvDetalles.CurrentRow.Index);
                dgvDetalles.Rows.Remove(dgvDetalles.CurrentRow);
                totalDetalles();
            }
        }


    }
}
