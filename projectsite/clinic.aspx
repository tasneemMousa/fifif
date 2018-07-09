﻿<%@ Page Title="" Language="C#" MasterPageFile="~/profile.master" AutoEventWireup="true" CodeFile="clinic.aspx.cs" Inherits="clinic" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <section class="profile">

  <div class="overlay">

  <div class="container">

  <div class="forms">
    <div class="row">
         <div class="col-lg-6 col-md-6 col-sm-9 col-xs-12">
       
          <h4>  <asp:Label ID="Label7" runat="server" Text="اسم العيادة"></asp:Label></h4>
      </div>
      <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
         <asp:TextBox ID="txtname" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="من فضلك ادخل اسم العيادة " ForeColor="Red" Enabled="False"></asp:RequiredFieldValidator>
 </div>
          <div class="col-lg-6 col-md-6 col-sm-9 col-xs-12">
   <h4 style="text-align:left;display:inline-block;position:absolute;margin-right:50%">  <asp:Label ID="Label6" runat="server" Text="المدينة"></asp:Label>
</h4>
       <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="form-control form-control-lg" style="width:160px;margin-left:-22%;float:left"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="من فضلك ادخل المدينة" ForeColor="Red" Enabled="False"></asp:RequiredFieldValidator>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT [city_id], [city_name] FROM [cities]"></asp:SqlDataSource>

               </div>
       
          <div class="col-lg-2 col-md-6 col-sm-9 col-xs-12">
          <h4 style="text-align:left;padding-left:5px;"> <asp:Label ID="Label8" runat="server" Text="المنطقة"></asp:Label>
</h4>
                </div>
          <div class="col-lg-4 col-md-6 col-sm-3 col-xs-12">
                  <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control form-control-lg" style="width:160px;" AutoPostBack="True">
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ControlToValidate="DropDownList2" ErrorMessage="من فضلك المنطقة" ForeColor="Red" Enabled="False"></asp:RequiredFieldValidator>
      </div>
              <div class="col-lg-6 col-md-6 col-sm-9 col-xs-12">
        <h4><asp:Label ID="Label9" runat="server" Text="العنوان التفصيلي"></asp:Label>
</h4>
                   </div>
        <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
                    <asp:TextBox ID="addresstxt" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="addresstxt" ErrorMessage="من فضلك ادخل العنوان" ForeColor="Red" Enabled="False"></asp:RequiredFieldValidator>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-9 col-xs-12">
            <h4>
        <asp:Label ID="Label12" runat="server" Text="التليفون"></asp:Label>
</h4>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
               <asp:TextBox ID="phone" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="phone" ErrorMessage="من فضلك ادخل رقم تليفون العيادة " ForeColor="Red" Enabled="False"></asp:RequiredFieldValidator>
  </div>
         <div class="col-lg-6 col-md-6 col-sm-9 col-xs-12">
        <h4>        <asp:Label ID="Label10" runat="server" Text="التخصص"></asp:Label></h4>

             </div>
          <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">              
        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control form-control-lg"  AutoPostBack="True">
        </asp:DropDownList>
                              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString %>" SelectCommand="SELECT * FROM [specializations]"></asp:SqlDataSource>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList3" ErrorMessage="من فضلك اختر التخصص" ForeColor="Red" Enabled="False"></asp:RequiredFieldValidator>

</div>
          <div class="col-lg-6 col-md-6 col-sm-9 col-xs-12">
            <h4> <asp:Label ID="Label11" runat="server" Text="الموقع الإلكتروني"></asp:Label></h4>
              </div>
              <div class="col-lg-6 col-md-6 col-sm-3 col-xs-12">
      <asp:TextBox ID="link" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="link" ErrorMessage="من فضلك ادخل لينك العيادة" ForeColor="Red" Enabled="False"></asp:RequiredFieldValidator>

                   </div>
</div>
</div>
         </div>
      </div>
</section>                     
<div class="maps">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 col-md-6 col-sm-12 col-xs-12">
     
           <h4 >تحديد الموقع علي الخريطة</h4>
        <div id="setmarker" class="map1">
             
        <input type="text" id="latclinic" class="form-control form-control-lg" value="" name="clat" />
        <input type="text" id="lngclinic" class="form-control form-control-lg" value="" name="clng"  />
          
        <asp:Label ID="Label1" runat="server" BorderWidth="3px"></asp:Label>
        <asp:Label ID="Label2" runat="server" BorderWidth="3px"></asp:Label>

     <script>
                  var map = L.map('setmarker').setView([31.040948, 31.37847], 13);
                  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                      attribution: 'Hakona Matatatatatatata',
                      maxZoom: 18,
                      id: 'mapbox.streets',
                      accessToken: 'your.mapbox.access.token'
                  }).addTo(map);

                  marker = new L.marker([31.040948, 31.37847], {
                      draggable: 'true'
                  });
                  // location select
                  marker.on('dragend', function (event) {
                      var marker = event.target;
                      var position = marker.getLatLng();
                      document.getElementById('latclinic').value = position.lat;
                      document.getElementById('lngclinic').value = position.lng;
                      marker.bindPopup("<b> Lat : " + position.lat + " , Lng: " + position.lat + "</b>").openPopup();
                  });
                  map.addLayer(marker);

        </script>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
               <div>
                           <asp:FileUpload ID="FileUpload1" runat="server" CssClass="btn btn-info btn-lg" />
                           <asp:Label ID="Label14" runat="server" Text="شعار العيادة"></asp:Label>
                           <asp:Image ID="Image1" runat="server" Width="276px" Height="239px" />
                           <asp:TextBox ID="txturl" runat="server" Visible="False"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txturl" ErrorMessage="من فضلك اختر لوجو الموقع" ForeColor="Red" Enabled="False"></asp:RequiredFieldValidator>
</div>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-info btn-lg" Text="مسح البيانات" OnClick="Button1_Click" />
        <asp:Button ID="Button5" runat="server" CssClass="btn btn-info btn-lg" OnClick="Button5_Click" Text="تعديل البيانات" />
        <asp:Button ID="Button3" runat="server" CssClass="btn btn-info btn-lg" Text="ادخال البيانات " OnClick="Button3_Click" />
      
    </div>
    </div>
  </div>
</div>
    
</asp:Content>

