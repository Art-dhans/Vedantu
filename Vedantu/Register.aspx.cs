using System;
using System.Data.SqlClient;

namespace Vedantu
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(
        @"Data Source=(localdb)\MSSQLLocalDB;
        Initial Catalog=VedantuDB;
        Integrated Security=True");

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "" || txtUser.Text == "" || txtPass.Text == "")
            {
                lblMsg.Text = "⚠ Please fill all the fields";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }

            try
            {
                con.Open();

                string q = "insert into Users(Name,Username,Password) values('" +
                txtName.Text + "','" +
                txtUser.Text + "','" +
                txtPass.Text + "')";

                SqlCommand cmd = new SqlCommand(q, con);
                cmd.ExecuteNonQuery();

                lblMsg.Text = " Registration Successful!";
                lblMsg.ForeColor = System.Drawing.Color.Green;

                txtName.Text = "";
                txtUser.Text = "";
                txtPass.Text = "";

                con.Close();
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.Message;
            }
        }
    }
}