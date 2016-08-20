<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_user.master" AutoEventWireup="true" CodeFile="SendMail.aspx.cs" Inherits="SendMail" %>

<asp:Content ID="SendMailcontent" ContentPlaceHolderID="MainBody" Runat="Server">

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
                        <legend>Send Email <i class="fa fa-pencil pull-right"></i></legend>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="From:" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="tb_sender" runat="server" CssClass="form-control" Text="FIT5192" ReadOnly="true"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ID="vldUsername" runat="server" Display="Dynamic" Font-Size="15px" ForeColor="Red" ErrorMessage="Please input a user name." ControlToValidate="tb_sender" />
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label7" runat="server" Text="Subject" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="tb_subject" runat="server" Display="Dynamic" CssClass="form-control"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Font-Size="15px" ForeColor="Red" ErrorMessage="Please enter a subject." ControlToValidate="tb_subject" />
                            
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Message" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="tb_message" runat="server" Display="Dynamic" CssClass="form-control" Rows="7" TextMode="MultiLine" ForeColor="Black"></asp:TextBox>
                                <%--<textarea id="TextArea1" cols="20" rows="10" runat="server" class="form-control"></textarea>--%>
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Font-Size="15px" ForeColor="Red" ErrorMessage="Email content cannot be empty." ControlToValidate="tb_message" />
                            
                        </div>

                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <asp:Button ID="btnSend" runat="server" CssClass="btn btn-primary" Text="Send" OnClick="btnSend_Click" />
                                  <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-warning" Text="Cancel" />                              
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>

        <!--the contact list-->
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" >
            <br />

            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>                        
                        <legend>Contact List <i class="fa fa-envelope pull-right"></i></legend>
                        <div class="form-group">
                            <%--<asp:Label ID="Label4" runat="server" Text="Subject" CssClass="col-lg-2 control-label"></asp:Label>--%>
                            <asp:AccessDataSource ID="dsUsers" runat="server" DataFile="~/DB/database.accdb" SelectCommand="SELECT [username], [email] FROM [user]" ></asp:AccessDataSource>
                            <div class="col-lg-10">
                                
                                <asp:GridView ID="gv_receiver" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="dsUsers" ForeColor="Black" GridLines="Vertical" Width="494px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                        <asp:TemplateField HeaderText="Select">
                                            <ItemTemplate>
                                                <asp:CheckBox ID="cb_email" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" />
                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#F7F7DE" />
                                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                    <SortedAscendingHeaderStyle BackColor="#848384" />
                                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                    <SortedDescendingHeaderStyle BackColor="#575357" />
                                </asp:GridView>
                            </div>
    
                        </div>
                        
                        <div class="form-group">
                            <asp:Label ID="lbl_Mail" runat="server" Visible="false" Font-Bold="true" CssClass="col-lg-2 control-label"></asp:Label>
                            
                        </div>
                        
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

