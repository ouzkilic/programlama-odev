using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Baglanti"].ConnectionString);
   
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Kitaplar", con);
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.Connection = con;
        SqlDataReader reader = cmd.ExecuteReader();

        string temp = "";
        while (reader.Read())
        {
            temp += "<tr>";
            temp += "< td >" + reader["KitapAdi"].ToString()+ "< /td >";
            temp += "< td >" + reader["Yazar"].ToString() + "< /td >";
            temp += "< td >" + reader["BasimYili"].ToString() + "< /td >";
            temp += "< td >" + reader["Sayfa"].ToString() + "< /td >";
            temp += "</ tr >";
        }
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        int basim_yil = int.Parse(TextBox4.Text);
        int sayfa = int.Parse(TextBox3.Text);
        string ad = TextBox2.Text;
        string yazar = TextBox1.Text;
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "INSERT INTO Kitaplar (Sayfa, Yazar, KitapAdi, BasimYili) VALUES('" + sayfa + "','" + yazar + "','" + ad + "','" + basim_yil + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.DataBind();
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}