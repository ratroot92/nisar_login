<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NisarLogin.aspx.cs" Inherits="assignment_5.NisarLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <!-- START OF LOGIN __OFRM -->





    <!-- END OF FORM -->




   

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-10">
                <!-- start of form -->
                <form action="/" method="post">
                    <div class="form-row form-inline form-group">
                        <label class=" btn btn-primary">User Name </label>
                            <asp:TextBox ID="txt_username" CssClass="form-control w-100 " runat="server"></asp:TextBox>

                        

                    </div>
                    <!-- validation field start -->
                        <div class="alert alert-info">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Usrrname is required" ControlToValidate="txt_username"></asp:RequiredFieldValidator>
                        </div>

                        <!-- valdiation field ebnd -->
                     <div class="form-row form-inline form-group">
                        <label class=" btn btn-primary">User Password </label>
                         <asp:TextBox ID="txt_userpassword" CssClass="form-control w-100" runat="server"></asp:TextBox>
                    </div>
                     <!-- validation field start -->
                        <div class="alert alert-info">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="user password is required " ControlToValidate="txt_userpassword"></asp:RequiredFieldValidator>
                        </div>

                        <!-- valdiation field ebnd -->

                    <div class="form-inline form-group">
                             <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" />
                    </div>
               
                    
                </form>
                </form>


                <!-- end of form -->

            </div>
            <div class="col-md-2"></div>
        </div>
    </div>


</asp:Content>
