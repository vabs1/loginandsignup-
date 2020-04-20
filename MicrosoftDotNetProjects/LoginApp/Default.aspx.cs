using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            lbltext.Text = "Welcome " + Session["name"].ToString();
        }
        else
            lbltext.Text = "";

    }
protected void Button1_Click(object sender, EventArgs e)
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnect"].ToString());
    conn.Open();
    string query = " select count(*) from users where username = '" + txtUser.Text + "' and userpassword = '" + txtpass.Text + "'";
    SqlCommand cmd = new SqlCommand(query, conn);
    string output = cmd.ExecuteScalar().ToString();
    if (output == "1")
    {
        Session["user"] = txtUser.Text;
        string name = " select firstname + lastname from users where username = '" + txtUser.Text + "' and userpassword = '" + txtpass.Text + "'";
        SqlCommand cmdname = new SqlCommand(name, conn);
        string outputname = cmdname.ExecuteScalar().ToString();
        Session["name"] = outputname;
        Response.Redirect("~/welcome.aspx");
    }
    else
    {
        Response.Write(@"<script language='javascript'>alert('Invalid Login')</script>");
    }
}
protected void btncreateAccount_Click(object sender, EventArgs e)
{
    Response.Redirect("~/registration.aspx");
}
}