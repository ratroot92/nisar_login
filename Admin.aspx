<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="assignment_5.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="~/Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.0-2/css/all.min.css" integrity="sha256-46r060N2LrChLLb5zowXQ72/iKKNiw/lAmygmHExk/o=" crossorigin="anonymous" />
    
    <title>Admin</title>
    <style>
        .text_decoration_none{
            text-decoration:none!important;

        }
		.list-group-item{
		border-radius:0px !important;

		margin:0px!important;
		padding:0px!important;
          border:1px solid white !important;
          color:white;
	
		}
        .list-group-item a{
		border-radius:0px !important;
		
		margin:0px!important;
		padding:5px!important;
          border:0px !important;
          color:white;
            font-family: "Lucida Console", Courier, monospace;
	
		}
        .monospace {
  font-family: "Lucida Console", Courier, monospace;
}
    </style>
</head>
<body>
    <div class="container-fluid">
		<div class="row">
        <div class="col-md-12">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="#">Hidden brand</a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
        </div>
		</div>
	<div class="row">
		<div class="col-md-2 bg-white p-2">
						<ul class="list-group bg-dark" id="nav-tab" role="tablist">
						<li class=" list-group-item  bg-dark "><a class="nav-link active" id="nav-dashboard-tab" data-toggle="tab" href="#nav-dashboard" role="tab" aria-controls="nav-home" aria-selected="true">Dashboard</a></li>
						<li class="list-group-item bg-dark"><a class="nav-link " id="nav-items-tab" data-toggle="tab" href="#nav-items" role="tab" aria-controls="nav-items" aria-selected="false">Items</a></li>
                        <li class="list-group-item bg-dark"><a class="nav-link " id="nav-add_items-tab" data-toggle="tab" href="#nav-add_items" role="tab" aria-controls="nav-add_items" aria-selected="false">Add Item</a></li>
						<li class=" list-group-item bg-dark"><a class="nav-link " id="nav-contact-tab" data-toggle="tab" href="#nav-suppliers" role="tab" aria-controls="nav-suppliers" aria-selected="false">Suppliers</a></li>
                        <li class=" list-group-item bg-dark"><a class="nav-link " id="nav-contact-tab" data-toggle="tab" href="#nav-suppliers" role="tab" aria-controls="nav-add_suppliers" aria-selected="false">Add Suppliers</a></li>
					
					</ul></div>
		<div class="col-md-9">
            <div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-dashboard" role="tabpanel" aria-labelledby="nav-dashboard-tab">
						
					</div>
                <!-- START ITEMS TAB -->
					<div class="tab-pane fade" id="nav-items" role="tabpanel" aria-labelledby="nav-items-tab">
						    <div class="container-fluid">
        <div class="row">
        <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="card">
<div class="card-header text-center bg-dark text-white ">
<h3>NEW ITEM FORM  </h3>
</div>

<div class="card-body">
<form runat="server">

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
                  </form>
               </div>
              
        </div>
    </div>
						</div>
                <!-- END ITEMS TAB -->
                    <div class="tab-pane fade" id="nav-add_items" role="tabpanel" aria-labelledby="nav-add_items-tab">
						Profile
						</div>
					<div class="tab-pane fade" id="nav-suppliers" role="tabpanel" aria-labelledby="nav-suppliers-tab">
						contact
					</div>

                	<div class="tab-pane fade" id="nav-add_suppliers" role="tabpanel" aria-labelledby="nav-suppliers-tab">
						contact
					</div>
					
				</div>
		</div>
	</div>
</div>


				
</body>
<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

    <!-- Resources -->
<script src="https://www.amcharts.com/lib/4/core.js"></script>
<script src="https://www.amcharts.com/lib/4/charts.js"></script>
<script src="https://www.amcharts.com/lib/4/themes/dark.js"></script>
<script src="https://www.amcharts.com/lib/4/themes/animated.js"></script>
    


</html>

