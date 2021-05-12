using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ManterPessoa.Models
{
    public class DAOCadPessoa
    {
        private static string ConexaoStringBDPessoa = "Server=serverBD,1433; Database=PESSOA;User ID=user_BD; Password=PWD_BDPessoa";
        public static string ConexaoBDPessoa;

        public Boolean ProcedureCadastrarPessoa(Pessoa usuario)
        {
            Boolean sucesso = false;
            Conexao con = new Conexao();
            try
            {

                SqlCommand comando = new SqlCommand("Criar_PessoaBD", con.AbreConexaoSQL(ConexaoStringBDPessoa));
                comando.CommandType = System.Data.CommandType.StoredProcedure;

                comando.Parameters.AddWithValue("@nome", usuario.Nome_Pessoa);
                comando.Parameters.AddWithValue("@tp_pessoa", usuario.Tipo_Pessoa);
                comando.Parameters.AddWithValue("@cpf", usuario.Pf.Cpf);
                comando.Parameters.AddWithValue("@cep", usuario.Pf.End.Cep);
                comando.Parameters.AddWithValue("@logradouro", usuario.Pf.End.Logradouro);
                comando.Parameters.AddWithValue("@numend", usuario.Pf.End.Numero);
                comando.Parameters.AddWithValue("@complemento", usuario.Pf.End.Complemento);

                int retorno = comando.ExecuteNonQuery();

                if (retorno > 0)
                {
                    sucesso = true;
                }
                else
                {
                    sucesso = false;
                }

                con.FechaConexaoSQL(ConexaoBDPessoa);

            }
            catch (SqlException ex)
            {
                string erro = ex.Message;
            }

            finally
            {
                con.FechaConexaoSQL(ConexaoBDPessoa);
            }

            return sucesso;



        }
    }
}