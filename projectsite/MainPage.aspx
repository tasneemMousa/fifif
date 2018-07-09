<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8"/>
  <meta name="viewport" content="width-device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <title>CodeBlue</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
  <link rel="stylesheet" type="text/css" href="css/styleMainPage.css"/>
  <link rel="stylesheet" type="text/css" href="css/mediaMainPage.css"/>
  <link  href="http://fonts.googleapis.com/css?family=Reenie+Beanie:regular" rel="stylesheet" type="text/css"/>
  <link  href="http://fonts.googleapis.com/css?family=Amiri&subset=arabic,latin" rel="stylesheet" type="text/css"/>
  <link rel="shortcut icon" href="img/logo.png"/>

</head>
<body>
    <form id="form1" runat="server">
    <div id="scroll-top">
    <i class="fa fa-chevron-up fa-2x"></i>
  </div>
<!--Start Header-->
    <div class="back">
    <div class="overlay">
    <div class="container">
      <div class="row">
     <div class="half1 ml col-sm"><span>C<img src="img/5.png"/>DE</span><br/><img src="img/6.png"/><br>
      <span >BLUE</span>
     </div>
     <div class="half2">
       <label> تواصل معنا </label>
     <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="login.aspx"><label>تسجيل الدخول</label><i class="fa fa-user fa-lg"></i></asp:LinkButton>

     </div>
   </div>
   </div>
 </div>
</div>
<!--End Header-->
<section class="price_table text-center">
 <div class="container">
   <h1> ابحث الآن</h1>
   <div class="row">
     <div class="col-lg-4 col-md-4 col-sm-6">
      <div class="price_box">
        <h3>مستشفيات</h3>
        <p class="center-block"><i class="fa fa-heartbeat fa-lg"></i></p>
        <ul class="list-unstyled">
         <li>إبحث على أقرب مستشفى إليك</li>
        <asp:LinkButton ID="LinkButton7" runat="server" CssClass="btn btn-danger" PostBackUrl="h_search.aspx">بحث</asp:LinkButton>

        </ul>
      </div>
      </div>
      <div class="col-lg-4 col-md-4 col-sm-6">
       <div class="price_box">
         <h3>صيدليات</h3>
         <p class="center-block"><i class="fa fa-medkit fa-lg"></i></p>
         <ul class="list-unstyled">
          <li>إبحث على أقرب صيدلية إليك</li>
<asp:LinkButton ID="LinkButton4" runat="server" CssClass="btn btn-danger" PostBackUrl="ph_search.aspx">بحث</asp:LinkButton>

         </ul>
       </div>
       </div>
     <div class="col-lg-4 col-md-4 col-sm-6">
      <div class="price_box">
        <h3>عيادات</h3>
        <p class="center-block"><i class="fa fa-user-md fa-lg"></i></p>
        <ul class="list-unstyled">
         <li>إبحث على أقرب عيادة إليك</li> 
                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-danger" PostBackUrl="c_search.aspx">بحث</asp:LinkButton>

        </ul>
      </div>
      </div>
     <div class="col-lg-4 col-md-4 col-sm-6">
      <div class="price_box">
        <h3>بنك الدم</h3>
        <p class="center-block"><i class="fa fa-american-sign-language-interpreting fa-l"></i></p>
        <ul class="list-unstyled">
         <li>إبحث على أقرب بنك دم إليك</li>
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-danger" PostBackUrl="bb_search.aspx">بحث</asp:LinkButton>
        
        </ul>
      </div>
      </div>
     <div class="col-lg-4 col-md-4 col-sm-6">
      <div class="price_box">
        <h3 >مراكز صحية</h3>
        <p class="center-block"><i class="fa fa-ambulance fa-lg"></i></p>
        <ul class="list-unstyled">
         <li>إبحث على أقرب مركز صحي إليك</li>
                    <asp:LinkButton ID="LinkButton5" runat="server" CssClass="btn btn-danger" PostBackUrl="m_c_search.aspx">بحث</asp:LinkButton>

        </ul>
      </div>
    </div>
      <div class="col-lg-4 col-md-4 col-sm-6">
       <div class="price_box">
         <h3>الاستشارات</h3>
         <p class="center-block"><i class="fa fa-envelope fa-lg"></i></p>
         <ul class="list-unstyled">
          <li>إستشير الطبيب المتاح الآن</li>
                            <asp:LinkButton ID="LinkButton6" runat="server" CssClass="btn btn-danger" PostBackUrl="consoltion.aspx">إستشر</asp:LinkButton>

         </ul>
       </div>
     </div>
     </div>
   </div>
</section>
<!--Start goals-->
<article>
  <div class="map">
    <div class="over" >
    <h2 >يمكنك الاعلان معنا <br/>حدد موقعك و اعلن معنا</h2>
    <a href="#" >سجل دخولك</a>
    </div>
  </div>
</article>
<!--End goals-->
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
<!--End footer-->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/plugin.js"></script>
    </form>
</body>
</html>
