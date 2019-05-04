using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient; // Biblioteca de acesso ao SQL SERVER
using DAL.Model;

namespace DAL.Persistence
{
    public class PessoaDAL : Conexao
    {
        //metodo - GRAVAR DADOS - INSERT:
        public void Gravar(Pessoa p)
        {
            try
            {
                //ABRIR A CONEXAO:
                AbrirConexao();

               
                Cmd = new SqlCommand("insert into Pessoa(Nome, Hobby, Esporte, Filme, Desejo, Medo, Comida) values(@v1, @v2, @v3, @v4, @v5, @v6, @v7)", Con);

                Cmd.Parameters.AddWithValue("@v1", p.Nome);
                Cmd.Parameters.AddWithValue("@v2", p.Hobby);
                Cmd.Parameters.AddWithValue("@v3", p.Esporte);
                Cmd.Parameters.AddWithValue("@v4", p.Filme);
                Cmd.Parameters.AddWithValue("@v5", p.Desejo);
                Cmd.Parameters.AddWithValue("@v6", p.Medo);
                Cmd.Parameters.AddWithValue("@v7", p.Comida);


                Cmd.ExecuteNonQuery();//EXECUTA NOSSO METODO!!!

              
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao gravar Pessoa:" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        //METODO - ATUALIZAR DADOS - UPDATE:
        public void Atualizar(Pessoa p)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("update Pessoa set Nome=@v1, Hobby=@v2, Esporte=@v3, Filme=@v4, Desejo=@v5, Medo=@v6, Comida=@v7 where Codigo=@v8", Con);

                Cmd.Parameters.AddWithValue("@v1", p.Nome);
                Cmd.Parameters.AddWithValue("@v2", p.Hobby);
                Cmd.Parameters.AddWithValue("@v3", p.Esporte);
                Cmd.Parameters.AddWithValue("@v4", p.Filme);
                Cmd.Parameters.AddWithValue("@v5", p.Desejo);
                Cmd.Parameters.AddWithValue("@v6", p.Medo);
                Cmd.Parameters.AddWithValue("@v7", p.Comida);
                Cmd.Parameters.AddWithValue("@v8", p.Codigo);


                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Atualixar o Pessoa:" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        //METODO - EXCLUIR DADOS - DELETE:
        public void Excluir(int Codigo)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("delete from Pessoa where Codigo=@v1", Con);

                Cmd.Parameters.AddWithValue("@v1", Codigo);

                Cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Excluir o Pessoa:" + ex.Message);
            }
            finally
            {

            }
        }

        //METODO PARA OBTER PESSOA PELO ID:
        public Pessoa PesquisarporCodigo(int Codigo)
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select * from Pessoa where Codigo=@v1", Con);
                Cmd.Parameters.AddWithValue("@V1", Codigo);
                Dr = Cmd.ExecuteReader();//execução da leitura das informações no BD;

                Pessoa p = null; //criando espaco de memoria: ponteiro

                if (Dr.Read())
                {
                    p = new Pessoa();

                    p.Codigo = Convert.ToInt32(Dr["Codigo"]);
                    p.Nome = Convert.ToString(Dr["Nome"]);
                    p.Hobby = Convert.ToString(Dr["Hobby"]);
                    p.Esporte = Convert.ToString(Dr["Esporte"]);
                    p.Filme = Convert.ToString(Dr["Filme"]);
                    p.Desejo = Convert.ToString(Dr["Desejo"]);
                    p.Medo = Convert.ToString(Dr["Medo"]);
                    p.Comida = Convert.ToString(Dr["Comida"]);

                }
                return p;

            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao pesquisar Pessoa: " + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        //METODO PARA LISTAR TODAS AS PESSOAS CADASTRASAOS:
        public List<Pessoa> Listar()
        {
            try
            {
                AbrirConexao();
                Cmd = new SqlCommand("select * from Pessoa", Con);
                Dr = Cmd.ExecuteReader();

                List<Pessoa> lista = new List<Pessoa>();

                while (Dr.Read())
                {
                    Pessoa p = new Pessoa();

                    p.Codigo = Convert.ToInt32(Dr["Codigo"]);
                    p.Nome = Convert.ToString(Dr["Nome"]);
                    p.Hobby = Convert.ToString(Dr["Hobby"]);
                    p.Esporte = Convert.ToString(Dr["Esporte"]);
                    p.Filme = Convert.ToString(Dr["Filme"]);
                    p.Desejo = Convert.ToString(Dr["Desejo"]);
                    p.Medo = Convert.ToString(Dr["Medo"]);
                    p.Comida = Convert.ToString(Dr["Comida"]);

                    lista.Add(p);
                }
                return lista;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao listar a Pessoa " + ex.Message);

            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
