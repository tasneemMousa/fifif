<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="c_z.aspx.cs" Inherits="c_z" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style19 {
            width: 509px;
        }
        .auto-style5 {
            width: 582px;
        }
        .auto-style17 {
            width: 357px;
        }
        .auto-style13 {
            width: 433px;
        }
        .auto-style18 {
            height: 32px;
            width: 357px;
        }
        .auto-style14 {
            height: 32px;
            width: 433px;
        }
        .auto-style8 {
            height: 32px;
        }
        .auto-style23 {
            width: 398px;
        }
        .auto-style22 {
            width: 512px;
        }
        .auto-style25 {
            width: 266px;
        }
        .auto-style26 {
            width: 454px;
        }
        .auto-style27 {
            width: 357px;
            height: 47px;
        }
        .auto-style28 {
            width: 433px;
            height: 47px;
        }
        .auto-style29 {
            height: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cnn1 %>" DeleteCommand="DELETE FROM [cities] WHERE [city_id] = @city_id" InsertCommand="INSERT INTO [cities] ([city_name]) VALUES (@city_name)" ProviderName="<%$ ConnectionStrings:cnn1.ProviderName %>" SelectCommand="SELECT [city_id], [city_name] FROM [cities]" UpdateCommand="UPDATE [cities] SET [city_name] = @city_name WHERE [city_id] = @city_id">
                <DeleteParameters>
                    <asp:Parameter Name="city_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="city_name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="city_name" Type="String" />
                    <asp:Parameter Name="city_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
<br />
            <asp:MultiView ID="MultiView1" runat="server">
                &nbsp;
                <asp:View ID="View1" runat="server">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox2" runat="server" ForeColor="#CC0000" Width="190px">ادخل المدينه</asp:TextBox>
                            </td>
                            <td class="auto-style5">&nbsp;&nbsp; ادخل المدينه&nbsp;&nbsp; </td>
                            <td>
                                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="اضافه منطقه" Width="80px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style19">&nbsp;</td>
                            <td class="auto-style5">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="حذف مدينه" Width="82px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="اضافه مدينه" Width="80px" />
                            </td>
                            <td class="auto-style5">
                                <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="حذف منطقه" Width="81px" />
                            </td>
                        </tr>
                    </table>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                </asp:View>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:View ID="View2" runat="server">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style27">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="city_name" DataValueField="city_id" Height="39px" Width="206px">
                                    <asp:ListItem Selected="True" Value="-1">اختر المدينه</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style28">اختر المدينه</td>
                            <td class="auto-style29">
                                <asp:Button ID="Button17" runat="server" OnClick="Button17_Click" style="height: 26px" Text="اضافه مدينه" Width="81px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox3" runat="server" ForeColor="#CC0000" OnTextChanged="TextBox3_TextChanged" style="margin-left: 0px" Width="193px">ادخل المنطقه</asp:TextBox>
                            </td>
                            <td class="auto-style13">ادخل المنطقه</td>
                            <td>
                                <asp:Button ID="Button14" runat="server" OnClick="Button14_Click" Text="حذف مدينه" Width="81px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button23" runat="server" OnClick="Button23_Click" Text="Button" />
                            </td>
                            <td class="auto-style14">
                                <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td class="auto-style8">
                                <asp:Button ID="Button15" runat="server" OnClick="Button15_Click" Text="حذف منطقه " Width="81px" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
            <br />
                &nbsp;<asp:View ID="View3" runat="server">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<table class="auto-style4">
                        <tr>
                            <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="city_name" DataValueField="city_id" Height="16px" Width="191px">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style22">اختر المدينه</td>
                            <td>
                                <asp:Button ID="Button12" runat="server" OnClick="Button12_Click" Text="اضافه مدينه" Width="81px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">&nbsp;</td>
                            <td class="auto-style22">&nbsp;</td>
                            <td>
                                <asp:Button ID="Button18" runat="server" OnClick="Button18_Click" Text="اضافه منطقه" Width="81px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="حذف المدينه" Width="80px" style="height: 26px" />
                            </td>
                            <td class="auto-style22">
                                <asp:Label ID="Label9" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="Button19" runat="server" OnClick="Button19_Click" Text="حذف منطقه " Width="81px" />
                            </td>
                        </tr>
                    </table>
                <br />
                </asp:View>
            <br />
                <asp:View ID="View4" runat="server">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <table class="auto-style4">
                        <tr>
                            <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="city_name" DataValueField="city_id" Height="16px" Width="168px">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style26">اختر المدينه </td>
                            <td>
                                <asp:Button ID="Button20" runat="server" OnClick="Button20_Click" Text="اضافه مدينه" Width="81px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList4" runat="server" Height="17px" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" Width="164px" Enabled="False">
                                    <asp:ListItem Value="-1">اختر المنطقه</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style26">اختر المنطقه</td>
                            <td>
                                <asp:Button ID="Button21" runat="server" OnClick="Button21_Click" Text="اضافه منطقه" Width="81px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button16" runat="server" OnClick="Button16_Click" Text="حذف المنطقه" Width="74px" />
                            </td>
                            <td class="auto-style26">
                                <asp:Label ID="Label10" runat="server" Text="Label" Visible="False"></asp:Label>
                            </td>
                            <td>
                                <asp:Button ID="Button22" runat="server" OnClick="Button22_Click" Text="حذف مدينه" Width="81px" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            </asp:MultiView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

