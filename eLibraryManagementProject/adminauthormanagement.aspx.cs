using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLibraryManagementProject
{
    public partial class adminauthormanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;



        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // add button click     
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExists())
            {
                Response.Write("<script>alert('Author with this ID already exist. You cannot add another Author with the same Author ID');</script>");
            }
            else
            {
                addNewAuthor(); 
            }
        }

        // update click button
        protected void Button3_Click(object sender, EventArgs e)
        {

            if (checkIfAuthorExists())
            {
                updateAuthor();

            }
            else
            {
                Response.Write("<script>alert('Author does not exist');</script>");

            }
        }

        // delete click button
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExists())
            {
                //updateAuthor();
                deleteAuthor();

            }
            else
            {
                Response.Write("<script>alert('Author does not exist');</script>");

            }
        }

        // go click button
        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        // user defined function

        void deleteAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from author_master_tbl WHERE author_id='" + TextBox1.Text.Trim() + "'", con);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Deleted Successfully');</script>");
                clearForm();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void updateAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE author_master_tbl SET author_name=@author_name WHERE author_id='"+TextBox1.Text.Trim()+"'", con);
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Updated Successfully');</script>");
                clearForm();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void addNewAuthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO author_master_tbl (author_id,author_name) values(@author_id,@author_name)", con);
                cmd.Parameters.AddWithValue("@author_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());
             

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author added Successfully');</script>");


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool checkIfAuthorExists()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from author_master_tbl where author_id='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                    return false;




            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

        }

        void clearForm()
        {
            TextBox1.Text = "";
        }
    }
}