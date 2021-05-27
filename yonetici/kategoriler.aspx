<%@ Page Title="" Language="C#" MasterPageFile="~/yonetici/MASTERyonetici.master" AutoEventWireup="true" CodeFile="kategoriler.aspx.cs" Inherits="yonetici_kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div class="container">
            <br />
            <br />
            <br />
            <br />
            <h3 class="text-center">Kategori Ekle</h3>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="card border-primary" style="padding: 15px;">

                        <div class="form-group">
                            <label>Kategori Adı: </label>
                            <asp:TextBox ID="txtKategori" runat="server" class="form-control" placeholder="Kategori Adını Giriniz"></asp:TextBox>
                        </div>
                        <asp:Button ID="Button1" runat="server" Text="Ekle" CssClass="btn btn-dark" OnClick="Button1_Click" />


                        

                    </div>
                </div>
                <div class="col-md-4">
                </div>
            </div>


        </div>
</asp:Content>

