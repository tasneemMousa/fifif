<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div class="group">
            <label for="user" class="label">الاسم</label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="من فضلك ادخل اسم المستخدم " ForeColor="Red"></asp:RequiredFieldValidator>

        </div>
        <div class="group">
            <label for="pass" class="label">كلمة السر</label>

            <asp:TextBox ID="TextBox2" runat="server" CssClass="input" ></asp:TextBox>

        </div>
        <div class="group">
            <label for="pass" class="label">اعادة كتابة كلمة السر</label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="input"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="الرقم السري غير متماثل" ForeColor="Red"></asp:CompareValidator>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="من فضلك قم بتاكيد الرقم السري" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>
        <div class="group">
            <label for="pass" class="label">الرقم النقابي</label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="من فضلك ادخل الكود الخاص بك" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>
        <div class="group">
            <asp:Button ID="Button2" runat="server" Text="تسجيل" CssClass="button" OnClick="Button1_Click" />

        </div>
        <div class="hr"></div>
        <div class="foot-lnk">
            <asp:Label ID="Label5" runat="server"></asp:Label>

        </div>
    </div>
</asp:Content>
