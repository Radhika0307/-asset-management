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
        
       
    }

    protected void grdview_search()
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connStr))
        {

            con.Open();
            string query = "select ipaddress,url,count(url) from Main where ipaddress like '%199%' group by url,ipaddress";

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            gridView2.DataSource = ds;
            gridView2.DataBind();
            con.Close();
        }
    }
    
    protected void lnk1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connStr))
        {
            con.Open();
            string query = "select ipaddress,url,count(url) from Main where ipaddress like '%199%' group by url,ipaddress";
            SqlCommand com = new SqlCommand(query, con);

            SqlDataReader dr;
            dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();

                grdview_search();
                gridView3.Visible = true;

                
                

            }
            
        }
    }
    protected void grdview1_search()
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connStr))
        {

            con.Open();
            string query = "select ipaddress,url,count(url) from Main where ipaddress like '%198%' group by url,ipaddress";

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            gridView2.DataSource = ds;
            gridView2.DataBind();
            con.Close();
        }
    }
    protected void lnk2_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connStr))
        {
            con.Open();
            string query = "select ipaddress,url,count(url) from Main where ipaddress like '%198%' group by url,ipaddress";
            SqlCommand com = new SqlCommand(query, con);

            SqlDataReader dr;
            dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();

                grdview1_search();
                gridView4.Visible = true;


                

            }
        }
    }
    protected void grdview2_search()
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connStr))
        {

            con.Open();
            string query = "select ipaddress,url,count(url) from Main where ipaddress like '%198%' group by url,ipaddress";

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            gridView2.DataSource = ds;
            gridView2.DataBind();
            con.Close();
        }
    }
    protected void lnk3_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connStr))
        {
            con.Open();
            string query = "select ipaddress,url,count(url) from Main where ipaddress like '%123%' group by url,ipaddress";
            SqlCommand com = new SqlCommand(query, con);

            SqlDataReader dr;
            dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();

                grdview2_search();
                gridView2.Visible = true;


                

            }
           
        }
    }
    protected void grdview3_search()
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connStr))
        {

            con.Open();
            string query = "select ipaddress,url,count(url) from Main where ipaddress like '%123%'or ipaddress like '%199%'or ipaddress like '%198%'group by url,ipaddress";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            gridView2.DataSource = ds;
            gridView2.DataBind();
            con.Close();
        }
    }
   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connStr))
        {
            con.Open();
            string query = "select ipaddress,url,count(url) from Main where ipaddress like '%123%'or ipaddress like '%199%'or ipaddress like '%198%'group by url,ipaddress";
            SqlCommand com = new SqlCommand(query, con);

            SqlDataReader dr;
            dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();

                grdview3_search();
                gridView2.Visible = true;
            }

        }
    }
}