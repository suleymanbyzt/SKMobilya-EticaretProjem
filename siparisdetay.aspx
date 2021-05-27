<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="siparisdetay.aspx.cs" Inherits="siparisdetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">

        <br />
        <div align="center">
            <h4 class="display-6">Kullanıcı Bilgileri</h4>
            <hr class="border-warning" />
        </div>

        <div class="form-row">
            <div class="col-md-6">
                <div class="form-group">
                    Adınız:
                    <asp:Label ID="Label1" class="form-control bg-secondary text-white text-center btn-outline-warning" runat="server" Text="Label"></asp:Label>
                </div>
            </div>


            <div class="col-md-6">
                Soyadınız:
                <asp:Label ID="Label2" class="form-control bg-secondary text-white text-center btn-outline-warning" runat="server" Text="Label"></asp:Label>
            </div>

        </div>
        <div class="form-row">
            <div class="col-md-6">
                <div class="form-group">
                    E-Mail Adresiniz:
                    <asp:Label ID="Label3" class="form-control bg-secondary text-white text-center btn-outline-warning" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    Kullanıcı Adınız:
                    <asp:Label ID="Label8" class="form-control bg-secondary text-white text-center btn-outline-warning" runat="server" Text="Label"></asp:Label>
                </div>
            </div> 
        </div>
        <br />
        <br />
        <div align="center">
            <h4 class="display-6">Sipariş Detayları</h4>
        </div>
        <hr class="border-warning" />
        <div class="form-row">
            <div class="col-md-12">
                <div class="form-group">
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control bg-dark text-white text-center btn-outline-warning" placeholder="Adresinizi Giriniz"></asp:TextBox>
                </div>
            </div>
        </div>

        <div class="form-row">
            <div class="col-md-6">
                <div class="form-group">
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control bg-dark text-white text-center btn-outline-warning" placeholder="Fatura Sahibi"></asp:TextBox>
                </div>
            </div>

            <div class="col-md-6">
                <div class="form-group">
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control bg-dark text-white text-center btn-outline-warning" placeholder="Telefon Numarası"></asp:TextBox>
                </div>
            </div>

        </div>
        <br />
        <br />
        <h4 align="center" class="display-6">Ürün Bilgileri</h4>
        <hr class="border-warning" />
        <div class="form-row">
            <div class="col-md-6">
                <div class="form-group">
                    Ürün ID:
                    <asp:Label ID="Label5" class="form-control bg-secondary text-white text-center btn-outline-warning" runat="server" Text="Label"></asp:Label>
                </div>
            </div>


            <div class="col-md-6">
                Ürün Fiyat:
                <asp:Label ID="Label6" class="form-control bg-secondary text-white text-center btn-outline-warning" runat="server" Text="Label"></asp:Label>
            </div>

        </div>
        <div class="form-row">
            <div class="col-md-12">
                <div class="form-group">
                    Ürün Ad:
                    <asp:Label ID="Label7" class="form-control bg-secondary text-white text-center btn-outline-warning" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
        </div>
        
        <asp:Button ID="Button1" class="btn btn-dark btn-outline-warning" runat="server" Text="Ekle" Width="163px" OnClick="Button1_Click" />
        <br />
        <br />


    </div>

</asp:Content>

