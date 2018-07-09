<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="m_c.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="med_cent_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Width="550px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="med_cent_name" HeaderText="الاسم" SortExpression="med_cent_name" />
                    <asp:BoundField DataField="med_cent_phone" HeaderText="التليفون" SortExpression="med_cent_phone" />
                    <asp:BoundField DataField="med_cent_city" HeaderText="المدينه" SortExpression="med_cent_city" />
                    <asp:BoundField DataField="med_cent_zone" HeaderText="المنطقه" SortExpression="med_cent_zone" />
                    <asp:BoundField DataField="med_cent_address" HeaderText="العنوان" SortExpression="med_cent_address" />
                    <asp:BoundField DataField="med_cent_link" HeaderText="الموقع" SortExpression="med_cent_link" />
                    <asp:BoundField DataField="user_name" HeaderText="اسم المستخدم" SortExpression="user_name" />
                    <asp:BoundField DataField="med_cen_logo_img" HeaderText="اللوجو" SortExpression="med_cen_logo_img" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString1 %>" DeleteCommand="DELETE FROM [medical_center] WHERE [med_cent_id] = @med_cent_id" InsertCommand="INSERT INTO [medical_center] ([med_cent_name], [med_cent_phone], [med_cent_city], [med_cent_zone], [med_cent_address], [med_cent_link], [user_name], [med_cent_lat], [med_cent_lng], [med_cen_logo_img]) VALUES (@med_cent_name, @med_cent_phone, @med_cent_city, @med_cent_zone, @med_cent_address, @med_cent_link, @user_name, @med_cent_lat, @med_cent_lng, @med_cen_logo_img)" ProviderName="<%$ ConnectionStrings:projectConnectionString1.ProviderName %>" SelectCommand="SELECT [med_cent_id], [med_cent_name], [med_cent_phone], [med_cent_city], [med_cent_zone], [med_cent_address], [med_cent_link], [user_name], [med_cent_lat], [med_cent_lng], [med_cen_logo_img] FROM [medical_center]" UpdateCommand="UPDATE [medical_center] SET [med_cent_name] = @med_cent_name, [med_cent_phone] = @med_cent_phone, [med_cent_city] = @med_cent_city, [med_cent_zone] = @med_cent_zone, [med_cent_address] = @med_cent_address, [med_cent_link] = @med_cent_link, [user_name] = @user_name, [med_cent_lat] = @med_cent_lat, [med_cent_lng] = @med_cent_lng, [med_cen_logo_img] = @med_cen_logo_img WHERE [med_cent_id] = @med_cent_id">
                <DeleteParameters>
                    <asp:Parameter Name="med_cent_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="med_cent_name" Type="String" />
                    <asp:Parameter Name="med_cent_phone" Type="Int64" />
                    <asp:Parameter Name="med_cent_city" Type="String" />
                    <asp:Parameter Name="med_cent_zone" Type="String" />
                    <asp:Parameter Name="med_cent_address" Type="String" />
                    <asp:Parameter Name="med_cent_link" Type="String" />
                    <asp:Parameter Name="user_name" Type="String" />
                    <asp:Parameter Name="med_cent_lat" Type="String" />
                    <asp:Parameter Name="med_cent_lng" Type="String" />
                    <asp:Parameter Name="med_cen_logo_img" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="med_cent_name" Type="String" />
                    <asp:Parameter Name="med_cent_phone" Type="Int64" />
                    <asp:Parameter Name="med_cent_city" Type="String" />
                    <asp:Parameter Name="med_cent_zone" Type="String" />
                    <asp:Parameter Name="med_cent_address" Type="String" />
                    <asp:Parameter Name="med_cent_link" Type="String" />
                    <asp:Parameter Name="user_name" Type="String" />
                    <asp:Parameter Name="med_cent_lat" Type="String" />
                    <asp:Parameter Name="med_cent_lng" Type="String" />
                    <asp:Parameter Name="med_cen_logo_img" Type="String" />
                    <asp:Parameter Name="med_cent_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

