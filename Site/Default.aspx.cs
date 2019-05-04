using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnacessar(object sender, EventArgs e)
        {
            //CAPTURAR O VALOR SELECIONADO NA LISTA:
            string opcao = ddlMenu.SelectedValue; //NOME QUE DAMOS AO DropDownList

            switch (opcao)
            {
                case "0":
                    lblMensagem.Text = "Selecione uma opção valida";
                    break;
                case "1":
                    Response.Redirect("/Pages/Cadastro.aspx");
                    break;
                case "2":
                    Response.Redirect("/Pages/Consulta.aspx");
                    break;
                case "3":
                    Response.Redirect("/Pages/Detalhes.aspx");
                    break;
            }
        }
    }
}