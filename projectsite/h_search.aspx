﻿<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="h_search.aspx.cs" Inherits="h_search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width-device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <title>CodeBlue</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/SearchStyle.css"/>
    <link rel="stylesheet" type="text/css" href="css/SearchMedia.css"/>
    <link href="http://fonts.googleapis.com/css?family=Reenie+Beanie:regular" rel="stylesheet" type="text/css"/>
    <link href="http://fonts.googleapis.com/css?family=Amiri&subset=arabic,latin" rel="stylesheet" type="text/css"/>
    <link rel="shortcut icon" href="img/logo.png"/>
</head>
<body>
    <form runat="server">
    <div id="scroll-top">
        <i class="fa fa-chevron-up fa-2x"></i>
    </div>
    <!--Start Header-->
    <div class="back1">
        <div class="overlay">
            <div class="container">
                <div class="row">
                    <div class="half1 ml col-sm">
                        <span>C<img src="img/5.png"/>DE</span><br/>
                        <img src="img/6.png"/><br/>
                        <span>BLUE</span>
                    </div>
                    <div class="half2">
                        <label>تواصل معنا </label>
                        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="login.aspx"><label>تسجيل الدخول</label><i class="fa fa-user fa-lg"></i></asp:LinkButton>
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="MainPage.aspx">الصفحة الرئيسية<i class="fa fa-home fa-lg"></i></asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="search">
        <div class="container">
            <h2>المستشفيات</h2>
            <div class="form1">
                 <div class="containt">
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
     <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control form-control-md" AutoPostBack="True"  OnSelectedIndexChanged="zones">
    </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT * FROM [cities]"></asp:SqlDataSource>
      <span class="h2">المدينة</span><br />
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
    <asp:DropDownList ID="DropDownList2" runat="server"  DataTextField="zone_name" DataValueField="zone_name" CssClass="form-control form-control-md">
    </asp:DropDownList>
<span class="h2" style="padding-left: 10px; margin-top: 0">المنطقة</span><br />
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control form-control-md">
            <asp:ListItem>عام</asp:ListItem>
            <asp:ListItem>خاص</asp:ListItem>
        </asp:DropDownList>
<span class="h2" style="padding-left: 10px; margin-top: 0">النوع</span><br />
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-md" OnClick="Button1_Click" Text="بحث" />
          </div>
                </div>
                <div class="results">

                    <h3>نتائج البحث</h3>
                    <div class="row">
                      
                            <asp:DataList ID="DataList1" runat="server" >
        <ItemTemplate>
  <table class="table">
                                        <tr>
                                            <td>
               <asp:Label ID="hospital_nameLabel" runat="server" Text='<%# Eval("hospital_name") %>' />
                                                 </td>
                                            <td>
                                                <h4>
                 <asp:Label ID="Label6" runat="server" Text="الاسم"></asp:Label>
                                                    
                                                    </h4>
                                            </td>
                                            <td>                                        <asp:Image ID="Image1" runat="server" Height="154px" ImageUrl='<%# Eval("hospital_logo_img") %>'/>
</td>
                                        </tr>
                                        <tr>
                                            <td>
                 <asp:Label ID="hospital_phoneLabel" runat="server" Text='<%# Eval("hospital_phone") %>' />
                                                 </td>
                                            <td>
                                                <h4>
   <asp:Label ID="Label3" runat="server" Text="التليفون "></asp:Label>
                                                    </h4>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
  <asp:Label ID="hospital_addressLabel" runat="server" Text='<%# Eval("hospital_address") %>' />
                                                 </td>
                                            <td>
                                                <h4>
                                                      <asp:Label ID="Label2" runat="server" Text="العنوان"></asp:Label>
                                                     </h4>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
 <asp:Label ID="hospital_linkLabel" runat="server" Text='<%# Eval("hospital_link") %>' />
                                                  </td>
                                            <td>
                                                <h4>
                                                     <asp:Label ID="Label4" runat="server" Text="الموقع"></asp:Label>
                                                    
                                                </h4>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                 <asp:Label ID="Label7" runat="server" Enabled="False" Text="hight"></asp:Label>
                        <asp:Label ID="Label8" runat="server" Enabled="False" Text="width"></asp:Label>
                                                 </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-primary btn-md" NavigateUrl='<%# "map.aspx?lat="+Eval("hospital_lat")+"&lng="+Eval("hospital_lng")+"&address="+Eval("hospital_address")+"&name="+Eval("hospital_name")+"&phone="+Eval("hospital_phone") %>'>الخريطة</asp:HyperLink>

                                            </td>
                                        </tr>
                                    </table>
                               
                                
                
                            </div>
                                        
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                 
                </div>
            </div>
        </section>
        <section class="empty"></section>
        <!--End Header-->
        <section class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <h3>خريطة الموقع</h3>
                        <ul class="list-unstyled three-columns">
                            <li><a href="#">نبذة عن الموقع</a></li>
                            <li><a href="#">هدف الموقع</a></li>
                            <li><a href="#">الخصوصية</a></li>
                            <li><a href="#">المساعدة</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-6 col-md-6 ">
                        <h3>تابعنا</h3>
                        <ul class="list-unstyled social-list">
                            <li><i class="fa fa-facebook fa-lg" style="background: #3b5998; padding: 8px"></i></li>
                            <li><i class="fa fa-twitter fa-lg" style="background: #00aced; padding: 8px 5px 8px"></i></li>
                            <li><i class="fa fa-google-plus fa-lg" style="background: #d34836;"></i></li>
                            <li><i class="fa fa-skype fa-lg" style="background: #00aff0"></i></li>
                            <li><i class="fa fa-whatsapp fa-lg" style="background: #25d366"></i></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </form>
    <!-- start Footer-->
    <footer>
        <div class="container">
            <h5>Copyright &copy; 2018 CodeBlue.Inc- All Rights Reserved.</h5>
        </div>
    </footer>

    <!--End footer-->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/plugin.js"></script>
</body>
</html>
