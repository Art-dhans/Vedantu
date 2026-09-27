using System;

namespace Vedantu
{
    public partial class Courses : System.Web.UI.Page
    {
        protected void Enroll_Click(object sender, EventArgs e)
        {
            int currentTotal = 0;

            if (ViewState["Total"] != null)
                currentTotal = (int)ViewState["Total"];

            int price = Convert.ToInt32(((System.Web.UI.WebControls.Button)sender).CommandArgument);

            currentTotal += price;

            ViewState["Total"] = currentTotal;
            lblTotal.Text = currentTotal.ToString();
        }
    }
}
