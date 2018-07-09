<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="hospital.aspx.cs" Inherits="hospital" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table style="width: 100%; height: 379px">
            <tr>
                <td style="width: 491px; text-align: center">&nbsp;</td>
                <td style="width: 424px; text-align: center">
                    <asp:TextBox ID="txtname" runat="server" Height="27px" Width="301px"></asp:TextBox>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="Label6" runat="server" Text="اسم االمستشفي"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 491px; text-align: center">&nbsp;</td>
                <td style="width: 424px; text-align: center">
                    <asp:DropDownList ID="ddlcity" runat="server" Height="25px" Width="263px">
                    </asp:DropDownList>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="Label7" runat="server" Text="اسم المدينة"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 491px; text-align: center">&nbsp;</td>
                <td style="width: 424px; text-align: center">
                    <asp:DropDownList ID="ddlzone" runat="server" Height="25px" Width="263px">
                    </asp:DropDownList>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="Label8" runat="server" Text="اسم الحي او المنطقة"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 491px; text-align: center">&nbsp;</td>
                <td style="width: 424px; text-align: center">
                    <asp:TextBox ID="txtaddress" runat="server" Height="27px" Width="301px"></asp:TextBox>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="Label9" runat="server" Text="العنوان التفصيلي"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 491px; text-align: center">&nbsp;</td>
                <td style="width: 424px; text-align: center">
                    <asp:TextBox ID="txtphone" runat="server" Height="27px" Width="301px"></asp:TextBox>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="Label10" runat="server" Text="رقم التليفون"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 491px; text-align: center; height: 42px">&nbsp;</td>
                <td style="width: 424px; text-align: center; height: 42px">
                    <asp:TextBox ID="txtlink" runat="server" Height="27px" Width="301px"></asp:TextBox>
                </td>
                <td class="auto-style3" style="text-align: center">
                    <asp:Label ID="Label11" runat="server" Text="الموقع الإلكتروني"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 491px; text-align: center">&nbsp;</td>
                <td style="width: 424px; text-align: center">
                    <asp:DropDownList ID="ddlkind" runat="server" Height="25px" Width="263px">
                    </asp:DropDownList>
                </td>
                <td style="text-align: center">
                    <asp:Label ID="Label12" runat="server" Text="النوع"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 491px; text-align: center">&nbsp;</td>
                <td style="width: 424px; text-align: center">
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="313px" />
                    <br />
                    <br />
                </td>
                <td style="text-align: center">
                    <asp:Label ID="Label13" runat="server" Text="شعار المستشفي"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Button ID="btn_delete" runat="server" Text="مسح الحساب" Width="195px" />
                    <asp:Button ID="btn_update" runat="server" Text="تعديل البيانات" Width="195px" OnClick="btn_update_Click" />
                    <asp:Button ID="btn_insert" runat="server" OnClick="Button4_Click" Text="ادخال البيانات" Width="195px" />
                    <br />
                    <br />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

