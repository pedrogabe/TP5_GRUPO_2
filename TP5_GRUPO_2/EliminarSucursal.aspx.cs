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
    public partial class EliminarSucursal : System.Web.UI.Page
    {
        public bool elimSucursal(string id = "")
        {
            string Consulta;
            if(id=="")
            {
                Label1.Text = "Ingrese un id valido";
                return false;
            }
            else
            {
                Consulta = "delete from dbo.Sucursal where dbo.Sucursal.Id_Sucursal =" + id;
                DataSet ds = new DataSet();
                ds = DB.Query(Consulta);
                return true;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEliminarID_Click(System.Object sender, System.EventArgs e)
        {
            if (elimSucursal(txtEliminarID.Text)) Label1.Text = "La sucursal se ha eliminado correctamente";
        }
    }
}