<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici/MASTERyonetici.master" AutoEventWireup="true" CodeFile="siparisler.aspx.cs" Inherits="yonetici_siparisler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowSelectButton="True" />
        <asp:BoundField DataField="siparisid" HeaderText="siparisid" InsertVisible="False" ReadOnly="True" SortExpression="siparisid" />
        <asp:BoundField DataField="sipariskadi" HeaderText="sipariskadi" SortExpression="sipariskadi" />
        <asp:BoundField DataField="siparismail" HeaderText="siparismail" SortExpression="siparismail" />
        <asp:BoundField DataField="siparisadres" HeaderText="siparisadres" SortExpression="siparisadres" />
        <asp:BoundField DataField="siparissahip" HeaderText="siparissahip" SortExpression="siparissahip" />
        <asp:BoundField DataField="siparistel" HeaderText="siparistel" SortExpression="siparistel" />
        <asp:BoundField DataField="siparisurunid" HeaderText="siparisurunid" SortExpression="siparisurunid" />
        <asp:BoundField DataField="siparisurunfiyat" HeaderText="siparisurunfiyat" SortExpression="siparisurunfiyat" />
        <asp:BoundField DataField="siparisurunad" HeaderText="siparisurunad" SortExpression="siparisurunad" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:emobilya %>" SelectCommand="SELECT * FROM [siparisler]"></asp:SqlDataSource>

</asp:Content>

