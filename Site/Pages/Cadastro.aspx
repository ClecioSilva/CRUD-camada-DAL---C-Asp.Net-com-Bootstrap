<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Site.Pages.Cadastro" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro</title>
    <link type="text/css"rel="stylesheet" href="Content/bootstrap.css" />
</head>
    <script src="Script/jquery-1.9.0.min.js"></script>
    <script src="Scripts/bootstrap.mim.js"></script>
<body>
    <div class="snpa10 col-lg-offset-1">
    <img src="https://imagizer.imageshack.com/img921/7231/e1lB1T.jpg " class="img-fluid" alt="Imagem responsiva" width="100%" height="auto" />
    <form class="form-inline" id="form1" runat="server">
    <!--<div class="container" style="background-color:red">-->

    <div class="row">

    </div>
        <h3 class="well">Cadastro de Estagiário</h3>

    
        <b><font face="verdana" class="col-sm-1" color="black">Nome:</font></b>
        <asp:TextBox ID="txtNome" runat="server" placeholder="Nome Completo" Width="40%" CssClass="form-control" />
        <asp:RequiredFieldValidator
            ID="requiredNome"
            runat="server"
            ControlToValidate="txtNome"
            ErrorMessage="Por favor, digite seu Nome."
            ForeColor="Red"
            />
            <br />
            
        <b><font face="verdana" class="col-sm-1" color="black">Hobby:</font></b>
        <asp:TextBox ID="txtHobby" runat="server" placeholder="Seu Hobby" Width="60%" CssClass="form-control"/>
        <asp:RequiredFieldValidator
            ID="requiredHobby"
            runat="server"
            ControlToValidate="txtHobby"
            ErrorMessage="Por favor, digite seu Hobby."
            ForeColor="Red"
            />
            <br />

        <b><font face="verdana" class="col-sm-1" color="black">Esporte:</font></b>
        <asp:TextBox ID="txtEsporte" runat="server" placeholder="Seu Esporte favorito" Width="60%" CssClass="form-control" />
        <asp:RequiredFieldValidator
            ID="requiredEsporte"
            runat="server"
            ControlToValidate="txtEsporte"
            ErrorMessage="Por favor, digite seu Esporte Favorito."
            ForeColor="Red"
            />
            <br />

        <b><font face="verdana" class="col-sm-1" color="black">Filme:</font></b>
        <asp:TextBox ID="txtFilme" runat="server" placeholder="Seu Filme favorito" Width="60%" CssClass="form-control" />
        <asp:RequiredFieldValidator
            ID="requiredFilme"
            runat="server"
            ControlToValidate="txtFilme"
            ErrorMessage="Por favor, digite seu Filme favorito."
            ForeColor="Red"
            />
            <br />

        <b><font face="verdana" class="col-sm-1" color="black">Desejo:</font></b>
        <asp:TextBox ID="txtDesejo" runat="server" placeholder="Seu Desejo" Width="60%" CssClass="form-control" />
        <asp:RequiredFieldValidator
            ID="requiredDesejo"
            runat="server"
            ControlToValidate="txtDesejo"
            ErrorMessage="Por favor, digite seu Desejo."
            ForeColor="Red"
            />
            <br />   
        
        <b><font face="verdana" class="col-sm-1" color="black">Medo:</font></b>
        <asp:TextBox ID="txtMedo" runat="server" placeholder="Seu Medo" Width="60%" CssClass="form-control" />
        <asp:RequiredFieldValidator
            ID="requiredMedo"
            runat="server"
            ControlToValidate="txtMedo"
            ErrorMessage="Por favor, digite seu Medo."
            ForeColor="Red"
            />
            <br />  

        <b><font face="verdana" class="col-sm-1" color="black">Comida:</font></b>
        <asp:TextBox ID="txtComida" runat="server" placeholder="Sua Comida favorita" Width="40%" CssClass="form-control" />
        <asp:RequiredFieldValidator
            ID="requiredComida"
            runat="server"
            ControlToValidate="txtComida"
            ErrorMessage="Por favor, digite sua Comida favorita."
            ForeColor="Red"
            />
            <br /> 

            <p> 
                <asp:Label ID="lblMensagem" runat="server" />                           
            </p>

            <asp:Button ID="btnCadastro" runat="server" Text="Cadastrar" CssClass="btn btn-success btn-lg" OnClick="btnCadastroPessoa"/>
            <a href="/Default.aspx" class="btn btn-defaut btn-lg">Voltar</a>
       
     </form>
    <!--</form>-->
</body>
</html>