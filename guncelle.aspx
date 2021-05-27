<%@ Page  Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="guncelle.aspx.cs" Inherits="guncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <h4 align="center" class="display-4 mt-5">Hesap Bilgileri</h4>
        <hr class="bg-warning" />
        <div class="col-md-12">
            
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            Adınız:
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Adınız"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            Soyadınız:
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Soyadınız"></asp:TextBox>
                        </div>
                        <br />
                    </div>
                    <br />
                    <div class="form-row">
                        
                        <div class="col-md-6">
                            Kullanıcı Adınız
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" placeholder="Kullanıcı Adınız"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            Şifreniz:
                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Şifreniz"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="form-row">
                        
                        <div class="col-md-12" align="center">
                            E-Mailiniz
                            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" placeholder="E-Mailiniz"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <br />
                   
                    <asp:Button ID="Button1" CssClass="btn btn-dark btn-outline-warning" runat="server" Text="Güncelle" OnClick="Button1_Click" />
                   

                </div>
            

        </div>
    </div>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>

