<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="hos.aspx.cs" Inherits="hos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="hospital_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="hospital_name" HeaderText="الاسم" SortExpression="hospital_name" />
                    <asp:BoundField DataField="hospital_city" HeaderText="المدينه" SortExpression="hospital_city" />
                    <asp:BoundField DataField="hospital_zone" HeaderText="المنطقه" SortExpression="hospital_zone" />
                    <asp:BoundField DataField="hospital_address" HeaderText="العنوان" SortExpression="hospital_address" />
                    <asp:BoundField DataField="hospital_phone" HeaderText="التليفون" SortExpression="hospital_phone" />
                    <asp:BoundField DataField="hospital_link" HeaderText="الموقع" SortExpression="hospital_link" />
                    <asp:BoundField DataField="hospital_kind" HeaderText="النوع" SortExpression="hospital_kind" />
                    <asp:BoundField DataField="user_name" HeaderText="اسم المستخدم" SortExpression="user_name" />
                    <asp:BoundField DataField="hospital_logo_img" HeaderText="اللوجو" SortExpression="hospital_logo_img" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString1 %>" DeleteCommand="DELETE FROM [hospitals] WHERE [hospital_id] = @hospital_id" InsertCommand="INSERT INTO [hospitals] ([hospital_name], [hospital_city], [hospital_zone], [hospital_address], [hospital_phone], [hospital_link], [hospital_kind], [user_name], [hospital_lat], [hospital_lng], [hospital_logo_img]) VALUES (@hospital_name, @hospital_city, @hospital_zone, @hospital_address, @hospital_phone, @hospital_link, @hospital_kind, @user_name, @hospital_lat, @hospital_lng, @hospital_logo_img)" ProviderName="<%$ ConnectionStrings:projectConnectionString1.ProviderName %>" SelectCommand="SELECT [hospital_id], [hospital_name], [hospital_city], [hospital_zone], [hospital_address], [hospital_phone], [hospital_link], [hospital_kind], [user_name], [hospital_lat], [hospital_lng], [hospital_logo_img] FROM [hospitals]" UpdateCommand="UPDATE [hospitals] SET [hospital_name] = @hospital_name, [hospital_city] = @hospital_city, [hospital_zone] = @hospital_zone, [hospital_address] = @hospital_address, [hospital_phone] = @hospital_phone, [hospital_link] = @hospital_link, [hospital_kind] = @hospital_kind, [user_name] = @user_name, [hospital_lat] = @hospital_lat, [hospital_lng] = @hospital_lng, [hospital_logo_img] = @hospital_logo_img WHERE [hospital_id] = @hospital_id">
                <DeleteParameters>
                    <asp:Parameter Name="hospital_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="hospital_name" Type="String" />
                    <asp:Parameter Name="hospital_city" Type="String" />
                    <asp:Parameter Name="hospital_zone" Type="String" />
                    <asp:Parameter Name="hospital_address" Type="String" />
                    <asp:Parameter Name="hospital_phone" Type="Int64" />
                    <asp:Parameter Name="hospital_link" Type="String" />
                    <asp:Parameter Name="hospital_kind" Type="String" />
                    <asp:Parameter Name="user_name" Type="String" />
                    <asp:Parameter Name="hospital_lat" Type="String" />
                    <asp:Parameter Name="hospital_lng" Type="String" />
                    <asp:Parameter Name="hospital_logo_img" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="hospital_name" Type="String" />
                    <asp:Parameter Name="hospital_city" Type="String" />
                    <asp:Parameter Name="hospital_zone" Type="String" />
                    <asp:Parameter Name="hospital_address" Type="String" />
                    <asp:Parameter Name="hospital_phone" Type="Int64" />
                    <asp:Parameter Name="hospital_link" Type="String" />
                    <asp:Parameter Name="hospital_kind" Type="String" />
                    <asp:Parameter Name="user_name" Type="String" />
                    <asp:Parameter Name="hospital_lat" Type="String" />
                    <asp:Parameter Name="hospital_lng" Type="String" />
                    <asp:Parameter Name="hospital_logo_img" Type="String" />
                    <asp:Parameter Name="hospital_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

