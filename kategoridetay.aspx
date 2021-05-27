<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kategoridetay.aspx.cs" Inherits="kategoridetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-md-10" align="center">
        
        <hr />
        <br />



        <asp:DataList ID="DataList2" runat="server" RepeatDirection="Vertical" RepeatColumns="4">
            <ItemTemplate>
                <a class="text-dark" style="text-decoration: none;" href="urundetayy.aspx?urunid=<%#Eval("urunid")%>">
                    <div class="card mr-2 mb-2 border-1" align="center" style="width: 15rem;">
                        <asp:Image ID="Image1" runat="server" class="card-img-top rounded" ImageUrl='<%# Eval("urunresim") %>'/>
                        <div class="card-body">
                            
                            <asp:Label ID="Label3" class="card-tittle" runat="server" Text='<%# Eval("urunad") %>' Style="font-weight: 700; font-size: small"></asp:Label>

                            <br />

                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("urunfiyat") %>' Style="font-weight: 700; font-size: medium"></asp:Label>&nbsp;₺<br />
                            <br />
                            <a class="bry btn btn-dark text-white btn-sm btn-outline-warning" href="urundetayy.aspx?urunid=<%#Eval("urunid")%>"">
                              <i class="fas fa-chevron-right mr-1"></i> Ürün Detayı

                            </a>
                        </div>
                    </div>
                </a>
            </ItemTemplate>
        </asp:DataList>

    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

