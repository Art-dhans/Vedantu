using System;

namespace Vedantu
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void btnSend_Click(object sender, EventArgs e)
        {
            // Normally database save / email logic goes here

            // Show success message
            pnlSuccess.Visible = true;

            // Clear fields
            txtName.Text = "";
            txtEmail.Text = "";
            txtMsg.Text = "";
        }
    }
}
