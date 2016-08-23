<%@ Page Title="Source Code" Language="C#" MasterPageFile="~/MasterPage_user.master" AutoEventWireup="true" CodeFile="ShowSourceCode.aspx.cs" Inherits="Auth_ShowSourceCode" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainBody" runat="Server">
    <div class="padding100" id="blog">
        <div class="container">
           <!--bread crump-->
            <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
                <CurrentNodeStyle ForeColor="#333333" />
                <NodeStyle Font-Bold="True" ForeColor="#7C6F57" />
                <PathSeparatorStyle Font-Bold="True" ForeColor="#5D7B9D" />
                <PathSeparatorTemplate>
                    -->
                </PathSeparatorTemplate>
                <RootNodeStyle Font-Bold="True" ForeColor="#5D7B9D" />
            </asp:SiteMapPath>

            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 id="pagetitle" runat="server" class="background double animated wow fadeInUp" data-wow-delay="0.2s">
                        <span><strong>Source Code</strong></span></h2>
                </div>
            </div>
            <asp:DataList ID="dlFiles" runat="server" Font-Names="Arial">
                <HeaderStyle Font-Bold="true" />
                <HeaderTemplate>Directory File List</HeaderTemplate>
                <AlternatingItemStyle BackColor="#7DCCF7" />
                <ItemTemplate>
                <a href="ShowSourceCode.aspx?path=../css/<%#Container.DataItem%>" target="_blank">
                <%#Container.DataItem%></a>
                </ItemTemplate>
           </asp:DataList>
           <asp:DataList ID="dlfiles1" runat="server" Font-Names="Arial">
                <HeaderStyle Font-Bold="true" />
                <HeaderTemplate>Directory File List</HeaderTemplate>
                <AlternatingItemStyle BackColor="#7DCCF7" />
                <ItemTemplate>
                <a href="ShowSourceCode.aspx?path=../App_Themes/<%#Container.DataItem%>" target="_blank">
                <%#Container.DataItem%></a>
                </ItemTemplate>
           </asp:DataList>





            <asp:Label ID="codetitle" runat="server" Font-Italic="true" Font-Size="X-Large" ForeColor="Blue" Font-Bold="true" />
            <br /><br />
            <asp:Label ID="showcode" runat="server" BorderWidth="1" BorderColor="Black" />
            <br /><br />

            <asp:Label ID="cscodetitle" runat="server" Font-Italic="true" Font-Size="X-Large" ForeColor="Blue" Font-Bold="true" />
            <br /><br />

            <asp:Label ID="showcscode" runat="server" BorderWidth="1" BorderColor="Black"/>
            <br /><br />

            <asp:Label ID="histitle" runat="server" Font-Italic="true" Font-Size="X-Large" ForeColor="Blue" Font-Bold="true" />
            <br /><br />

            <asp:Label ID="showhistory" runat="server" BorderWidth="1" BorderColor="Black"/>
            <br /><br />

            <asp:Label ID="faqtitle" runat="server" Font-Italic="true" Font-Size="X-Large" ForeColor="Blue" Font-Bold="true" />
            <br /><br />

            <asp:Label ID="showfaq" runat="server" BorderWidth="1" BorderColor="Black"/>       
        </div>
      </div>
    <script src="../js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/wow.min.js" type="text/javascript"></script>
    <script src="../js/tutorial.js"></script>
    <script src="../css/owl/owl.carousel.js" type="text/javascript"></script>
    <!-- SmartMenus jQuery plugin -->
    <script type="text/javascript" src="../js/jquery.smartmenus.js"></script>
    <!-- SmartMenus jQuery Bootstrap Addon -->
    <script type="text/javascript" src="../js/jquery.smartmenus.bootstrap.js"></script>
</asp:Content>

