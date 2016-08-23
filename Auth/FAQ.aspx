<%@ Page Title="FAQ" Language="C#" MasterPageFile="~/MasterPage_user.master" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="FAQ" %>
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
                    <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s">
                        <span><strong>FAQ</strong></span></h2>
                </div>
            </div>
            <!-- /.row -->
            <!-- Project One -->
            <div class="row">
                <div class="col-md-12 animated wow fadeIn" data-wow-delay="0.2s">
                    <p>
                        <strong>Q: Why do you create this site?</strong><br />
                        <strong>A:</strong> Trip & Shoot is a website to share your original photos and also a place to record the moment your heart miss a beat.
                    </p>
                    <p>
                        <strong>Q: What can we do on this site?</strong><br />
                        <strong>A:</strong> On this website, you can:
                        <asp:BulletedList ID="BulletedList1" runat="server">
                            <asp:ListItem>Upload your original photos and write several words to record your mind when you take the photo.</asp:ListItem>
                            <asp:ListItem>Surf the awesome photos shared by others and commment on it. </asp:ListItem>
                            <asp:ListItem>Make friends with other users sharing the same interests with you</asp:ListItem>
                            <asp:ListItem>Share amazing photos to third party.</asp:ListItem>
                        </asp:BulletedList>
                         
                    </p>
                    <p>
                        <strong>Q: Are there any restrictions on the photos?</strong><br />
                        <strong>A:</strong> Normally, your photos should be legal and not involving pornography or violent contents.
                    </p>
                    <p>
                        <strong>Q: How can you supervise the photos?</strong><br />
                        <strong>A:</strong> We utilized a kind of AI system to recognize the 'illegal photos' and also hired several people to regulate the photos uploaded.
                    </p>
                    <p>
                        <strong>Q: How can I join the team of Trip & Shoot?</strong><br />
                        <strong>A:</strong> You are welcome, you can cantact with us by sending email or make a phone call, after interview you may be one of our family~
                    </p>
                    <p>
                        <strong>Q: Where is the work building of Trip & Shoot?</strong><br />
                        <strong>A:</strong> Our work building is on the LinQuan Street at Suzhou, you can find us on Google map easily.
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

