<%@ Page Language="C#" MasterPageFile="~/MasterPage_visitor.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="preview_dotnet_templates_the_big_picture_login" %>

<asp:Content ID="loginConten" ContentPlaceHolderID="MainBody" runat="Server">
    <asp:AccessDataSource ID="UserLogin" runat="server" DataFile="~/App_Data/database.accdb" SelectCommand="SELECT * FROM [user]" OnSelected="CheckLogin" />





    <!-- Bootstrap Core CSS -->
    <title>Please Login Your App</title>
    <link href="css/css/bootstrap1.min.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="css/css/the-big-picture.css" rel="stylesheet" />
    <link href="css/css/font-icon.css" rel="stylesheet" type="text/css" />
    <link href="css/css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/css/responsive.css" rel="stylesheet" type="text/css" />
    <!-- ============ Google fonts ============ -->
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />



    <div class="container padding100 full">

        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50">

           <div class="registrationform">
                <asp:Login ID="Login" runat="server" OnAuthenticate="Login_Authenticate">
                    <LayoutTemplate>
                        <h1 class="text-left">Log in to your app</h1>             
                            <div class="form-group">
                                <asp:TextBox ID="UserName" CssClass="form-control" runat="server" placeholder="User name"></asp:TextBox>
                                <span class="icon fa fa-user fa-lg"></span>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="ctl02" />
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password" placeholder="password"></asp:TextBox>
                                <span class="icon fa fa-unlock fa-lg"></span>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="ctl02" />
                            </div>
                            <div class="form-group text-left">
<!--                              <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />-->
                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                            </div>
                            <div class="form-group">
                                <asp:Button ID="LoginButton" runat="server" CssClass="btn btn-default" CommandName="Login" Text="Log In" ValidationGroup="ctl02" />
                        
                            </div>
                    </LayoutTemplate>
                </asp:Login>

            </div>
        </div>
    </div>
</asp:Content>
