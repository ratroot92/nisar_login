<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="assignment_5._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid bg-dark">
    <div class="row mt-5">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <div class="row mt-5 mb-5">
            <div class="col-md-12 text-center">
               <div class="card">
                   <div class="card-header  text-center ">
                       <h3 class="">
                           SIGN UP FORM 
                           <a class="btn btn-sm btn-info " runat="server" href="~/Login"  >Login now</a>
                       </h3>
                   </div>
                   <div class="card-body m-0 p-3 ">

                       <!-- form field -->
                       <div class=" form-group form-inline mt-3">
                           <div class="row">
                               <div class="col-md-3">
                                   <label class="btn btn-primary  font-weight-bold"style="font-size:12px;width:150px;">User Name </label>
                               </div>
                               <div class="col-md-9">
                                <asp:TextBox ID="txt1" runat="server" OnTextChanged="txt1_TextChanged" CssClass="form-control " Width="100%" ></asp:TextBox>

                               </div>
                                <div class="col-md-3">
                                   
                               </div>
                               <div class="col-md-9 "style="height:25px;font-size:12px;font-weight:bold;width:300px;">
                                <asp:RequiredFieldValidator CssClass="w-100 text-left text-info" Width="100%" ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt1" ErrorMessage="username is required"></asp:RequiredFieldValidator>
                               </div>
                           </div>
                       </div>
                         <!-- form field -->



                       <!-- form field -->
                       <div class=" form-group form-inline mt-1">
                           <div class="row">
                               <div class="col-md-3">
                                   <label class="btn btn-primary  font-weight-bold"style="font-size:12px;width:150px;">User Email </label>
                               </div>
                               <div class="col-md-9">
                                <asp:TextBox ID="txt2" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>

                               </div>
                                <div class="col-md-3">
                                   
                               </div>
                               <div class="col-md-9 "style="height:25px;font-size:12px;font-weight:bold;width:300px;">
                              <asp:RequiredFieldValidator CssClass="w-100 text-left text-info" Width="100%" ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt2" ErrorMessage="email is required"></asp:RequiredFieldValidator>
                               </div>
                           </div>
                       </div>
                         <!-- form field -->


                       <!-- form field -->
                       <div class=" form-group form-inline mt-1">
                           <div class="row">
                               <div class="col-md-3">
                                   <label class="btn btn-primary  font-weight-bold"style="font-size:12px;width:150px;">User Password </label>
                               </div>
                               <div class="col-md-9">
                                   
                                <asp:TextBox ID="txt3" runat="server" CssClass="form-control" Width="100%"></asp:TextBox>

                               </div>
                                <div class="col-md-3">
                                   
                               </div>
                               <div class="col-md-9 "style="height:25px;font-size:12px;font-weight:bold;width:300px;">
                           <asp:RequiredFieldValidator CssClass="w-100 text-left text-info" Width="100%" ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt3" ErrorMessage="user password is required "></asp:RequiredFieldValidator>
                               </div>
                           </div>
                       </div>
                         <!-- form field -->

                       <!-- form field -->
                       <div class=" form-group form-inline mt-1">
                           <div class="row">
                               <div class="col-md-3">
                                   <label class="btn btn-primary  font-weight-bold"style="font-size:12px;width:150px;">User Phone </label>
                               </div>
                               <div class="col-md-9">
                                <asp:TextBox ID="txt4" runat="server" CssClass="form-control " Width="100%"></asp:TextBox>

                               </div>
                                <div class="col-md-3">
                                   
                               </div>
                               <div class="col-md-9 "style="height:25px;font-size:12px;font-weight:bold;width:300px;">
                            <asp:RequiredFieldValidator CssClass="w-100 text-left text-info" Width="100%" ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt4" ErrorMessage="Phone number is required"></asp:RequiredFieldValidator>
                               </div>
                           </div>
                       </div>
                         <!-- form field -->

                       <!-- form field -->
                       <div class=" form-group form-inline mt-1">
                           <div class="row">
                               <div class="col-md-3">
                                   <label class="btn btn-primary  font-weight-bold"style="font-size:12px;width:150px;">Access Level </label>
                               </div>
                               <div class="col-md-9">
                                    <asp:DropDownList ID="ddn_1" CssClass="form-control" Width="100%" runat="server">
                        <asp:ListItem>Select Access Level</asp:ListItem>
                        <asp:ListItem Value="1">Admin</asp:ListItem>
                        <asp:ListItem Value="0">User</asp:ListItem>
                    </asp:DropDownList>
                              

                               </div>
                                <div class="col-md-3">
                                   
                               </div>
                               <div class="col-md-9 "style="height:25px;font-size:12px;font-weight:bold;width:300px;">
                            <asp:RequiredFieldValidator CssClass="w-100 text-left text-info" Width="100%" ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddn_1" ErrorMessage="Access level is required "></asp:RequiredFieldValidator>
                               </div>
                           </div>
                       </div>
                         <!-- form field -->
                   </div>

                   <div class="card-footer">
                       <div class="row">
                           <div class="col-md-3">
                                <asp:Button ID="btn_reset" runat="server" OnClick="Button1_Click" Text="RESET" CssClass="btn btn-sm btn-warning" CausesValidation="False" />
                           </div>
                           <div class="col-md-6"></div>
                           <div class="col-md-3">
                                <asp:Button ID="btn_signup" runat="server" OnClick="btn_signup_Click" Text="SIGN UP" CssClass="btn btn-sm btn-success" />
                   
                           </div>
                       </div>
                   </div>

               </div>
            </div>
           
        </div>
       
    
    </div>
    <div class="col-md-2"></div>
    </div>
    </div>



</asp:Content>
