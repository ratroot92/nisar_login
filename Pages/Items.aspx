<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Items.aspx.cs" Inherits="assignment_5.Pages.Item" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
 
  

  



    <div class="container-fluid">
        <div class="row">
        <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="card">
<div class="card-header text-center bg-dark text-white ">
<h3>NEW ITEM FORM  </h3>
</div>

<div class="card-body">
<form>

<!-- form field -->
<div class=" form-group form-inline ">
<div class="row ">
<div class="col-md-3">
<label class="btn btn-primary  font-weight-bold"style="font-size:12px;width:150px;">Item ID  </label>
</div>
<div class="col-md-9">
<asp:TextBox ID="txt_id" CssClass="form-control form-control-sm " Width="100%" runat="server" ReadOnly="True"></asp:TextBox>
</div>
<div class="col-md-3">
</div>
<div class="col-md-9 "style="height:25px;font-size:12px;font-weight:bold;width:300px;">
<asp:RequiredFieldValidator CssClass="w-100 text-left text-info" Width="100%" ID="id_validator" runat="server" ErrorMessage="Item ID is required " ControlToValidate="txt_id" SetFocusOnError="True"></asp:RequiredFieldValidator>
</div>
</div>
</div>
<!-- form field -->





<!-- form field -->
<div class=" form-group form-inline  ">
<div class="row">
<div class="col-md-3">
<label class="btn btn-primary  font-weight-bold"style="font-size:12px;width:150px;">Item Name  </label>
</div>
<div class="col-md-9">
   <asp:TextBox ID="txt_name" CssClass="form-control form-control-sm " Width="100%" runat="server" MaxLength="25"></asp:TextBox>
</div>
<div class="col-md-3">
</div>
<div class="col-md-9 "style="height:25px;font-size:12px;font-weight:bold;width:300px;">
 <asp:RequiredFieldValidator CssClass="w-100 text-left text-info" Width="100%" ID="itemname_validator" runat="server" ErrorMessage="Item name is required" ControlToValidate="txt_name"></asp:RequiredFieldValidator>
</div>
</div>
</div>
<!-- form field -->




<!-- form field -->
<div class=" form-group form-inline ">
<div class="row">
<div class="col-md-3">
<label class="btn btn-primary  font-weight-bold"style="font-size:12px;width:150px;">Item barcode  </label>
</div>
<div class="col-md-9">
    <asp:TextBox ID="txt_barcode" CssClass="form-control form-control-sm " Width="100%" runat="server" MinLength="8" MaxLength="11"></asp:TextBox>
</div>
<div class="col-md-3">
</div>
<div class="col-md-9 "style="height:25px;font-size:12px;font-weight:bold;width:300px;">
  <asp:RequiredFieldValidator CssClass="w-100 text-left text-info" Width="100%" ID="barcode_validator" runat="server" ErrorMessage="Barcode is required " ControlToValidate="txt_barcode"></asp:RequiredFieldValidator>
</div>
</div>
</div>
<!-- form field -->




<!-- form field -->
<div class=" form-group form-inline ">
<div class="row">
<div class="col-md-3">
<label class="btn btn-primary  font-weight-bold"style="font-size:12px;width:150px;">Item Purchase Price  </label>
</div>
<div class="col-md-9">
    <asp:TextBox ID="txt_purchase_price" CssClass="form-control form-control-sm " Width="100%" runat="server" MaxLength="7" TextMode="Number"></asp:TextBox>
</div>
<div class="col-md-3">
</div>
<div class="col-md-9 "style="height:25px;font-size:12px;font-weight:bold;width:300px;">
  <asp:RequiredFieldValidator CssClass="w-100 text-left text-info" Width="100%" ID="purchase_price_validator" runat="server" ErrorMessage="Purchase price is required " ControlToValidate="txt_purchase_price" ></asp:RequiredFieldValidator>
<asp:RangeValidator CssClass="w-100 text-left text-info" Width="100%" ID="RangeValidator1" runat="server" ControlToValidate="txt_purchase_price" ErrorMessage="Purchase Price must be grearter than 10000" MaximumValue="10000" MinimumValue="1" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
</div>


     
</div>
  
</div>
<!-- form field -->







<!-- form field -->
<div class=" form-group form-inline ">
<div class="row">
<div class="col-md-3">
<label class="btn btn-primary  font-weight-bold"style="font-size:12px;width:150px;">Item Sale Price </label>
</div>
<div class="col-md-9">
     <asp:TextBox ID="txt_sale_price" CssClass="form-control form-control-sm " Width="100%" runat="server" MaxLength="7" TextMode="Number"></asp:TextBox>
</div>
<div class="col-md-3">
</div>
<div class="col-md-9 "style="height:25px;font-size:12px;font-weight:bold;width:300px;">
<asp:RequiredFieldValidator CssClass="w-100 text-left text-info" Width="100%" ID="saleprice_validator" runat="server" ErrorMessage="Sale price is required " ControlToValidate="txt_sale_price" ></asp:RequiredFieldValidator>
 <asp:CompareValidator CssClass="w-100 text-left text-info" Width="100%" ID="CompareValidator1" runat="server" ControlToCompare="txt_purchase_price" ControlToValidate="txt_sale_price" ErrorMessage="Sale price must be greater or equal to purcahse price " Operator="GreaterThanEqual" SetFocusOnError="True" Type="Integer"></asp:CompareValidator>
