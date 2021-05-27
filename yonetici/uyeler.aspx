<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici/MASTERyonetici.master" AutoEventWireup="true" CodeFile="uyeler.aspx.cs" Inherits="yonetici_uyeler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
    <asp:GridView ID="GridView1" runat="server" class="table table-condensed bg-warning text-dark table-hover" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="kullaniciid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="894px">
    <AlternatingRowStyle BackColor="White"/>
    <Columns>
        <asp:BoundField DataField="kullaniciadi" HeaderText="kullaniciadi" SortExpression="kullaniciadi" />
        <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
        <asp:BoundField DataField="soyadi" HeaderText="soyadi" SortExpression="soyadi" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="parola" HeaderText="parola" SortExpression="parola" />
        <asp:BoundField DataField="sehirid" HeaderText="sehirid" SortExpression="sehirid" />
        <asp:BoundField DataField="ilceid" HeaderText="ilceid" SortExpression="ilceid" />
        <asp:BoundField DataField="kullaniciid" HeaderText="kullaniciid" InsertVisible="False" ReadOnly="True" SortExpression="kullaniciid" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:emobilya %>" DeleteCommand="DELETE FROM [uyeler] WHERE [kullaniciid] = @original_kullaniciid" InsertCommand="INSERT INTO [uyeler] ([kullaniciadi], [adi], [soyadi], [email], [parola], [sehirid], [ilceid]) VALUES (@kullaniciadi, @adi, @soyadi, @email, @parola, @sehirid, @ilceid)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [uyeler]" UpdateCommand="UPDATE [uyeler] SET [kullaniciadi] = @kullaniciadi, [adi] = @adi, [soyadi] = @soyadi, [email] = @email, [parola] = @parola, [sehirid] = @sehirid, [ilceid] = @ilceid WHERE [kullaniciid] = @original_kullaniciid">
    <DeleteParameters>
        <asp:Parameter Name="original_kullaniciid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="kullaniciadi" Type="String" />
        <asp:Parameter Name="adi" Type="String" />
        <asp:Parameter Name="soyadi" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="parola" Type="String" />
        <asp:Parameter Name="sehirid" Type="Int32" />
        <asp:Parameter Name="ilceid" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="kullaniciadi" Type="String" />
        <asp:Parameter Name="adi" Type="String" />
        <asp:Parameter Name="soyadi" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="parola" Type="String" />
        <asp:Parameter Name="sehirid" Type="Int32" />
        <asp:Parameter Name="ilceid" Type="Int32" />
        <asp:Parameter Name="original_kullaniciid" Type="Int32" />
    </UpdateParameters>
    
</asp:SqlDataSource>
    </div>
</asp:Content>

