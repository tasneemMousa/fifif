<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="pharms.aspx.cs" Inherits="pharms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="pharmacy_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="pharm_name" HeaderText="الاسم" SortExpression="pharm_name" />
                    <asp:BoundField DataField="pharm_phone" HeaderText="التليفون" SortExpression="pharm_phone" />
                    <asp:BoundField DataField="pharm_city" HeaderText="المدينه" SortExpression="pharm_city" />
                    <asp:BoundField DataField="pharm_zone" HeaderText="المنطقه" SortExpression="pharm_zone" />
                    <asp:BoundField DataField="pharm_address" HeaderText="العنوان" SortExpression="pharm_address" />
                    <asp:BoundField DataField="pharm_link" HeaderText="الموقع" SortExpression="pharm_link" />
                    <asp:BoundField DataField="user_name" HeaderText="اسم المستخدم" SortExpression="user_name" />
                    <asp:BoundField DataField="pharm_logo_img" HeaderText="اللوجو" SortExpression="pharm_logo_img" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString1 %>" DeleteCommand="DELETE FROM [pharmacy] WHERE [pharmacy_id] = @pharmacy_id" InsertCommand="INSERT INTO [pharmacy] ([pharm_name], [pharm_phone], [pharm_city], [pharm_zone], [pharm_address], [pharm_link], [user_name], [pharm_lat], [pharm_lng], [pharm_logo_img]) VALUES (@pharm_name, @pharm_phone, @pharm_city, @pharm_zone, @pharm_address, @pharm_link, @user_name, @pharm_lat, @pharm_lng, @pharm_logo_img)" ProviderName="<%$ ConnectionStrings:projectConnectionString1.ProviderName %>" SelectCommand="SELECT [pharmacy_id], [pharm_name], [pharm_phone], [pharm_city], [pharm_zone], [pharm_address], [pharm_link], [user_name], [pharm_lat], [pharm_lng], [pharm_logo_img] FROM [pharmacy]" UpdateCommand="UPDATE [pharmacy] SET [pharm_name] = @pharm_name, [pharm_phone] = @pharm_phone, [pharm_city] = @pharm_city, [pharm_zone] = @pharm_zone, [pharm_address] = @pharm_address, [pharm_link] = @pharm_link, [user_name] = @user_name, [pharm_lat] = @pharm_lat, [pharm_lng] = @pharm_lng, [pharm_logo_img] = @pharm_logo_img WHERE [pharmacy_id] = @pharmacy_id">
                <DeleteParameters>
                    <asp:Parameter Name="pharmacy_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="pharm_name" Type="String" />
                    <asp:Parameter Name="pharm_phone" Type="Int64" />
                    <asp:Parameter Name="pharm_city" Type="String" />
                    <asp:Parameter Name="pharm_zone" Type="String" />
                    <asp:Parameter Name="pharm_address" Type="String" />
                    <asp:Parameter Name="pharm_link" Type="String" />
                    <asp:Parameter Name="user_name" Type="String" />
                    <asp:Parameter Name="pharm_lat" Type="String" />
                    <asp:Parameter Name="pharm_lng" Type="String" />
                    <asp:Parameter Name="pharm_logo_img" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="pharm_name" Type="String" />
                    <asp:Parameter Name="pharm_phone" Type="Int64" />
                    <asp:Parameter Name="pharm_city" Type="String" />
                    <asp:Parameter Name="pharm_zone" Type="String" />
                    <asp:Parameter Name="pharm_address" Type="String" />
                    <asp:Parameter Name="pharm_link" Type="String" />
                    <asp:Parameter Name="user_name" Type="String" />
                    <asp:Parameter Name="pharm_lat" Type="String" />
                    <asp:Parameter Name="pharm_lng" Type="String" />
                    <asp:Parameter Name="pharm_logo_img" Type="String" />
                    <asp:Parameter Name="pharmacy_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

