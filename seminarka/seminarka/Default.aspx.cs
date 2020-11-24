using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_prihlasit_Click(object sender, EventArgs e)
    {
        if (tb_login.Text == "Admin" && tb_heslo.Text == "Admin")
        {
            Response.Redirect("Admin/Default.aspx");
        }
        else if (tb_login.Text == "User" && tb_heslo.Text == "User")
        {
            Response.Redirect("User/Default.aspx");
        }
        else if (tb_login.Text == "Redaktor" && tb_heslo.Text == "Redaktor")
        {
            Response.Redirect("Redaktor/Default.aspx");
        }
        else
            lb_error.Text = "Špatné jméno nebo heslo.";
    }
}