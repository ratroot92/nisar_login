<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Suppliers.aspx.cs" Inherits="assignment_5.Pages.Suppliers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2"></div>
            <!-- start of suppliers form -->

             <div class="col-md-8 border">
                 <!-- start -->
                 <!-- form row 1 -->
                 <div class="row">
                     <div class="col-md-3"><span class="btn btn-primary">ID</span></div>
                     <div class="col-md-9">
                         <asp:TextBox ID="txt_id" runat="server" CssClass="form-control"></asp:TextBox>
                         
                     </div>
                 
                 </div>
                 <div class="row">
                     <div class="col-md-3"></div>
                     <div class="col-md-9">
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_id" ErrorMessage="Supplier ID is required"></asp:RequiredFieldValidator>
                     </div>
                 </div>

                  <!-- form row 1 -->


                  <!-- form row 2 -->
                 <div class="row">
                     <div class="col-md-3"><span class="btn btn-primary">Supplier Name </span></div>
                     <div class="col-md-9">
                     
                         
                         <asp:TextBox ID="txt_name" runat="server" CssClass=" form-control"></asp:TextBox>
                     
                         
                     </div>
                 
                 </div>
                 <div class="row">
                     <div class="col-md-3">
                       
                     </div>
                     <div class="col-md-9">
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_name" ErrorMessage="Supplier name is required"></asp:RequiredFieldValidator>
                     </div>
                 </div>

                  <!-- form row 2 -->



                 
                  <!-- form row 3 -->
                 <div class="row">
                     <div class="col-md-3"><span class="btn btn-primary">Supplier Address</span></div>
                     <div class="col-md-9">
                       
                         
                         <asp:TextBox ID="txt_address" runat="server" ClientIDMode="AutoID" CssClass="form-control"></asp:TextBox>
                       
                         
                     </div>
                 
                 </div>
                 <div class="row">
                     <div class="col-md-3">
                        
                     </div>
                     <div class="col-md-9">
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_address" ErrorMessage="Supllier address is required"></asp:RequiredFieldValidator>
                 </div>
                     </div>

                  <!-- form row 4 -->

                  
                  <!-- form row 5 -->
                 <div class="row">
                     <div class="col-md-3"><span class="btn btn-primary">Supplier Status</span></div>
                     <div class="col-md-9">
                       
                         <asp:DropDownList ID="ddn_1" runat="server" CssClass="form-control ">
                             <asp:ListItem>Select Supplier Status</asp:ListItem>
                             <asp:ListItem Value="1">Active</asp:ListItem>
                             <asp:ListItem Value="0">In active</asp:ListItem>
                         </asp:DropDownList>
                       
                     </div>
                 
                 </div>
                 <div class="row">
                     <div class="col-md-3">
                        
                     </div>
                     <div class="col-md-9">
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Supllier status is required" ControlToValidate="ddn_1"></asp:RequiredFieldValidator>
                     </div>
                 </div>

                  <!-- form row 5 -->




             </div>
<!-- end of suppliers form -->
            
            <div class="col-md-2"></div>
        </div>
    </div>

    </div>
</asp:Content>
