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
    //create object of NisarlOgin props class 
   
    public partial class NisarLogin : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            //what shopudl happen when this button is clicked 
            //let get values of field and print them on screen 
            string username = txt_username.Text;
            string password = txt_userpassword.Text;
            //careted a props object adn filled it with values
            NisarProps obj = new NisarProps();
            obj.username = username;
            obj.password = password;
            //object encapusalted

            System.Diagnostics.Debug.WriteLine("###USER NAME ### = " + username);
            System.Diagnostics.Debug.WriteLine("###USER PPASSWORD ### = " + password);
            NisarLoginBLL a = new NisarLoginBLL();
           int access_level=a.NisarLogin_BLL(obj);
            //500,1,0
            System.Diagnostics.Debug.WriteLine("WORK FINISHED  = " + access_level);

            //if user acdess level is 0 then user is normal user so we shouulf redirect him on user page 
            //if user access level is 1 then user is admin and we should return him to admin page 
            //if accesslevel is returned 500 then no user is in databse with given credentials so redirect to login page again 
            if (access_level == 1)
            {
                //1
                Response.Redirect("~/Admin.aspx");
            }
            else if (access_level == 0)
            {
                //0
                Response.Redirect("~/User.aspx");
            }
            else
            {
                //500
                Response.Redirect("~/NisarLogin.aspx");
            }



        }
    }
}