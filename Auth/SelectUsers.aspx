<%@ Page Title="Select Users" Language="C#" MasterPageFile="~/MasterPage_user.master" AutoEventWireup="true" CodeFile="SelectUsers.aspx.cs" Inherits="Auth_SelecteUsers" %>
<asp:Content ID="loginConten" ContentPlaceHolderID="MainBody" runat="Server">  
    <asp:AccessDataSource ID="select" runat="server" DataFile="~/App_Data/database.accdb" SelectCommand="SELECT * FROM [user]"></asp:AccessDataSource>
    <link rel="stylesheet" href="../css/tablestyle.css" media="screen" type="text/css" />
    <div class="container padding100">
        <asp:label runat="server" Font-Size="XX-Large">Find Users!</asp:label>
        <br /><br /><br /> 
        <div style="text-align:center">
        <table style="margin:auto">
            <tr>
                <td colspan="10"><asp:Label runat="server" Text="User Name:" Font-Size="Large"></asp:Label></td>
                <td colspan="18">
                    <asp:TextBox ID="txtUser" runat="server" Width="150"></asp:TextBox>
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td colspan="10">
                    <asp:Button ID="btnUser" runat="server" OnClick="Findusers" Text="Search" CommandName="User" />
                </td>
            </tr>
            <tr><td><br /></td></tr>
            <tr>
                <td colspan="10"><asp:Label runat="server" Text="Email:" Font-Size="Large"></asp:Label></td>
                <td colspan="18">
                    <asp:TextBox ID="txtEmail" runat="server" Width="150"></asp:TextBox>
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td colspan="10">
                    <asp:Button ID="btnEamil" runat="server" Text="Search" OnClick="Findusers" CommandName="Email" />
                </td>
            </tr>
            <tr><td><br /></td></tr>
            <tr>
                <td colspan="10"><asp:Label runat="server" Text="Gender:" Font-Size="Large"></asp:Label></td>
                <td colspan="18">
                    <asp:DropDownList ID="GenderList" runat="server" Width="150">
                        <asp:ListItem>Male </asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                     </asp:DropDownList>
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td colspan="10">
                    <asp:Button ID="btnDegree" runat="server" Text="Search" OnClick="Findusers" CommandName="Degree" />
                </td>
            </tr>
        </table>
        </div>
        <hr />
        <br />
        <asp:listView ID="lv" runat="server">
            <ItemTemplate>
                    <section class="third lift plan-tier" onclick="location.href='#';">
                      <h4><%# Eval("username") %></h4>
                      <p class="early-adopter-price">The details of <%# Eval("username") %> </p><br>
                      <ul>
		                <li><strong>Password:</strong> <%# Eval("password") %></li>
		                <li><strong>Degree:</strong> <%# Eval("degree") %></li>
                        <li><strong>Gender:</strong> <%# Eval("gender") %></li>
		                <li><strong>PhoneNo:</strong> <%# Eval("phoneno") %></li>
                        <li><strong>Email:</strong> <%# Eval("email") %></li>
                        <li><strong>Hobby:</strong> <%# Eval("hobby") %></li>
		                <li><strong>Page:</strong> <a href="<%# Eval("homepage") %>"><%# Eval("homepage") %></a></li>
	                  </ul>
                      <br /><br />
                    </section>
            </ItemTemplate>
        </asp:listView>
    </div>
</asp:Content>
