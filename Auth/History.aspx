<%@ Page Title="History" Language="C#" MasterPageFile="~/MasterPage_user.master" AutoEventWireup="true" CodeFile="History.aspx.cs" Inherits="History" %>
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
                        <span><strong>History</strong></span></h2>
                </div>
            </div>
            <!-- /.row -->
            <!-- Project One -->
            <div class="row">
                <div class="col-md-12 animated wow fadeInUpBig" data-wow-delay="0.2s">
                    <h3><strong>Trip & Shoot</strong></h3>                 
                    <p>
                        Trip & Shoot is a website made by Lancelot and Sen where you may share your original photos 
                        and also a place to record the moment your heart miss a beat.
                    </p>
                </div>
            </div>

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

