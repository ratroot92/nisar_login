using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PrjProps;
using Business_Layer;
namespace assignment_5
{
    public partial class Login : System.Web.UI.Page
    {
        LoginProps login_PROPS_OBJ;
        LoginBLL login_BLL_OBJ;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("### LOGIN BUTTON CLIKCED  ###");
            string username = txt1.Text;
            string password = txt2.Text;
            if(string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {

            }
            else
            {
                login_BLL_OBJ = new LoginBLL();
              
                login_PROPS_OBJ = new LoginProps();
                login_PROPS_OBJ.Username = username;
                login_PROPS_OBJ.Password = password;
                int access_level =login_BLL_OBJ.VALIDATE_USER_BLL(login_PROPS_OBJ);
                if (access_level == 1)
                {
                    System.Diagnostics.Debug.WriteLine("### USER VALIDATED  ###");
                    Session["username"] = username;
                    Session["password"] = password;
                    Response.Redirect("~/Admin.aspx");
                    
                  //  Response.Write("<script>alert('You Have been Successfully Resgistered ')</script>");
                }
                else if (access_level == 0)
                {
                    Response.Redirect("~/User.aspx");
                }
                else
                {
                    System.Diagnostics.Debug.WriteLine("### USER NOT  VALIDATED  ###");
                }

            }
        }
    }
}