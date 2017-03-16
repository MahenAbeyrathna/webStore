<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="mywebstore.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Mahens Webstore Login</title>
    <link href="../Bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Nav Bar-->
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="Login.aspx">Home</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Contact</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-header">Electornics</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Mobile</a></li>
                                <li><a href="#">Laptops</a> </li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Vehicle</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Car</a></li>
                                <li><a href="#">Van</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Register</a></li>
                        <li><a href="#">LogIn</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
              <!-- Indicators -->
              <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
              </ol>
              <!-- Wrapper for slides -->
              <div class="carousel-inner" role="listbox">
                <div class="item active">
                  <img src="../Images/cr1.jpg" alt="..."/>
                  <div class="carousel-caption">
                    <p> New Iphone 7S Silver </p>
                  </div>
                </div>
                <div class="item">
                  <img src="../Images/cr2.jpg" alt="..."/>
                  <div class="carousel-caption">
                    <p> New Iphone 7S Rose </p>
                  </div>
                </div>
                <div class="item" >
                  <img src="../Images/cr3.jpg" alt="..."/>
                  <div class="carousel-caption">
                   <p> New Iphone 7S Black </p>
                  </div>
                </div>
                <div class="item">
                  <img src="../Images/cr5.jpg" alt="..."/>
                  <div class="carousel-caption">
                    <p> New Iphone 7S Rose </p>
                  </div>
                </div>
              </div>
              <!-- Controls -->
              <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
    </div>
    <div style="margin:200px;align-content:center">
    <table style="border:1px ridge#999999; width:450px">
        <tr>
            <td  colspan="2" style="text-align: center;">
                <asp:Label ID="Label1" runat="server" Font-Names="Aharoni" ForeColor="Red" Text="Shopping Cart Admin-Panel" Style="font-weight:700;text-align:center"  ></asp:Label>
                <hr />
           </td>
        </tr>
        <tr>
            <td style="width:50%;text-align:center">Login Id</td>
            <td><asp:TextBox runat="server" ID="LoginIdText"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width:50%;text-align:center">Password</td>
            <td><asp:TextBox ID="PasswordText" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width:50%"> &nbsp;</td>
            <td><asp:Button ID="LoginButton" runat="server" Text="Log In" OnClick="LoginButton_Click"/></td>
        </tr>
        <tr>
            <td colspan="2" >
                <hr />
                <asp:Label ID="Label2" runat="server" Font-Names="Aharoni" ForeColor="Red" ></asp:Label>
            </td>
            
        </tr>

    </table>
    </div>
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="../Bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
