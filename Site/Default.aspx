<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Site.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Home</title>
    <link type="text/css"rel="stylesheet" href="Content/bootstrap.css" />
</head>
    <script src="Script/jquery-1.9.0.min.js"></script>
    <script src="Scripts/bootstrap.mim.js"></script>
<body>

    <div class="navbar navbar-inverse">
        <a href="#" class="navbar-brand">Perfil do Estagiário</a>

        <ul class="nav navbar-nav pull-right">
            <li><a href="https://www.facebook.com/clecio.gomes" target="_blank">Contato</a></li>
            <li><a href="https://github.com/ClecioSilva" target="_blank">Sobre</a></li>
        </ul>


    </div>

    <div class="snpa10 col-lg-offset-1">
    <img src="https://imagizer.imageshack.com/img921/7231/e1lB1T.jpg " class="img-fluid" alt="Imagem responsiva" width="100%" height="auto" />
    <form id="form1" runat="server">
        
    <div class="container" style="background-color:red">
        <div class="row">

    </div></div>
        <h3 class="well">Seja bem Vindo</h3>
        <br />
            SELECIONE A OPERAÇÃO DESEJADA:
            <asp:DropDownList ID="ddlMenu" runat="server">
                <asp:ListItem Value="0" Text="Escolha uma opção - " />
                <asp:ListItem Value="1" Text="Cadastrar Estagiário - " />
                <asp:ListItem Value="2" Text="Consultar Estagiário - " />
                <asp:ListItem Value="3" Text="Obter os dados do Estagiário - " />
            </asp:DropDownList>
            <asp:Button ID="btnMenu" runat="server" Text="Acessar" CssClass="btn btn-success" OnClick="btnacessar" />

            <p>
                <asp:Label ID="lblMensagem" runat="server" />
            </p>
        <div class="navbar navbar-inverse navbar-fixed-bottom">
            <a href="https://www.resourceit.com/" target="_blank" class="navbar-brand">Copyright@2019</a>
    </div>
    </form>
</body>
</html> 