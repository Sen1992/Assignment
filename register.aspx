<%@ Page Title="Register" Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage_user.master" CodeFile="register.aspx.cs" Inherits="preview_dotnet_templates_registration_Form_index" %>
<asp:Content ID="Registercontent" ContentPlaceHolderID="MainBody" Runat="Server">
    <asp:accessdatasource runat="server" id="users" DataFile="~/App_Data/database.accdb" 
    SelectCommand="SELECT * FROM [user]" DeleteCommand="DELETE FROM [user] WHERE [ID] = ?" InsertCommand="INSERT INTO [user] ([username], [password], [gender], [degree], [email], [phoneno], [homepage], [hobby]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" OnSelecting="users_Selecting" UpdateCommand="UPDATE [user] SET [username] = ?, [password] = ?, [gender] = ?, [degree] = ?, [email] = ?, [phoneno] = ?, [homepage] = ? WHERE [ID] = ?">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="password" Type="String" />
        <asp:Parameter Name="gender" Type="String" />
        <asp:Parameter Name="degree" Type="String" />
        <asp:Parameter Name="email" Type="String" /> 
        <asp:Parameter Name="phoneno" Type="String" />
        <asp:Parameter Name="homepage" Type="String" />
        <asp:Parameter Name="hobby" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="password" Type="String" />
        <asp:Parameter Name="gender" Type="String" />
        <asp:Parameter Name="degree" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="phoneno" Type="String" />
        <asp:Parameter Name="homepage" Type="String" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
</asp:accessdatasource>

<script type="text/javascript">
    function check(source, arguments) {
        if (arguments.Value.length < 6 || arguments.Value.length > 18) {
            arguments.IsValid = false;
        }
        else {
            arguments.IsValid = true;
        }
    }

