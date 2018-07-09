<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="login.aspx.cs" Inherits="login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<div>
    				<div class="group">
    					<label for="user" class="label">الاسم</label>
                            	 <asp:TextBox ID="TextBox1" runat="server" CssClass="input" style="text-align: right"></asp:TextBox>

                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="من فضلك ادخل اسم المستخدم" ForeColor="Red"></asp:RequiredFieldValidator>
    				</div>
    				<div class="group">
    					<label for="pass" class="label">كلمة المرور</label>
    					    <asp:TextBox ID="TextBox2" runat="server"  CssClass="input" style="text-align: right" TextMode="Password"></asp:TextBox>
    				                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="من فضلك ادخل الرقم السري " ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>
    				<div class="group">
    					  <asp:Label ID="Label3" runat="server"></asp:Label>
    				</div>
    				<div class="group">
    	<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: center;"  CssClass="button" Text="تسجيل الدخول"/>
</div>
    </div>

</asp:Content>
