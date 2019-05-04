using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL.Model;
using DAL.Persistence;

namespace Site.Pages
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastroPessoa(object sender, EventArgs e)
       
        {
            try
            {
                Pessoa p = new Pessoa();

                
                p.Nome = txtNome.Text;
                p.Hobby = txtHobby.Text;
                p.Esporte = txtEsporte.Text;
                p.Filme = txtFilme.Text;
                p.Desejo = txtDesejo.Text;
                p.Medo = txtMedo.Text;
                p.Comida = txtComida.Text;


                PessoaDAL d = new PessoaDAL();

                

                d.Gravar(p); //gravando a Pessoa

                lblMensagem.Text = "Pessoa " + p.Nome + " Cadastrado com Sucesso!!!";

                
                txtNome.Text = string.Empty;
                txtHobby.Text = string.Empty;
                txtEsporte.Text = string.Empty;
                txtFilme.Text = string.Empty;
                txtDesejo.Text = string.Empty;
                txtMedo.Text = string.Empty;
                txtComida.Text = string.Empty;

            }
            catch (Exception ex)
            {

                lblMensagem.Text = ex.Message;
            }
        }
    }
}