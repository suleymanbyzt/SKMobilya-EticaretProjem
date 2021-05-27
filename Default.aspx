<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="col-md-10" align="center">
        
        
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="501px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="artı">Fiyata Göre Artan</asp:ListItem>
            <asp:ListItem Value="eksi">Fiyata Göre Azalan</asp:ListItem>
            <asp:ListItem Value="yeni">En Yeni Ürünler</asp:ListItem>
            <asp:ListItem Value="eski">En Eski Ürünler</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="Button3" CssClass="btn btn-dark btn-outline-warning" runat="server" Text="Ara" OnClick="Button3_Click1" Width="68px" />
        <hr />
        <br />

       

        <asp:DataList ID="DataList2" runat="server" RepeatDirection="Horizontal" RepeatColumns="4">
            <ItemTemplate>
                <a class="text-dark" style="text-decoration: none;" href="urundetayy.aspx?urunid=<%#Eval("urunid")%>">
                    <div class="card mr-2 mb-2 border-1" align="center" style="width: 15rem;">
                        <asp:Image ID="Image1" runat="server"  class="card-img-top rounded" ImageUrl='<%# Eval("urunresim") %>' />
                        <div class="card-body">
                            
                            <asp:Label ID="Label3" class="card-tittle text-muted" runat="server" Text='<%# Eval("urunad") %>' Style="font-weight: 700; font-size: medium"></asp:Label>
                            <br />
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("urunfiyat") %>' Style="font-weight: 700; font-size: small"></asp:Label>&nbsp;₺<br />
                            <br />
                            <a class="bry btn btn-dark text-white btn-sm btn-outline-warning" href="urundetayy.aspx?urunid=<%#Eval("urunid")%>"">
                              <i class="fas fa-chevron-right mr-1"></i> Ürün Detayı

                            </a>
                        </div>
                    </div>
                </a>
            </ItemTemplate>
        </asp:DataList>
        
         <cc1:CollectionPager ID="CP1" runat="server" SliderSize="1" ShowPageNumbers="True" LabelText="Sayfa" PageSize="8" NextText=" İleri " LastText=" Son " BackText=" Geri " FirstText="İlk"></cc1:CollectionPager>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

