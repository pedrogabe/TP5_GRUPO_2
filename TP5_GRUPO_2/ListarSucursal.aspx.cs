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
                Consulta = "select Id_Sucursal, NombreSucursal, DescripcionSucursal, DescripcionProvincia, DireccionSucursal  from dbo.Sucursal inner join dbo.Provincia on dbo.Sucursal.Id_ProvinciaSucursal = dbo.Provincia.Id_Provincia";
            }
            else
            {
                Consulta = "select Id_Sucursal, NombreSucursal, DescripcionSucursal, DescripcionProvincia, DireccionSucursal  from dbo.Sucursal inner join dbo.Provincia on dbo.Sucursal.Id_ProvinciaSucursal = dbo.Provincia.Id_Provincia where id_Sucursal = " + id;
            }
            try
            {
                DataSet ds = new DataSet();
                ds = DB.Query(Consulta);

                if (ds == null)
                        throw new Exception("DB");

                gvSucursales.DataSource = ds.Tables[0];
                gvSucursales.DataBind();
            }
            catch(Exception ex) 
            {
                lblError.Text = "Error al obtener listado de sucursales";
                lblError.Visible = true;
            }
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