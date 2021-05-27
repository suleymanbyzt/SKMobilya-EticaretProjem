<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici/MASTERyonetici.master" AutoEventWireup="true" CodeFile="mesajlar.aspx.cs" Inherits="yonetici_mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="mesajid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="25" Width="900px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="mesajid" HeaderText="mesajid" InsertVisible="False" ReadOnly="True" SortExpression="mesajid" />
            <asp:BoundField DataField="mesajad" HeaderText="mesajad" SortExpression="mesajad" />
            <asp:BoundField DataField="mesajmail" HeaderText="mesajmail" SortExpression="mesajmail" />
            <asp:BoundField DataField="mesajicerik" HeaderText="mesajicerik" SortExpression="mesajicerik" />
            <asp:BoundField DataField="mesajtarih" HeaderText="mesajtarih" SortExpression="mesajtarih" />
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:emobilya %>" DeleteCommand="DELETE FROM [mesaj] WHERE [mesajid] = @mesajid" InsertCommand="INSERT INTO [mesaj] ([mesajad], [mesajmail], [mesajicerik], [mesajtarih]) VALUES (@mesajad, @mesajmail, @mesajicerik, @mesajtarih)" SelectCommand="SELECT * FROM [mesaj]" UpdateCommand="UPDATE [mesaj] SET [mesajad] = @mesajad, [mesajmail] = @mesajmail, [mesajicerik] = @mesajicerik, [mesajtarih] = @mesajtarih WHERE [mesajid] = @mesajid">
        <DeleteParameters>
            <asp:Parameter Name="mesajid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="mesajad" Type="String" />
            <asp:Parameter Name="mesajmail" Type="String" />
            <asp:Parameter Name="mesajicerik" Type="String" />
            <asp:Parameter Name="mesajtarih" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="mesajad" Type="String" />
            <asp:Parameter Name="mesajmail" Type="String" />
            <asp:Parameter Name="mesajicerik" Type="String" />
            <asp:Parameter Name="mesajtarih" Type="DateTime" />
            <asp:Parameter Name="mesajid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>

