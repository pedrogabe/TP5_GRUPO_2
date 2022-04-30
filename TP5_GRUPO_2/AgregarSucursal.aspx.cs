using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace TP5_GRUPO_2
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblError.Text = "";
            lblError.Visible = false;
            lblConfirmar.Visible = false;
            if (!IsPostBack)
            {
                FillDDlProvincias();
            }
        }

        protected void FillDDlProvincias()
        {
            try
            {
                DataSet ds = DB.Query("SELECT ID_PROVINCIA, DESCRIPCIONPROVINCIA FROM PROVINCIA");
                if (ds == null)
                    throw new Exception("DB");

                ddlProvinciaS.DataValueField = "ID_PROVINCIA";
                ddlProvinciaS.DataTextField = "DESCRIPCIONPROVINCIA";
                ddlProvinciaS.DataSource = ds;
                ddlProvinciaS.DataBind();

            }
            catch(Exception ex)
            {
                lblError.Text += "Error al obtener listado de provincias.";
                lblError.Visible = true;
            }
        }

        protected bool ValidForm()
        {
            return
                rfvDescripcion.IsValid &&
                rfvDireccion.IsValid &&
                rfvNombre.IsValid;
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            if(ValidForm())
            {
                string query = "INSERT INTO Sucursal " +
                    "(NombreSucursal,DescripcionSucursal,Id_ProvinciaSucursal,DireccionSucursal)" +
                    "values (@0, @1, @2, @3)";
                int affectedRows = DB.NonQuery(query,
                    txtNombre.Text, txtDescripcion.Text, ddlProvinciaS.SelectedValue, txtDireccion.Text) ?? 0;
                if(affectedRows>0)
                {
                    lblConfirmar.Text = "La sucursal se ha agregado con éxito";
                    lblConfirmar.Visible = true;
                }
                else
                {
                    lblError.Text += "Error al guardar la sucursal.";
                    lblError.Visible = true;
                }
            }
            else
            {
                lblError.Text += "Formulario incompleto.";
                lblError.Visible = true;
            }
        }
    }
}