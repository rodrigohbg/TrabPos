using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ManterPessoa.Models
{    
    public class Conexao
    {
        public Conexao()
        {        }

        public SqlConnection AbreConexaoSQL(string conexao)
        {
            SqlConnection conectar = new SqlConnection(conexao);
            conectar.Open();
            return conectar;
        }

        public SqlConnection FechaConexaoSQL(string conexao)
        {
            SqlConnection conectar = new SqlConnection(conexao);
            conectar.Close();
            return conectar;
        }
    }
}