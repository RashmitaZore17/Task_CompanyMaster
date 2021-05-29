using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class CompanyViewPage : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-3CEVVE9U;Initial Catalog=CompanyMaster;Integrated Security=True");
        
    protected void Page_Load(object sender, EventArgs e)

    {
        con.Open();
        SqlDataAdapter sqlDa = new SqlDataAdapter("select * from CompanyMasterTable",con);
       /* DataTable dtbl = new DataTable();
        sqlDa.Fill(dtbl);
        CompanyMaster.DataSource = dtbl;
        CompanyMaster.DataBind();

        */
        
    }

    protected void linkSelect_Click(object sender, EventArgs e)
    { 
        int id= Convert.ToInt32((sender as LinkButton).CommandArgument);

    
            
    }
    

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }

    
}
