<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="urundetayy.aspx.cs" Inherits="urundetayy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            display: -ms-flexbox;
            display: flex;
            -ms-flex-direction: column;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border-radius: .25rem;
            text-align: left;
        }

        .auto-style2 {
            font-size: x-small;
        }

        <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&family=Quicksand:wght@300&display=swap" rel="stylesheet" >
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <br />
            <div class="container-fluid" align="center">
                <div class="row">
                    <div class="col-md-6">
                        <div class="card justify-content-center mt-5">

                            <asp:Image ID="Image1" Width="400" Height="300" runat="server" ImageUrl='<%# Eval("urunresim") %>' />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="auto-style1">
                            <div class="card-header bg-dark">
                                <asp:Label ID="Label6" runat="server" CssClass="display-4 text-white" Text='<%# Eval("urunad") %>' Style="font-weight: 700; font-size: x-large"></asp:Label>
                            </div>
                            <div class="text-center">
                                <br />
                                <br />
                                <asp:Label ID="Label4" runat="server" Style="font-family: 'Quicksand', sans-serif;" CssClass="text-muted" Text='<%# Eval("urundetay") %>'></asp:Label>
                                <br />
                                <br />
                                <div Style="font-family: 'Dancing Script', cursive;">
                                    Fiyat:
                                <asp:Label ID="Label5" runat="server" CssClass="bg-dark text-white"  Text='<%# Eval("urunfiyat") %>'></asp:Label>
                                    ₺<br />

                                </div>

                            </div>
                            <br />
                            <div class="text-center bg-dark text-white"><i class="fas fa-truck mr-1"></i><span class="auto-style2">Sitemizden alınan her ürünün taşıması bize ait ! Ürünün montajını evinize kadar gelip SK güvencesi ile biz yapıyoruz</span></div>
                            <br />


                        </div>

                        <a class="bry btn btn-dark text-white btn-sm btn-outline-warning" href="siparisdetay.aspx?urunid=<%#Eval("urunid")%>"">Sipariş Ver</a>

                    </div>
                </div>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
        </ItemTemplate>
    </asp:DataList>

</asp:Content>

