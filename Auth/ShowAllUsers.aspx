<%@ Page Title="All Users List" Language="C#" MasterPageFile="~/MasterPage_user.master" AutoEventWireup="true" CodeFile="ShowAllUsers.aspx.cs" Inherits="Auth_ShowAllUsers" %>
<asp:Content ID="loginConten" ContentPlaceHolderID="MainBody" runat="Server">
    <link href="../css/gridview.css" rel="stylesheet" type="text/css" />
    <div class="padding100 container" style="">
    <p><asp:label runat="server" Font-Size="XX-Large">The following is all users</asp:label></p>
    <asp:AccessDataSource ID="UserShow" runat="server" DataFile="~/App_Data/database.accdb" SelectCommand="SELECT * FROM [user]"></asp:AccessDataSource>
    <asp:GridView runat="server" ID="gvuser" CssClass="GridViewStyle" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="UserShow" OnRowCommand="Dispalyuser">
        <FooterStyle CssClass="GridViewFooterStyle" />
        <RowStyle CssClass="GridViewRowStyle" />   
        <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
        <PagerStyle CssClass="GridViewPagerStyle" />
        <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
        <HeaderStyle CssClass="GridViewHeaderStyle" HorizontalAlign="Center" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="ID"></asp:BoundField>
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username"></asp:BoundField>
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password"></asp:BoundField>
            <asp:BoundField DataField="phoneno" HeaderText="phoneno" SortExpression="phoneno"></asp:BoundField>
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender"></asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
            <asp:BoundField DataField="degree" HeaderText="degree" SortExpression="degree"></asp:BoundField>
            <asp:BoundField DataField="homepage" HeaderText="homepage" SortExpression="homepage"></asp:BoundField>
            <asp:BoundField DataField="hobby" HeaderText="hobby" SortExpression="hobby"></asp:BoundField>
            <asp:ButtonField ButtonType="Link" HeaderText="Operation" Text="Display" ItemStyle-ForeColor="Blue"/>
        </Columns>
    </asp:GridView>
    <br /><hr />
    <asp:Label ID="lbdisplay" Font-Size="Larger" runat="server" />
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