<%@ Page Language="C#" MasterPageFile="~/MasterPage_visitor.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="preview_dotnet_templates_the_big_picture_login" %>
<asp:Content ID="loginConten" ContentPlaceHolderID="MainBody" Runat="Server">

    <!-- Bootstrap Core CSS -->
    <title>Please Login Your App</title>
    <link href="css/css/bootstrap1.min.css" rel="stylesheet"/>
    <!-- Custom CSS -->
    <link href="css/css/the-big-picture.css" rel="stylesheet"/>
    <link href="css/css/font-icon.css" rel="stylesheet" type="text/css" />
    <link href="css/css/main.css" rel="stylesheet" type="text/css" />
    <link href="css/css/responsive.css" rel="stylesheet" type="text/css" />
    <!-- ============ Google fonts ============ -->
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- Login -->
    <div class="container padding100 full">

        <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3 col-xs-offset-0 col-xs-12 col-xs-offset-0 padding-top50">
            
            <div class="registrationform">
          
                <h1 class="text-left">
                    Log in to your app</h1>
                <div class="form-group">
                    <label for="name">
                    </label>
                    <input type="text" class="form-control" id="name" name="name" placeholder="User name"
                        required>
                    <!--placing icon using a span element-->
                    <span class="icon fa fa-user fa-lg"></span>
                </div>
                <div class="form-group">
                    <label for="email">
                    </label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="password"
                        required>
                    <span class="icon fa fa-unlock fa-lg"></span>
                </div>
                <div class="form-group text-left">
                    <button type="submit" class="btn btn-default">
                        Submit</button>
                </div>
            </div>
        </div>
    </div>

    <!--
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.flexslider-min.js" type="text/javascript"></script>
    <script src="js/jquery.fancybox.pack.js" type="text/javascript"></script>
    <script src="js/retina.min.js" type="text/javascript"></script>
    <script src="js/modernizr.js" type="text/javascript"></script>
    <script src="js/main.js" type="text/javascript"></script>
        -->
</asp:Content>