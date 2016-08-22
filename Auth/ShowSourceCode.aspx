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
            <asp:Label ID="codetitle" runat="server" Font-Italic="true" Font-Size="X-Large" ForeColor="Blue" Font-Bold="true" />
            <br /><hr />
            <asp:Label ID="showcode" runat="server" />
            <br /><hr />
            <asp:Label ID="cscodetitle" runat="server" Font-Italic="true" Font-Size="X-Large" ForeColor="Blue" Font-Bold="true" />
            <br /><hr />
            <asp:Label ID="showcscode" runat="server" />
        </div>
      </div>
</asp:Content>

