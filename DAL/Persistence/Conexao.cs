using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DAL.Persistence
{
    public class Conexao
    {
        //ATRIBUTOS:
        protected SqlConnection Con; //estabelce conecção com sql server
        protected SqlCommand Cmd;    // escrever e executar comandos de sql
        protected SqlDataReader Dr;  // ler registros de querys ...consultas

        //METODO - ABRIR CONEXAO COM BANCO
        protected void AbrirConexao()
        {
            try
            {
                Con = new SqlConnection("Data Source=CLECIOSILVA\\SQLEXPRESS;Integrated Security=True"); // Connection string
                Con.Open();

            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
        }

        //METODO PARA FECHAR CONEXAO COM BANCO
        protected void FecharConexao()
        {
            try
            {
                Con.Close();

            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
        }
    }
}
