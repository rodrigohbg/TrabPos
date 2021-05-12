using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ManterPessoa.Models
{
    public class Pessoa
    {

        public int ID_Pessoa { get; set; }
        public string Nome_Pessoa { get; set; }
        public string Tipo_Pessoa { get; set; }
        public PessoaPf Pf { get; set; }

        public Pessoa(int iD_Pessoa, string nome_Pessoa, string tipo_Pessoa, PessoaPf pf)
        {
            ID_Pessoa = iD_Pessoa;
            Nome_Pessoa = nome_Pessoa;
            Tipo_Pessoa = tipo_Pessoa;
            Pf = pf;
        }

        public Pessoa()
        {
            
        }
    }
}