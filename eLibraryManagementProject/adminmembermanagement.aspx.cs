using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLibraryManagementProject
{
    public partial class adminmembermanagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        
        // Go Button
        protected void LinkButton4_Click(object sender, EventArgs e)
        {

        }

        // Active Button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        // Pending Button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }

        // Deactivate Button
        protected void LinkButton3_Click(object sender, EventArgs e)
        {

        }
    }
}