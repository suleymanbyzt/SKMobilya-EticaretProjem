<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <div align="center">
            <img src="img/logo.PNG" width="200" class="mt-5" /><h3 class="display-4">Destek</h3>
        </div>
    <div class="container">
        <div class="col-md-12">

            <div class="form-group">
                <label>Ad Soyad</label>
                <asp:TextBox ID="TextBox1" class="form-control" placeholder="Adınız Soyadınız" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>E-Mail</label>
                <asp:TextBox ID="TextBox2" TextMode="Email" class="form-control" placeholder="E-Mailiniz" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label>Mesajınız</label>
                <asp:TextBox ID="TextBox3" class="form-control" runat="server" placeholder="Mesajınız" TextMode="MultiLine" Height="160px"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-dark mb-3" Text="Gönder" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>

