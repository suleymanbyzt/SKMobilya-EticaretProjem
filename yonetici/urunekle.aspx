<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici/MASTERyonetici.master" AutoEventWireup="true" CodeFile="urunekle.aspx.cs" Inherits="yonetici_urunekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">

                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Ürün Adı"></asp:TextBox>

                </div>
                
                <div class="form-group">
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Ürün Detayı"></asp:TextBox>
                </div>
                <div class="form-group">
                    Ürün resmi <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />
                </div>
                <div class="form-group">
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Ürün Fiyatı"></asp:TextBox>
                </div>
                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control"></asp:DropDownList><br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Ekle" CssClass="btn btn-primary" OnClick="Button1_Click" />
            </div>
        </div>
    </div>
</asp:Content>

