using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class clusterpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string query = "select user_id,ipaddress,url,count(url) from Main where ipaddress like '%123%' group by url,ipaddress,user_id;";
            query += "select user_id,ipaddress,url,count(url) from Main where ipaddress like '%199%' group by url,ipaddress,user_id;";
            query += "select user_id,ipaddress,url,count(url) from Main where ipaddress like '%198%' group by url,ipaddress,user_id";
            using (SqlConnection con = new SqlConnection(connStr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataSet ds = new DataSet())
                        {
                            sda.Fill(ds);
                            gridView2.DataSource = ds.Tables[0];
                            gridView2.DataBind();
                            gridView3.DataSource = ds.Tables[1];
                            gridView3.DataBind();
                            gridView4.DataSource = ds.Tables[2];
                            gridView4.DataBind();

                        }

                    }
                }
            }
        }
    }
    
    protected void grv2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Cells[0].Text = "User ID";
            e.Row.Cells[1].Text = "IP Address";
            e.Row.Cells[2].Text = "URL";
            e.Row.Cells[3].Text = "Support Count";
        }
    }

    
}
    
  