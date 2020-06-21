<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs"  Inherits="assignment_5.Login" %>


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
                        Login
                          
                       </h3>
                     <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-info float-right font-weight-bold" NavigateUrl="~/Signup.aspx">Signup now </asp:HyperLink>
                   </div>
                   <div class="card-body m-0 p-3 ">

                       <!-- form field -->
                       <div class=" form-group form-inline mt-3">
                           <div class="row">
                               <div class="col-md-3">
                                   <label style="font-size:12px;width:150px;">User Name </label>
                               </div>
                               <div class="col-md-9">
                              

                             
                              

                                   <asp:TextBox ID="txt1" CssClass="form-control " Width="100%" runat="server"></asp:TextBox>
                              

                               </div>
                                <div class="col-md-3">
                                   
                               </div>
                               <div class="col-md-9 "style="height:25px;font-size:12px;font-weight:bold;width:300px;">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt1" ErrorMessage="username is required"></asp:RequiredFieldValidator>
                               </div>
                           </div>
                       </div>
                         <!-- form field -->


                       <!-- form field -->
                       <div class=" form-group form-inline mt-3">
                           <div class="row">
                               <div class="col-md-3">
                                   <label class="btn btn-primary  font-weight-bold"style="font-size:12px;width:150px;">Password </label>
                               </div>
                               <div class="col-md-9">
                              

                                   <asp:TextBox ID="txt2" CssClass="form-control " Width="100%" runat="server"></asp:TextBox>
                              

                               </div>
                                <div class="col-md-3">
                                   
                                   
                                   
                               </div>
                               <div class="col-md-9 "style="height:25px;font-size:12px;font-weight:bold;width:300px;">
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt2" ErrorMessage="password is required"></asp:RequiredFieldValidator>
                               </div>
                               
                             
                           </div>
                       </div>
                         <!-- form field -->




                      
                   </div>

                   <div class="card-footer">
                       <div class="row">
                           <div class="col-md-3">
                              
                           </div>
                           <div class="col-md-6"></div>
                           <div class="col-md-3">
                              
                     <asp:Button ID="btn2" runat="server" CssClass="btn btn-sm btn-success" Text="Login" OnClick="btn2_Click" />
                           </div>
                       </div>
                   </div>

               </div>
            </div>
           
        </div>
       
    
    </div>
    <div class="col-md-2" style="left: 66px; top: 0px; margin-bottom: 2px"></div>
    </div>
    </div>



    </div>
</asp:Content>

