<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="siparislerim.aspx.cs" Inherits="siparislerim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:DataList ID="DataList2" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
        <ItemTemplate>
            <div class="bry card" style="width: 16rem; height: 14rem;">
                
                <div class="card-header bg-dark text-white" style="text-align: center">
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("siparisurunad") %>'></asp:Label>
                </div>
                <div class="card-body">
                    <div class="card-text" style="text-align: center"><asp:Label ID="Label6" runat="server" Text='<%# Eval("siparisadres") %>' style="font-size: small"></asp:Label></div>
                </div>
                <div class="text-center"><strong>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("siparisurunfiyat") %>' style="font-size: small"></asp:Label>
                    &nbsp;₺</strong> 

                    <br />

                </div>
                <div class="bg-dark text-white" align="center" style="font-size: x-small">
                    <i class="fas fa-truck mr-1"></i>
                    <br />
                    Kargonuz En Geç 3-7 Gün içinde Gelecektir.Ürünleriniz SK Mobilya Güvencesi İle Ücretsiz Şekilde Montaj Yapılacaktır.
                </div>
            </div>

            <br />
            <br />
            
            <br />
            <br />
            
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

