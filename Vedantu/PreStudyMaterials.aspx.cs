using System;
using System.Web.UI;

namespace Vedantu
{
    public partial class PreStudyMaterials : Page
    {
        static int totalAmount = 0;

        protected void Buy_Click(object sender, EventArgs e)
        {
            var btn = (System.Web.UI.WebControls.Button)sender;
            int price = Convert.ToInt32(btn.CommandArgument);

            totalAmount += price;
            lblTotal.Text = "Total Amount Payable: ₹" + totalAmount;
        }
    }
}
