<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="bb.aspx.cs" Inherits="bb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="bb_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="bb_name" HeaderText="الاسم" SortExpression="bb_name" />
                    <asp:BoundField DataField="bb_city" HeaderText="المدينه" SortExpression="bb_city" />
                    <asp:BoundField DataField="bb_zone" HeaderText="المنطقه" SortExpression="bb_zone" />
                    <asp:BoundField DataField="bb_address" HeaderText="العنوان" SortExpression="bb_address" />
                    <asp:BoundField DataField="bb_phone" HeaderText="التليفون" SortExpression="bb_phone" />
                    <asp:BoundField DataField="bb_link" HeaderText="الموقع" SortExpression="bb_link" />
                    <asp:BoundField DataField="user_name" HeaderText="اسم المستخدم" SortExpression="user_name" />
                    <asp:BoundField DataField="bb_logo_image" HeaderText="اللوجو" SortExpression="bb_logo_image" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectConnectionString1 %>" DeleteCommand="DELETE FROM [blood_bank] WHERE [bb_id] = @bb_id" InsertCommand="INSERT INTO [blood_bank] ([bb_name], [bb_city], [bb_zone], [bb_address], [bb_phone], [bb_link], [user_name], [bb_lat], [bb_lng], [bb_logo_image]) VALUES (@bb_name, @bb_city, @bb_zone, @bb_address, @bb_phone, @bb_link, @user_name, @bb_lat, @bb_lng, @bb_logo_image)" ProviderName="<%$ ConnectionStrings:projectConnectionString1.ProviderName %>" SelectCommand="SELECT [bb_id], [bb_name], [bb_city], [bb_zone], [bb_address], [bb_phone], [bb_link], [user_name], [bb_lat], [bb_lng], [bb_logo_image] FROM [blood_bank]" UpdateCommand="UPDATE [blood_bank] SET [bb_name] = @bb_name, [bb_city] = @bb_city, [bb_zone] = @bb_zone, [bb_address] = @bb_address, [bb_phone] = @bb_phone, [bb_link] = @bb_link, [user_name] = @user_name, [bb_lat] = @bb_lat, [bb_lng] = @bb_lng, [bb_logo_image] = @bb_logo_image WHERE [bb_id] = @bb_id">
                <DeleteParameters>
                    <asp:Parameter Name="bb_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="bb_name" Type="String" />
                    <asp:Parameter Name="bb_city" Type="String" />
                    <asp:Parameter Name="bb_zone" Type="String" />
                    <asp:Parameter Name="bb_address" Type="String" />
                    <asp:Parameter Name="bb_phone" Type="Int64" />
                    <asp:Parameter Name="bb_link" Type="String" />
                    <asp:Parameter Name="user_name" Type="String" />
                    <asp:Parameter Name="bb_lat" Type="String" />
                    <asp:Parameter Name="bb_lng" Type="String" />
                    <asp:Parameter Name="bb_logo_image" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="bb_name" Type="String" />
                    <asp:Parameter Name="bb_city" Type="String" />
                    <asp:Parameter Name="bb_zone" Type="String" />
                    <asp:Parameter Name="bb_address" Type="String" />
                    <asp:Parameter Name="bb_phone" Type="Int64" />
                    <asp:Parameter Name="bb_link" Type="String" />
                    <asp:Parameter Name="user_name" Type="String" />
                    <asp:Parameter Name="bb_lat" Type="String" />
                    <asp:Parameter Name="bb_lng" Type="String" />
                    <asp:Parameter Name="bb_logo_image" Type="String" />
                    <asp:Parameter Name="bb_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

