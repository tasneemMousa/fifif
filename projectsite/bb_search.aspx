<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="bb_search.aspx.cs" Inherits="bb_search" %>
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
            <h2>بنوك الدم</h2>
            <div class="form1">
                <div class="containt">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control form-control-md" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <span class="h2">المدينة</span><br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT * FROM [cities]"></asp:SqlDataSource>

                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control form-control-md" Style="margin-top: 0">
                </asp:DropDownList>
                <span class="h2" style="padding-left: 10px; margin-top: 0">المنطقة</span><br />

                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-md" OnClick="Button1_Click1" Text="بحث" />
            </div>
        </div>
        <div class="results">
         
            <h2>نتائج البحث</h2>
            <div class="row">
                    
                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="1"  OnSelectedIndexChanged="DataList1_SelectedIndexChanged1">
                        <ItemTemplate>
                                  
       
                            <table class="table">
                                <tr>
                                   
                                    <td>
                                        <asp:Label ID="hospital_nameLabel" runat="server" Text='<%# Eval("bb_name") %>' />
                                    </td>
                                    <td>
                                        <h4>
                                            <asp:Label ID="Label6" runat="server" Text="الاسم"></asp:Label>
                                            <h4>
                                    </td>
                                     <td rowspan=5><asp:Image ID="Image1" runat="server"  style="width:260px" CssClass="resultImg" ImageUrl='<%# Eval("bb_logo_image") %>' />
</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="hospital_phoneLabel" runat="server" Text='<%# Eval("bb_phone") %>' />
                                    </td>
                                    <td>
                                        <h4>
                                            <asp:Label ID="Label3" runat="server" Text="التليفون "></asp:Label>

                                        </h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="hospital_addressLabel" runat="server" Text='<%# Eval("bb_address") %>' />
                                    </td>
                                    <td>
                                        <h4>
                                            <asp:Label ID="Label2" runat="server" Text="العنوان"></asp:Label>
                                        </h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="hospital_linkLabel" runat="server" Text='<%# Eval("bb_link") %>' />
                                    </td>
                                    <td>
                                        <h4>
                                            <asp:Label ID="Label4" runat="server" Text="الموقع"></asp:Label>

                                        </h4>
                                    </td>
                                </tr>
              
                                <tr>
                                    <td>
                                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-primary btn-md" NavigateUrl='<%# "map.aspx?lat="+Eval("bb_lat")+"&lng="+Eval("bb_lng")+"&address="+Eval("bb_address")+"&name="+Eval("bb_name")+"&phone="+Eval("bb_phone") %>'>الخريطة</asp:HyperLink>
                                        <asp:LinkButton ID="LinkButton3" runat="server"  CssClass="btn btn-primary btn-md" PostBackUrl="bb_motbr3.aspx">إتبرع</asp:LinkButton>
                                        <asp:LinkButton ID="LinkButton4" runat="server"  CssClass="btn btn-primary btn-md" PostBackUrl="request_blood.aspx">اطلب الفصيلة</asp:LinkButton> 
                                         </td>
                                </tr>
                            </table>
       
                     

                                
                        </ItemTemplate>
                    </asp:DataList>
                     </div>
                
                            
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


