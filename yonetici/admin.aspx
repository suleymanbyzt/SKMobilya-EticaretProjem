<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="yonetici_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300|Roboto:300&display=swap" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <br />
            <br />
            <br />
            <br />
            <h3 class="text-center">ADMİN PANELİ</h3>
            <div class="row" style="margin-top: 80px;">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div class="card border-primary" style="padding: 15px;">

                        <div class="form-group">
                            <label>Admin Kullanıcı Adı: </label>
                            <asp:TextBox ID="txtYKadi" runat="server" class="form-control" placeholder="Kullanıcı Adınız"></asp:TextBox>

                        </div>
                        <div class="form-group">
                            <label>Şifre</label>
                            <asp:TextBox ID="txtYSifre" runat="server" class="form-control" TextMode="Password" placeholder="Şifreniz"></asp:TextBox>
                        </div>

                        <asp:Button ID="Button1" runat="server" Text="Giriş" class="btn btn-primary" OnClick="Button1_Click" />

                    </div>
                </div>
                <div class="col-md-4">
                </div>
            </div>


        </div>
    </form>
    <script src="js/jquery-3.4.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
