<%@ Page Language="C#" AutoEventWireup="true" CodeFile="map.aspx.cs" Inherits="map" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     
      <meta charset="utf-8"/>
  <meta name="viewport" content="width-device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <title>CodeBlue</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"/>
  <link rel="stylesheet" type="text/css" href="css/Profilestyle.css"/>
  <link rel="stylesheet" type="text/css" href="css/Profilemedia.css"/>
  <link  href="http://fonts.googleapis.com/css?family=Reenie+Beanie:regular" rel="stylesheet" type="text/css"/>
  <link  href="http://fonts.googleapis.com/css?family=Amiri&subset=arabic,latin" rel="stylesheet" type="text/css"/>
  <link rel="shortcut icon" href="img/logo.png"/>

        <script src="http://ajax.aspnetcdn.com/ajax/jquery/jquery-1.6.2.js"></script>  
     <link rel="stylesheet" href="https://unpkg.com/leaflet@1.3.1/dist/leaflet.css"
   integrity="sha512-Rksm5RenBEKSKFjgI3a41vrjkw4EVPlJ3+OiI65vTjIdo9brlAacEuKOiQ5OFh7cOI1bkDwLqdLw3Zg0cRJAAQ=="
   crossorigin=""/>
     <script src="https://unpkg.com/leaflet@1.3.1/dist/leaflet.js"
   integrity="sha512-/Nsx9X4HebavoBvEBuyp3I7od5tA0UzAxs+j83KgC8PU0kgB4XiK4Lfe4y4cgBtaRJQEIFCW+oC506aPT2L1zw=="
   crossorigin=""></script>
    
  <style>
      #map { height: 660px; }
  </style> 
</head>
<body>
    <form id="form1" runat="server">
         
        <div id="scroll-top">
    <i class="fa fa-chevron-up fa-2x"></i>
  </div>
<!--Start Header-->
    <div class="back2">
    <div class="container">
      <div class="row">
     <div class="half1 ml col-sm"><span>C<img src="img/5.png"/>DE</span><br/><img src="img/6.png"/><br/>
      <span>BLUE</span>
     </div>
     <div class="half2">
       <label> تواصل معنا </label>
       <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" PostBackUrl="MainPage.aspx">الصفحة الرئيسية<i class="fa fa-home fa-lg"></i></asp:LinkButton>
     </div>
   </div>
   </div>
 </div>
   
       <div id="map">
        <script>
            // initialize the map
            var myValue = "<%=Mylat%>";
            var myValue2 = "<%=Mylng%>";
            var myValue3 = "<%=Myaddress%>";
            var myValue4 = "<%=Myphone%>";
            var myValue5 = "<%=Myname%>";
            
            var map = L.map('map').setView([myValue, myValue2], 14);
            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                attribution: 'Hakona Matatatatatatata',
                maxZoom: 18,
                id: 'mapbox.streets',
                accessToken: 'your.mapbox.access.token'
            }).addTo(map);

            marker = new L.marker([myValue, myValue2]);
            //   var position = marker.getLatLng();
            marker.bindPopup("<b> Name : " + myValue5  + "</br> Address: " + myValue3 + 
                " </br>Phone: " + myValue4 ).openPopup();
            map.addLayer(marker);

        </script>
    </div>
       <!-- start Footer-->
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
<footer>
    <div class="container">
  <h5>Copyright &copy; 2018 CodeBlue.Inc- All Rights Reserved.</h5>
</div>
</footer>
        </form>
<!--End footer-->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/Profileplugin.js"></script>
    <script src="js/plugin.js"></script>

</body>
</html>


    </form>
</body>
</html>