</script>
   
    <!--[if lt IE 7]> <html> <![endif]-->
    <!--[if IE 7]>    <html> <![endif]-->
    <!--[if IE 8]>    <html> <![endif]-->
    <!--[if IE 9]> <html> <![endif]-->
    <meta charset="utf-8" >
    <!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="Coming soon, Bootstrap, Bootstrap 3.0, Free Coming Soon, free coming soon, free template, coming soon templRegister the app</title>
    <!-- ============ Google fonts ============ -->
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <!-- ============ Add custom CSS here ============ -->
    <link href="css/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/css/font-awesome.css" rel="stylesheet" type="text/css" />

    <div class="container padding100 ful">
        <!--the send email form-->
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <!--bread crump-->
            <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
                <CurrentNodeStyle ForeColor="#333333" />
                <NodeStyle Font-Bold="True" ForeColor="#990000" />
                <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
                <PathSeparatorTemplate>
                    -->
                </PathSeparatorTemplate>
                <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
            </asp:SiteMapPath>

            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>                        
                        <legend>Registration Form <i class="fa fa-pencil pull-right"></i></legend>
                         <asp:HyperLink ID="HyperLink1" runat="server" Font-Italic="true" Font-Size="15px" ForeColor="White" Font-Underline="true" NavigateUrl="~/Auth/ShowAllUsers.aspx">Click here to see all the customers.</asp:HyperLink>
                         <br />
                         <asp:HyperLink ID="HyperLink2" runat="server" Font-Italic="true" Font-Size="15px" Font-Underline="true" ForeColor="White" NavigateUrl="~/Auth/SelectUsers.aspx">Click here to search customers under certain condition.</asp:HyperLink>
                         <hr />

                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Username:" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="UNTextbox" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ID="vldUsername" runat="server" Display="Dynamic" Font-Size="15px" ForeColor="Red" ErrorMessage="Please input a user name." ControlToValidate="UNTextbox" />
                        </div>
                        
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Password:" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="PWTextbox" runat="server" CssClass="form-control"
                                    TextMode="Password"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ID="vldPassword" runat="server" Font-Size="15px" ForeColor="Red" Display="Dynamic" ErrorMessage="Please input a password." ControlToValidate="PWTextbox" />
                            <asp:CustomValidator ID="vldlenth" runat="server" Font-Size="15px" ForeColor="Red" Display="Dynamic" ControlToValidate="PWTextbox" ClientValidationFunction="check" Text="Password must be between 6 and 18.">
                            </asp:CustomValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="Confirm password:" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="PWTextbox1" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            </div>
                            <asp:CompareValidator ID="comparePassword" runat="server" Font-Size="15px" ForeColor="Red" Display="Dynamic" ErrorMessage="Passwords entered are not the same." 
                                ControlToCompare="PWTextbox" ControlToValidate="PWTextbox1" />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="Gender" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <div class="radio">
                                    <label>
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                            <asp:ListItem Selected="True">Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </label>
                                </div>
                            </div>
                            <asp:RequiredFieldValidator ID="vldGender" runat="server" Font-Size="15px" ForeColor="Red" Display="Dynamic" ErrorMessage="Please select a gender" ControlToValidate="RadioButtonList1" />
                        </div>
                        <div class="form-group">
                          <asp:Label ID="Label5" runat="server" Text="Degree" CssClass="col-lg-2 control-label"></asp:Label>                          
                            <div class="col-lg-10">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control ddl">
                                    <asp:ListItem>Bachelor </asp:ListItem>
                                    <asp:ListItem>Master</asp:ListItem>
                                    <asp:ListItem>Doctor</asp:ListItem>
                                    <asp:ListItem>Others</asp:ListItem>
                                </asp:DropDownList>                              
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label6" runat="server" Text="Email:" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="EmailTextbox" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ID="vldEmail" Font-Size="15px" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Please enter a Email." ControlToValidate="EmailTextbox" />
                            <asp:RegularExpressionValidator ID="vldEmailformat" runat="server" Font-Size="15px" ForeColor="Red" ValidationExpression=".*@.*\..*" 
                                ControlToValidate="EmailTextbox" ErrorMessage="Invalid email" Display="Dynamic" />
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label8" runat="server" Text="PhoneNo:" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="PhoneTextbox" runat="server" Font-Size="15px" Display="Dynamic" CssClass="form-control"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter a Email." ControlToValidate="EmailTextbox" />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="\b1\d{10}\b|\b8\d{7}\b" 
                                ControlToValidate="PhoneTextbox" Font-Size="15px" ForeColor="Red" ErrorMessage="Invalid Phone No" Display="Dynamic" />
                        </div>


                        <div class="form-group">
                            <asp:Label ID="Label7" runat="server" Text="HomePage:" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="HPTextbox" runat="server" Display="Dynamic" CssClass="form-control"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Font-Size="15px" ForeColor="Red" ErrorMessage="Please enter a Email." ControlToValidate="EmailTextbox" />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="http://([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?" 
                                ControlToValidate="HPTextbox" Font-Size="15px" ForeColor="Red" ErrorMessage="Invalid URL" Display="Dynamic" />
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label9" runat="server" Text="Hobby:" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <div class="checkbox">
                                   <p>
                                    <asp:CheckBox ID="ckmusic" runat="server" Text="Music" />
                                    <asp:CheckBox ID="cksprot" runat="server" Text="Sport" />
                                    <asp:CheckBox ID="ckreading" runat="server" Text="Reading" />
                                    <asp:CheckBox ID="cktravel" runat="server" Text="Travel" />
                                   </p>
                                </div>        
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="Register"/>                                    
                            </div>
                        </div>

                         <br /><hr />
                         <asp:Label ID="userdisplay" Font-Size="Larger" runat="server" />
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery1.js" type="text/javascript"></script>
    <script src="js/bootstrap1.min.js" type="text/javascript"></script>
    <script src="js/jquery.backstretch.js" type="text/javascript"></script>
    <script type="text/javascript">
        'use strict';

        /* ========================== */
        /* ::::::: Backstrech ::::::: */
        /* ========================== */
        // You may also attach Backstretch to a block-level element
        $.backstretch(
        [
      //      "img/44.jpg",
    //        "img/colorful.jpg",
            "img/34.jpg",
  //          "img/images.jpg"
        ],

        {
         //   duration: 4500,
          //  fade: 1500
        }
    );
    </script>
</asp:Content>