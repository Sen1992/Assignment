<%@ Page Title="About Us" Language="C#" MasterPageFile="~/MasterPage_user.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainBody" Runat="Server">
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
                    <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s">
                        <span><strong>About Us</strong></span></h2>
                </div>
            </div>
            <!-- /.row -->
            <!-- Project One -->
            <div class="row">
                <div class="col-md-5">
                    <a href="#">
                        <img class="img-responsive animated wow fadeInLeft" data-wow-delay="0.2s" src="img/about.jpg"
                            alt="" />
                    </a>
                </div>
                <div class="col-md-7 animated wow fadeInRight" data-wow-delay="0.4s">
                    <h3><strong>Lancelot & Sen</strong></h3>
                    
                    <p>
                        This is a website made by Lancelot and Sen.
                    </p>
                    
                </div>
            </div>

        </div>
    </div>
</asp:Content>

