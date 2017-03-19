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
        Button btnGraph = new Button();
        btnGraph.ID = "btnStart";
        btnGraph.Text = "Click to see graph";
        btnGraph.OnClientClick = "return myfunction()";
        btnGraph.Click += new EventHandler(btnGraph_Click);
        if (gridView2 != null && gridView2.FooterRow != null)
        {
            gridView2.FooterRow.Cells[0].Controls.Add(btnGraph);
        }
        Button btnGraph1 = new Button();
        btnGraph1.ID = "btnStart1";
        btnGraph1.Text = "Click to see graph";
        btnGraph1.OnClientClick = "return myfunction1()";
        btnGraph1.Click += new EventHandler(btnGraph1_Click);
        if (gridView3 != null && gridView3.FooterRow != null)
        {
            gridView3.FooterRow.Cells[0].Controls.Add(btnGraph1);
        }
        Button btnGraph2 = new Button();
        btnGraph2.ID = "btnStart2";
        btnGraph2.Text = "Click to see graph";
        btnGraph2.OnClientClick = "return myfunction2()";
        btnGraph2.Click += new EventHandler(btnGraph2_Click);
        if (gridView4 != null && gridView4.FooterRow != null)
        {
            gridView4.FooterRow.Cells[0].Controls.Add(btnGraph2);
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
    protected void btnGraph_Click(object sender, EventArgs e)
    {
     
    }
    protected void btnGraph1_Click(object sender, EventArgs e)
    {

    }
    protected void btnGraph2_Click(object sender, EventArgs e)
    {

    }
    protected void Chart1_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Visual.aspx");
    }
}