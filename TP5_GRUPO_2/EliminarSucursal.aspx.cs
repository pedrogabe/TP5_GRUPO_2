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
        public void elimSucursal(string id = "")
        {
            int? affected;
            string Consulta;
            Consulta = "delete from dbo.Sucursal where dbo.Sucursal.Id_Sucursal =" + id;
            DataSet ds = new DataSet();
            affected = DB.NonQuery(Consulta);
            if (affected == 0)
            {
                Label1.Text = "ID inexistente";
            }
            else
            {
                if(affected == 1)
                {
                    Label1.Text = "La sucursal ha sido eliminada correctamente";
                }
                else
                {
                    Label1.Text = "Error al eliminar!";
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEliminarID_Click(System.Object sender, System.EventArgs e)
        {
            elimSucursal(txtEliminarID.Text);
        }
    }
}