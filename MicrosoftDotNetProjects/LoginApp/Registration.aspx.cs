using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class _Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        
        if (idfname.Text=="" || idlastname.Text =="" || iduname.Text=="" || idpwd.Text=="")
        {
            Response.Write(@"<script language='javascript'>alert('One of the required information is blank. Put fill all the information')</script>");
            return;
        }
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnect"].ToString());
        conn.Open();
        string query = " select count(*) from users where username = '" + idfname.Text + "'";
        SqlCommand cmd = new SqlCommand(query, conn);
        string output = cmd.ExecuteScalar().ToString();

        string getmaxID= " select max(id) from users";
        SqlCommand cmd1 = new SqlCommand(getmaxID, conn);
        string maxID = cmd1.ExecuteScalar().ToString();
        int NextID = Convert.ToInt32(maxID)+ 1;
         if (output == "1")
        {
            Response.Write("User Already Exist.Please login with your account ");
        }
        else
        {
            
            string registerUser = "Insert into users(id, username,userpassword, firstname,lastname,created_at) values (" + NextID ;
            registerUser = registerUser + ", '" + iduname.Text + "', '" + idpwd.Text + "', '" + idfname.Text + "', '" + idlastname.Text + " ', getdate())" ;

            
            SqlCommand cmdname = new SqlCommand(registerUser, conn);
            int nrecords = cmdname.ExecuteNonQuery();
            if (nrecords == 1)
            {
                Response.Write(@"<script language='javascript'>alert('User Created successfully. Redirecting to Login Page')</script>");
                Response.Redirect("~/default.aspx");
            }
        }    

       

}
}