<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici/MASTERyonetici.master" AutoEventWireup="true" CodeFile="kategoriduzenle.aspx.cs" Inherits="yonetici_kategoriduzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="kategoriid" DataSourceID="SqlDataSource1" Width="818px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="kategoriid" HeaderText="kategoriid" InsertVisible="False" ReadOnly="True" SortExpression="kategoriid" />
            <asp:BoundField DataField="kategoriad" HeaderText="kategoriad" SortExpression="kategoriad" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:emobilyaConnectionString %>" DeleteCommand="DELETE FROM [kategoriler] WHERE [kategoriid] = @kategoriid" InsertCommand="INSERT INTO [kategoriler] ([kategoriad]) VALUES (@kategoriad)" SelectCommand="SELECT [kategoriad], [kategoriid] FROM [kategoriler]" UpdateCommand="UPDATE [kategoriler] SET [kategoriad] = @kategoriad WHERE [kategoriid] = @kategoriid">
        <DeleteParameters>
            <asp:Parameter Name="kategoriid" Type="Int16" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="kategoriad" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="kategoriad" Type="String" />
            <asp:Parameter Name="kategoriid" Type="Int16" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

