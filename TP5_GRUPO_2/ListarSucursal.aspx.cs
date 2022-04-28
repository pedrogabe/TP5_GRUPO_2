using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace TP5_GRUPO_2
{
    public partial class ListarSucursal : System.Web.UI.Page
    {
        private void MostrarTablaSucursales(string id="")
        {
            string Consulta;
            if (id == "")
            {
                Consulta = "select * from dbo.Sucursal";
            }
            else
            {
                Consulta = "select * from dbo.Sucursal where id_Sucursal = " + id;
            }
            DataSet ds = new DataSet();
            ds = DB.Query(Consulta);
            gvSucursales.DataSource = ds.Tables[0];
            gvSucursales.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {

            MostrarTablaSucursales();
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            MostrarTablaSucursales(txtID.Text);
        }
    }
}