<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="Site.Pages.Consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Consulta de Estagiário</title>
    <link type="text/css"rel="stylesheet" href="Content/bootstrap.css" />
</head>
    <script src="Script/jquery-1.9.0.min.js"></script>
    <script src="Scripts/bootstrap.mim.js"></script>
<body>
    <div class="snpa10 col-lg-offset-1">
    <img src="https://imagizer.imageshack.com/img921/7231/e1lB1T.jpg " class="img-fluid" alt="Imagem responsiva" width="100%" height="auto" />
   <form id="form1" runat="server">
    <div class="container" style="background-color:red">
        <div class="row">

    </div></div>
       <h3 class="well">Consulta de Estagiário</h3>
       <asp:GridView ID="gridUsuario" runat="server" CssClass="table table-hover table-striped" GridLines="None" AutoGenerateColumns="false" BackColor="#ccccff">
           <Columns>
               <asp:BoundField DataField="Codigo" HeaderText="Codigo" />
               <asp:BoundField DataField="Nome" HeaderText="Nome" />
               <asp:BoundField DataField="Hobby" HeaderText="Hobby" />
               <asp:BoundField DataField="Esporte" HeaderText="Esporte" />
               <asp:BoundField DataField="Filme" HeaderText="Filme" />
               <asp:BoundField DataField="Desejo" HeaderText="Desejo" />
               <asp:BoundField DataField="Medo" HeaderText="Medo" />
               <asp:BoundField DataField="Comida" HeaderText="Comida" />
               
           </Columns>
           <RowStyle CssClass="cursor-pointer" />
       </asp:GridView>

       <p>
           <asp:Label ID="lblMensagem" runat="server"/>
       </p>

       <a href="/Default.aspx" class="btn btn-default btn-lg">Voltar</a>
             
    </form>
</body>
</html>
