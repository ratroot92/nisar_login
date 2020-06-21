using Microsoft.Ajax.Utilities;
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
    public partial class _Default : Page
    {
        SignupProps signup_PROPS_OBJ;
        SignupBLL signup_BLL_OBJ;

        public void ClearAll()
        {
            System.Diagnostics.Debug.WriteLine("### FUNCTION CLEAR ALL  ###");
            txt1.Text = "";
            txt2.Text = "";
            txt3.Text = "";
            txt4.Text = "";

        }
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void txt1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_signup_Click(object sender, EventArgs e)
        {
            System.Diagnostics.Debug.WriteLine("### BTN SIGNUP CLIKCED  ###");
            string username = txt1.Text;
            string email = txt2.Text;
            string password = txt3.Text;
            string phone = txt4.Text;
            string access_level = ddn_1.SelectedItem.Value;
            System.Diagnostics.Debug.WriteLine("###USERNAME=" + username + "###");
            System.Diagnostics.Debug.WriteLine("###EMAIL=" + email + "###");
            System.Diagnostics.Debug.WriteLine("###PASSWORD" + password + "###");
            System.Diagnostics.Debug.WriteLine("###PHONE=" + phone + "###");
            System.Diagnostics.Debug.WriteLine("###ACCESS_LEVEL=" + access_level + "###");
            signup_PROPS_OBJ = new SignupProps();
            signup_PROPS_OBJ.Username = username;
            signup_PROPS_OBJ.Password = password;
            signup_PROPS_OBJ.Email = email;
            signup_PROPS_OBJ.Phone = phone;
            signup_PROPS_OBJ.Access_level = access_level;
            signup_BLL_OBJ = new SignupBLL();
            int status =signup_BLL_OBJ.INSERT_BLL(signup_PROPS_OBJ);
            if(status > 0)
            {
                System.Diagnostics.Debug.WriteLine("### SIGNUP INSERT SUCCESSFULL ###");
                Response.Write("<script>alert('You Have been Successfully Resgistered ')</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                System.Diagnostics.Debug.WriteLine("### SIGNUP INSERT FAILED ###");

            }
           

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void r_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}