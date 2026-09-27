using System;
using System.Web.UI;

namespace Vedantu
{
    public partial class KidsCourses : Page
    {
        static int totalAmount = 0;

        protected void Enroll_Click(object sender, EventArgs e)
        {
            System.Web.UI.WebControls.Button btn =
                (System.Web.UI.WebControls.Button)sender;

            int price = Convert.ToInt32(btn.CommandArgument);
            totalAmount += price;

            lblTotal.Text = "Total Course Fees: ₹" + totalAmount;
        }
    }
}
