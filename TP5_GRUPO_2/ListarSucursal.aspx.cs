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
        private void MostrarTablaSucursales(string id="", bool x=true)
        {
            string Consulta;
            if (id == "" && !x)
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
                    { throw new Exception("DB"); }
                else if(ds.Tables[0].Rows.Count==0)
                    { lblError.Text = "El ID ingresado no existe"; lblError.Visible = true; }

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
            lblError.Visible=false;
        }

        protected void btnMostrarTodos_Click(object sender, EventArgs e)
        {

            MostrarTablaSucursales("", false);
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            MostrarTablaSucursales(txtID.Text);
        }
    }
}