</div>
   
</div>
</div>
<!-- form field -->








<!-- form field -->
<div class=" form-group form-inline ">
<div class="row">
<div class="col-md-3">
<label class="btn btn-primary  font-weight-bold"style="font-size:12px;width:150px;">Item Status  </label>
</div>
<div class="col-md-9">
    <asp:DropDownList ID="ddn_status" runat="server" CssClass="form-control form-control-sm w-100 ml-2">
        <asp:ListItem Value="">Select Status</asp:ListItem>
        <asp:ListItem Selected="True" Value="1">active</asp:ListItem>
        <asp:ListItem Value="0">in active</asp:ListItem>
    </asp:DropDownList>
</div>
<div class="col-md-3">
</div>
<div class="col-md-9 "style="height:25px;font-size:12px;font-weight:bold;width:300px;">
<asp:RequiredFieldValidator CssClass="w-100 text-left text-info" Width="100%" ID="status_validator" runat="server" ErrorMessage="item Status is required " ControlToValidate="ddn_status"></asp:RequiredFieldValidator>
</div>
</div>
</div>
<!-- form field -->



<!-- form field -->
<div class=" form-group form-inline ">
<div class="row">
<div class="col-md-3">
<label class="btn btn-primary  font-weight-bold"style="font-size:12px;width:150px;">Item Manufacturer  </label>
</div>
<div class="col-md-9">
 <asp:TextBox ID="txt_manufacturer" CssClass="form-control form-control-sm " Width="100%" runat="server" MaxLength="25"></asp:TextBox>
</div>
<div class="col-md-3">
</div>
<div class="col-md-9 "style="height:25px;font-size:12px;font-weight:bold;width:300px;">
<asp:RequiredFieldValidator CssClass="w-100 text-left text-info" Width="100%" ID="manfacturer_validator" runat="server" ErrorMessage="Item manufacturer is required " ControlToValidate="txt_manufacturer"></asp:RequiredFieldValidator>
</div>
</div>
</div>
<!-- form field -->





<!-- form field -->
<div class=" form-group form-inline ">
<div class="row">
<div class="col-md-3">
<label class="btn btn-primary  font-weight-bold"style="font-size:12px;width:150px;">Item Supplier </label>
</div>
<div class="col-md-9">
    <asp:DropDownList ID="ddn_supplier" runat="server" CssClass="form-control form-control-sm w-100 ml-2">
        <asp:ListItem Value="">Select Supplier</asp:ListItem>
    </asp:DropDownList>
</div>
<div class="col-md-3">
</div>
<div class="col-md-9 "style="height:25px;font-size:12px;font-weight:bold;width:300px;">
<asp:RequiredFieldValidator CssClass="w-100 text-left text-info" Width="100%" ID="supplier_validator" runat="server" ErrorMessage="Item Supplier is required " ControlToValidate="ddn_supplier"></asp:RequiredFieldValidator>
</div>
</div>
</div>
<!-- form field -->


                </form>
</div>
<div class="card-footer">
    <div class="row">
        <div class="col-md-3">
<asp:Button ID="Button2" CssClass="btn btn-sm btn-warning" runat="server" Text="Reset" CausesValidation="False" OnClick="Button2_Click" />
        </div>
        <div class="col-md-6"></div>
        <div class="col-md-3">
             <asp:Button ID="Button1" CssClass="btn btn-sm btn-success" runat="server" Text="Add item" OnClick="Button1_Click" />
        </div>
    </div>
</div>
                </div>
            </div>
            <div class="col-md-2">
               
                
            </div>
        </div>
    </div>


    <div class="container-fluid mt-5">
        <div class="row">
           
               <div class="col-md-12">
                  
                   <asp:GridView ID="items_table" runat="server" 
    CssClass="table table-hover table-striped" GridLines="None" 
    AutoGenerateColumns="False" Font-Size="12px">
                       <Columns>
        <asp:BoundField DataField="id" HeaderText="ID" Visible="true" />
        <asp:BoundField DataField="name" HeaderText="Name" />
        <asp:BoundField DataField="barcode" HeaderText="Barcode" />
        <asp:BoundField DataField="Purchase_price" HeaderText="Purchase Price" />
        <asp:BoundField DataField="Sale_price" HeaderText="Sale Price" />
        <asp:BoundField DataField="stock" HeaderText="Stock" />
        <asp:BoundField DataField="manufacturer" HeaderText="Manufacturer" />
        <asp:BoundField DataField="supplier" HeaderText="Supplier" />
        <asp:BoundField DataField="created_at" HeaderText="Created At " />
        <asp:BoundField DataField="updated_at" HeaderText="Updated  At " />
    </Columns>
    <RowStyle CssClass="cursor-pointer" />
                   </asp:GridView>
                  
               </div>
              
        </div>
    </div>

</asp:Content>
