<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="sifreguncelleme.aspx.cs" Inherits="sifreguncelleme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-4 justify-content-center ml-5 mt-5">
                <div class="card border-info mb-5" style="padding:30px;">
                    <div class="card-body" align="center">
                        <div class="card-title text-center">
                            <h3>Şifre Güncelleme</h3> <br />
                            <br />
                            </div>


                        <div class="form-group">
                            <label>Kullanıcı Adınız</label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Kullanıcı Adınız"></asp:TextBox>
                            <br />
                            <label>Güvenlik Kodunuz</label>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Güvenlik Kodunuz"></asp:TextBox>
                        </div>

                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-dark" Text="Kontrol Et" OnClick="Button1_Click" />

                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
    </div>
</asp:Content>

