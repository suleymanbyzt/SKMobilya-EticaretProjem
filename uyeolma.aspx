<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="uyeolma.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <h3 class="display-3 text-center">Giriş Yap</h3>
                <hr class="bg-warning" />
                <br />
                <div class="form-group">
                    <label for="exampleInputEmail1">Kullanıcı Adı</label>
                    <asp:TextBox ID="Txt_Kadi" runat="server" class="form-control" placeholder="Kullanıcı Adınız"></asp:TextBox>

                </div>

                <div class="form-group">
                    <label for="exampleInputPassword1">Şifre</label>
                    <asp:TextBox ID="Txt_Sifre" type="password" runat="server" class="form-control" placeholder="Şifreniz"></asp:TextBox>
                </div>
                <small><a class="text-dark" href="sifreguncelleme.aspx">Şifreni mi unuttun ?</a></small>
                <br />
                <div class="form-check">
                    <asp:CheckBox ID="chkGBeni" runat="server" class="form-check-input" />
                    <label class="form-check-label mb-2" for="exampleCheck1">Beni Unutma</label>
                    <br />

                </div>
                <asp:Button ID="Button3" runat="server" Text="Button" />
                <asp:Button ID="Btn_Giris" runat="server" Text="Giriş" CssClass="btn btn-dark" OnClick="Btn_Giris_Click" />

            </div>
            <div class="col-md-1" align="center">
                <img src="img/orta.PNG" class="mr-3" alt="Alternate Text" width="100" style="margin-top: 200px;" />
            </div>

            <div class="col-md-8">
                <h3 class="display-3 text-center">Kayıt Ol</h3>
                <hr class="bg-warning" />
                <br />
                <div class="form-row">
                    <div class="col-md-4">
                        <label class="col-form-label">Ad:</label>
                        <asp:TextBox ID="txtAd" runat="server" class="form-control" name="" placeholder="Adınızı Giriniz"></asp:TextBox>
                    </div>

                    <div class="col-md-4">
                        <label class="col-form-label">Soyad:</label>
                        <asp:TextBox ID="txtSoyad" runat="server" class="form-control" name="" placeholder="Soyadınızı Giriniz"></asp:TextBox>
                    </div>

                    <div class="col-md-4">
                        <label class="col-form-label">E-mail:</label>

                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" class="form-control" name="" placeholder="E-mail Giriniz"></asp:TextBox>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="col-form-label">İl</label>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" class="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="col-form-label">İlçe</label>
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" class="form-control" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-4">
                        <label class="col-form-label">Kullanıcı Adı:</label>
                        <asp:TextBox ID="txtKadi" runat="server" class="form-control" name="" placeholder="Kullanıcı Adı Giriniz"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label class="col-form-label">Şifre</label>
                        <asp:TextBox ID="txtSifre" runat="server" TextMode="Password" class="form-control" name="" placeholder="Şifrenizi Giriniz"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label class="col-form-label">Güvenlik Kodu</label>
                        <asp:TextBox ID="txtGuvenlik" runat="server" class="form-control" name="" placeholder="Güvenlik Kodu Oluştur"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" CssClass="float-right btn btn-secondary mt-2" Text="Oluştur" OnClick="Button1_Click" />
                        
                    </div>




                </div>





                <br>
                <asp:Button ID="Button2" CssClass="btn btn-dark" runat="server" Text="Kayıt Ol" OnClick="Button2_Click" />
                <br />
                <br />

            </div>
        </div>
    </div>
</asp:Content>

