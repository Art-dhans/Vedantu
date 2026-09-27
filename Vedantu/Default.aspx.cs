using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Vedantu
{
    public partial class Default : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(
        @"Data Source=(localdb)\MSSQLLocalDB;
Initial Catalog=VedantuDB;
Integrated Security=True");

```
    protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    con.Open();

                    string q = @"IF OBJECT_ID('Students') IS NULL
                             CREATE TABLE Students(
                             Id INT PRIMARY KEY,
                             Name VARCHAR(50),
                             Course VARCHAR(50),
                             Mobile BIGINT)";

                    SqlCommand cmd = new SqlCommand(q, con);
                    cmd.ExecuteNonQuery();

                    con.Close();
                }
                catch { }
            }
        }

        // INSERT
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();

                string q = "insert into Students values(" +
                TextBox1.Text + ",'" +
                TextBox2.Text + "','" +
                TextBox3.Text + "'," +
                TextBox4.Text + ")";

                SqlCommand cmd = new SqlCommand(q, con);
                cmd.ExecuteNonQuery();

                Label1.Text = "Data Inserted Successfully";

                con.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        // DISPLAY
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();

                string q = "select * from Students";

                SqlDataAdapter da = new SqlDataAdapter(q, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();

                con.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        // UPDATE
        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();

                string q = "update Students set Name='" + TextBox2.Text +
                           "', Course='" + TextBox3.Text +
                           "', Mobile=" + TextBox4.Text +
                           " where Id=" + TextBox1.Text;

                SqlCommand cmd = new SqlCommand(q, con);
                cmd.ExecuteNonQuery();

                Label1.Text = "Data Updated Successfully";

                con.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        // DELETE
        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();

                string q = "delete from Students where Id=" + TextBox1.Text;

                SqlCommand cmd = new SqlCommand(q, con);
                cmd.ExecuteNonQuery();

                Label1.Text = "Data Deleted Successfully";

                con.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }

        // DETAILS VIEW
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DetailsView1.DataSource = new object[]
            {
            new {
                Id = GridView1.SelectedRow.Cells[1].Text,
                Name = GridView1.SelectedRow.Cells[2].Text,
                Course = GridView1.SelectedRow.Cells[3].Text,
                Mobile = GridView1.SelectedRow.Cells[4].Text
            }
            };

            DetailsView1.DataBind();
        }
    }
```

}
