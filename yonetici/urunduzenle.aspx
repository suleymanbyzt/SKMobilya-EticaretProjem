<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici/MASTERyonetici.master" AutoEventWireup="true" CodeFile="urunduzenle.aspx.cs" Inherits="yonetici_urunduzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" class="table table-condensed table-hover" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="urunid" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="urunid" HeaderText="urunid" InsertVisible="False" ReadOnly="True" SortExpression="urunid" />
        <asp:BoundField DataField="urunad" HeaderText="urunad" SortExpression="urunad" />
        <asp:BoundField DataField="urundetay" HeaderText="urundetay" SortExpression="urundetay" />
        <asp:BoundField DataField="urunresim" HeaderText="urunresim" SortExpression="urunresim" />
        <asp:BoundField DataField="urunfiyat" HeaderText="urunfiyat" SortExpression="urunfiyat" />
        <asp:BoundField DataField="kategoriid" HeaderText="kategoriid" SortExpression="kategoriid" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:emobilyaConnectionString %>" DeleteCommand="DELETE FROM [urunler] WHERE [urunid] = @urunid" InsertCommand="INSERT INTO [urunler] ([urunad], [urundetay], [urunresim], [urunfiyat], [kategoriid]) VALUES (@urunad, @urundetay, @urunresim, @urunfiyat, @kategoriid)" SelectCommand="SELECT [urunid], [urunad], [urundetay], [urunresim], [urunfiyat], [kategoriid] FROM [urunler]" UpdateCommand="UPDATE [urunler] SET [urunad] = @urunad, [urundetay] = @urundetay, [urunresim] = @urunresim, [urunfiyat] = @urunfiyat, [kategoriid] = @kategoriid WHERE [urunid] = @urunid">
    <DeleteParameters>
        <asp:Parameter Name="urunid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="urunad" Type="String" />
        <asp:Parameter Name="urundetay" Type="String" />
        <asp:Parameter Name="urunresim" Type="String" />
        <asp:Parameter Name="urunfiyat" Type="String" />
        <asp:Parameter Name="kategoriid" Type="Int16" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="urunad" Type="String" />
        <asp:Parameter Name="urundetay" Type="String" />
        <asp:Parameter Name="urunresim" Type="String" />
        <asp:Parameter Name="urunfiyat" Type="String" />
        <asp:Parameter Name="kategoriid" Type="Int16" />
        <asp:Parameter Name="urunid" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>

