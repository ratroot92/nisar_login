using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PrjProps;
using Business_Layer;
namespace assignment_5.Pages
{
    public partial class Item : System.Web.UI.Page
    {
        ItemProps item_props_object;
        ItemBLL item_bll_object;

        //Helipng Functions 
        public void Clear_All()
        {
            txt_id.Text = "";
            txt_name.Text = "";
            txt_barcode.Text = "";
            txt_purchase_price.Text = "";
            txt_sale_price.Text = "";
            txt_manufacturer.Text = "";
            
        }
        public void show_all_items()
        {
            item_bll_object = new ItemBLL();
            DataTable ds = new DataTable();
            ds = item_bll_object.ALL_ITEMS_BLL();
            items_table.DataSource=ds;
            items_table.DataBind();
            
        }
        public void get_last_id()
        {
            item_bll_object = new ItemBLL();
            int last_id = item_bll_object.GET_LAST_ID_BLL();
            last_id = last_id + 1;
            txt_id.Text = last_id.ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            get_last_id();
            show_all_items();
        }

        protected void ddn_supplier_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double purchase_price = Double.Parse(txt_purchase_price.Text);
            double sale_price = Double.Parse(txt_sale_price.Text);

            item_props_object = new ItemProps();
            item_props_object.Id =  Int32.Parse(txt_id.Text);
            item_props_object.Name = txt_name.Text.ToUpper();
            item_props_object.Barcode = txt_barcode.Text;
            item_props_object.Purchase_price = purchase_price;
            item_props_object.Sale_price =  sale_price;
            item_props_object.Manufacturer = txt_manufacturer.Text.ToUpper();
            item_props_object.Supplier = ddn_supplier.Text;
            item_props_object.Status = Int32.Parse(ddn_status.Text);
            item_bll_object = new ItemBLL();
            bool status=item_bll_object.InsertBLL(item_props_object);
            if (status)
            {
                Response.Write("<script>alert('Item Inserted Successfully')</script>");
                get_last_id();
                show_all_items();
            }
            else
            {
                Response.Write("<script>alert('Item Insertion Failed ')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Clear_All();
        }
    }
}