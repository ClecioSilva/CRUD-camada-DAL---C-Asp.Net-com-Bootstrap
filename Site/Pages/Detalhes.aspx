<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Detalhes.aspx.cs" Inherits="Site.Pages.Detalhes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detalhes</title>
<link type="text/css"rel="stylesheet" href="Content/bootstrap.css" />
</head>
      <script src="Script/jquery-1.9.0.min.js"></script>
    <script src="Scripts/bootstrap.mim.js"></script>
<body>
    <div class="snpa10 col-lg-offset-1">
    <img src="https://imagizer.imageshack.com/img921/7231/e1lB1T.jpg " class="img-fluid" alt="Imagem responsiva" width="100%" height="auto" />
    <form class="form-inline" id="form1" runat="server">
    <div class="container" style="background-color:red">
        <div class="row">

    </div></div>
        <h3 class="well">Detalhes dos Estagiários</h3>
        <br />

        Informe o Código: <br />
        <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control" Width="5%"/>
        <br />                   
        <asp:Button ID="btnPesquisa" runat="server" Text="Pesquisar" CssClass="btn btn-info btn-lg" OnClick="btnPesquisarPessoa" />
        <a href="/Default.aspx" class="btn btn-default btn-lg">Voltar</a>
        <br />

        <p>
            <asp:Label ID="lblMemsagem" runat="server" />
        </p>

        <asp:Panel ID="pnlDados" runat="server">

        <b><font face="verdana" class="col-sm-1" color="black">Nome:</font></b> 
        <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" Width="40%"/><br />
        

        <b><font face="verdana" class="col-sm-1" color="black">Hobby:</font></b> 
        <asp:TextBox ID="txtHobby" runat="server" CssClass="form-control" Width="60%"/><br />
        

        <b><font face="verdana" class="col-sm-1" color="black">Esporte:</font></b> 
        <asp:TextBox ID="txtEsporte" runat="server" CssClass="form-control" Width="60%"/><br />
        

        <b><font face="verdana" class="col-sm-1" color="black">Filme:</font></b> 
        <asp:TextBox ID="txtFilme" runat="server" CssClass="form-control" Width="60%"/><br />
        

        <b><font face="verdana" class="col-sm-1" color="black">Desejo:</font></b> 
        <asp:TextBox ID="txtDesejo" runat="server" CssClass="form-control" Width="60%"/><br />
        

        <b><font face="verdana" class="col-sm-1" color="black">Medo:</font></b> 
        <asp:TextBox ID="txtMedo" runat="server" CssClass="form-control" Width="60%"/><br />
        

        <b><font face="verdana" class="col-sm-1" color="black">Comida:</font></b> 
        <asp:TextBox ID="txtComida" runat="server" CssClass="form-control" Width="40%"/><br />
        

        <p>
            <asp:Label ID="lblMensagem" runat="server"/>
        </p>

        <asp:Button ID="btnExcluir" runat="server" Text="Excluir" CssClass="btn btn-danger btn-lg" OnClick="btnExcluirPessoa" />
        <asp:Button ID="btnAtualizar" runat="server" Text="Atualizar" CssClass="btn btn-success btn-lg" OnClick="BtnAtualizarPessoa"  />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
