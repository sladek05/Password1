using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_odhlasit_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("../Default.aspx");
    }

    protected void btn_pridat_majitel_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True"))
        {
            SqlCommand CmdSql = new SqlCommand("INSERT INTO [Majitel] (Jmeno, Prijmeni) VALUES (@Jmeno, @Prijmeni)", conn);
            conn.Open();

            CmdSql.Parameters.AddWithValue("@Jmeno", tb_jmeno.Text);
            CmdSql.Parameters.AddWithValue("@Prijmeni", tb_prijmeni.Text);
            CmdSql.ExecuteNonQuery();
            conn.Close();

            Response.Redirect(@"Default.aspx");
        }
    }

    protected void btn_pridat_auto_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True"))
        {
            SqlCommand CmdSql = new SqlCommand("INSERT INTO [Automobil] (znacka, model, motorizace, spz, majitel) VALUES (@Znacka, @Model, @Motorizace, @SPZ, @Majitel)", conn);
            conn.Open();

            CmdSql.Parameters.AddWithValue("@Znacka", tb_znacka.Text);
            CmdSql.Parameters.AddWithValue("@Model", tb_model.Text);
            CmdSql.Parameters.AddWithValue("@Motorizace",tb_motorizace.Text);
            CmdSql.Parameters.AddWithValue("@SPZ", tb_spz.Text);
            CmdSql.Parameters.AddWithValue("@Majitel", SqlDbType.Int).Value = DropDownList1.SelectedIndex + 1;
            CmdSql.ExecuteNonQuery();
            conn.Close();

            Response.Redirect(@"Default.aspx");
        }
    }

    protected void btn_editace_majitelu_Click(object sender, EventArgs e)
    {
        Response.Redirect("Editace_Majiteluaspx.aspx");
    }

    protected void btn_editace_vozidel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Editace_vozidel.aspx");
    }
}