using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
public partial class CompanyMaster : System.Web.UI.Page
{
    
   /* protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-3CEVVE9U;Initial Catalog=CompanyMaster;Integrated Security=True");
        if (FileUpload1.HasFile)
        {
            string filename = FileUpload1.PostedFile.FileName;
            string filepath = Server.MapPath("~/Submit/");
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Submit/") + filename);
            con.Open();
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[CompanyMasterTable]
           ([id]
           ,[Name])
     VALUES
             ('" + TextBox1.Text + "','" + filepath + "')", con);

            cmd.ExecuteNonQuery();
            con.Close();
            }
        lblStatus.Text = "file uploaded";

            

    }*/
    protected void Btn1_Click(object sender, EventArgs e)
    {
       /* SqlConnection con = new SqlConnection("Data Source=LAPTOP-3CEVVE9U;Initial Catalog=CompanyMaster;Integrated Security=True");
        if (FileUpload1.HasFile)
        {
            string filename = FileUpload1.PostedFile.FileName;
            string filepath = Server.MapPath("~/Submit/");
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Submit/") + filename);
            con.Open();
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[CompanyMasterTable]
           ([id]
           ,[Name])
     VALUES
             ('" + TextBox1.Text + "','" + filepath + "')", con);

            cmd.ExecuteNonQuery();
            con.Close();
        }
        lblStatus.Text = "file uploaded";*/
        
      }
    protected void Btn2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/submit/") + FileUpload1.FileName);

        }
        DataTable dt = new DataTable();
        dt.Columns.Add("File Name", typeof(string));

        foreach (string strFile in Directory.GetFiles(Server.MapPath("~/submit")))
        {
            FileInfo fi = new FileInfo(strFile);
            dt.Rows.Add(fi.Name);

        }
        GridView.DataSource = dt;
        GridView.DataBind();
    }
}