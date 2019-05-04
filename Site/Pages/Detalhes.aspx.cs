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
    public partial class Detalhes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlDados.Visible = false;
        }

        protected void btnExcluirPessoa(object sender, EventArgs e)
        {
            try
            {
                int Codigo = Convert.ToInt32(txtCodigo.Text);

                Pessoa p     = new Pessoa();
                PessoaDAL d  = new PessoaDAL();

                d.Excluir(Codigo);

                lblMemsagem.Text = "Estagiário(a)" + p.Nome + "Excluido com sucesso!";

                txtCodigo.Text      = string.Empty;
                txtNome.Text        = string.Empty;
                txtHobby.Text    = string.Empty;
                txtEsporte.Text       = string.Empty;
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

        protected void BtnAtualizarPessoa(object sender, EventArgs e)
        {
            try
            {
                Pessoa p = new Pessoa();

                p.Codigo   = Convert.ToInt32(txtCodigo.Text);
                p.Nome     = Convert.ToString(txtNome.Text);
                p.Hobby    = Convert.ToString(txtHobby.Text);
                p.Esporte  = Convert.ToString(txtEsporte.Text);
                p.Filme    = Convert.ToString(txtFilme.Text);
                p.Desejo   = Convert.ToString(txtDesejo.Text);
                p.Medo     = Convert.ToString(txtMedo.Text);
                p.Comida   = Convert.ToString(txtComida.Text);


                PessoaDAL d = new PessoaDAL();
                d.Atualizar(p);

                lblMemsagem.Text = "Estagiarário " + p.Nome + " Atualizado com Sucesso!";

                txtCodigo.Text      = string.Empty;
                txtNome.Text        = string.Empty;
                txtHobby.Text    = string.Empty;
                txtEsporte.Text       = string.Empty;
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

        protected void btnPesquisarPessoa(object sender, EventArgs e)
        {
            try
            {
                int Codigo = Convert.ToInt32(txtCodigo.Text);

                PessoaDAL d = new PessoaDAL();
                Pessoa p = d.PesquisarporCodigo(Codigo);

                if (p != null)
                {
                    pnlDados.Visible = true;
                    txtNome.Text = p.Nome;
                    txtHobby.Text = p.Hobby;
                    txtEsporte.Text = p.Esporte;
                    txtFilme.Text = p.Filme;
                    txtDesejo.Text = p.Desejo;
                    txtMedo.Text = p.Medo;
                    txtComida.Text = p.Comida;

                }
                else
                { 
                    lblMensagem.Text = "Estagiário Não Encontrado";

                    txtCodigo.Text = string.Empty;    
                    
                }
            }
            catch (Exception ex)
            {

                lblMensagem.Text = ex.Message;
            }
        }
    }
}