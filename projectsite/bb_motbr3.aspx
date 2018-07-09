<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bb_motbr3.aspx.cs" Inherits="bb_motbr3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
  <meta name="viewport" content="width-device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <title>CodeBlue</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/media.css">
  <link  href="http://fonts.googleapis.com/css?family=Reenie+Beanie:regular" rel="stylesheet" type="text/css">
  <link  href="http://fonts.googleapis.com/css?family=Amiri&subset=arabic,latin" rel="stylesheet" type="text/css">
  <link rel="shortcut icon" href="img/logo.png">

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
        <div class="half2">
          <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="login.aspx"><label>تسجيل الدخول</label><i class="fa fa-user fa-lg"></i></asp:LinkButton>
                            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="MainPage.aspx">الصفحة الرئيسية<i class="fa fa-home fa-lg"></i></asp:LinkButton>
                     
          <label> تواصل معنا </label>
      </div>
     <div class="half1 ml col-sm"><span>C<img src="img/5.png"/>DE</span><br><img src="img/6.png"/><br>
      <span >BLUE</span>
    </div>
   </div>
   </div>
 </div>
 </div>
<section class="search">
  <div class="container">
  <h2> <asp:Label ID="lbl_bb_name" runat="server"></asp:Label>
</h2>
  <div class="form1">
  <div class="containt">
  <h2>تسجيل البيانات</h2>
                          <asp:Label ID="Label1" runat="server" CssClass="h2" style="width:300px" Text="اسم المتبرع"></asp:Label>

   <div class="form-check form-check-inline">
                    <asp:TextBox ID="txtname" CssClass="form-control form-control-lg" runat="server" Width="352px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="من فضلك ادخل الاسم" ForeColor="Red"></asp:RequiredFieldValidator>
       </div>
<br/>
                         <asp:Label ID="Label3" CssClass="h2" style="width:300px" runat="server" Text="الفصيلة"></asp:Label>
      <div class="form-check form-check-inline">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddltype" ErrorMessage="من فضلك اختر الفصيلة" ForeColor="Red"></asp:RequiredFieldValidator>
               
                    <asp:DropDownList ID="ddltype" CssClass="form-control form-control-lg" runat="server" Height="40px" Width="146px" AutoPostBack="True">
                    </asp:DropDownList>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddltype" ErrorMessage="من فضلك اختر الفصيلة" ForeColor="Red"></asp:RequiredFieldValidator>

          </div>
              <br />
                                  <asp:Label ID="Label4" CssClass="h2" style="width:300px" runat="server" Text="رقم الهاتف "></asp:Label>
      <div class="form-check form-check-inline">
               
                    <asp:TextBox ID="txtphone" CssClass="form-control form-control-lg" runat="server" Width="352px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtphone" ErrorMessage="من فضلك ادخل رقم الهاتف للتواصل " ForeColor="Red"></asp:RequiredFieldValidator>

            </div>    
            <br />
                                <asp:Label ID="Label7" CssClass="h2" style="width:300px" runat="server" Text="العنوان"></asp:Label>
      <div class="form-check form-check-inline">
                    <asp:TextBox ID="txtaddress" CssClass="form-control form-control-lg" runat="server" Width="352px"></asp:TextBox>
              
          </div>  <br />
                          <asp:Label ID="Label5" CssClass="h2" style="width:300px" runat="server" Text="الجنس"></asp:Label>
      <div class="form-check form-check-inline">
                    <asp:DropDownList ID="ddlsex" CssClass="form-control form-control-lg" runat="server" Height="25px" Width="146px" AutoPostBack="True">
                        <asp:ListItem Value="ولد">ولد</asp:ListItem>
                        <asp:ListItem Value="بنت">بنت</asp:ListItem>
                    </asp:DropDownList>
          </div>    
           <br />
                          <asp:Label ID="Label6" runat="server" CssClass="h2" style="width:300px" Text="هل سبق لك التبرع"></asp:Label>
      <div class="form-check form-check-inline">
                    <asp:DropDownList ID="ddlq" CssClass="form-control form-control-lg" runat="server" Height="22px" Width="146px" AutoPostBack="True">
                        <asp:ListItem Value="0">نعم</asp:ListItem>
                        <asp:ListItem Value="1">لا</asp:ListItem>
                    </asp:DropDownList></div>
              <br />
      <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    <asp:Button ID="btn_add_motbraa" runat="server" CssClass="btn btn-primary btn-md" Text="Button" OnClick="btn_add_motbraa_Click" />
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
          <li><i class="fa fa-facebook fa-lg" style="background:	#3b5998;padding:8px"></i></li>
          <li><i class="fa fa-twitter fa-lg"style="background:#00aced;padding:8px 5px 8px"></i></li>
          <li><i class="fa fa-google-plus fa-lg"style="background:#d34836;"></i></li>
          <li><i class="fa fa-skype fa-lg"style="background:#00aff0"></i></li>
          <li><i class="fa fa-whatsapp fa-lg"style="background:#25d366"></i></li>
        </ul>
      </div>
    </div>
  </div>
</section>
   
<!-- start Footer-->
<footer><div class="container">
  <h5>Copyright &copy; 2018 CodeBlue.Inc- All Rights Reserved.</h5>
</div>
</footer>
     </form>
<!--End footer-->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/plugin.js"></script>
</body>
</html>
