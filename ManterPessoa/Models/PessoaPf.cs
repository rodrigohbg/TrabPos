using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ManterPessoa.Models
{
    public class PessoaPf
    {
        public int Cpf { get; set; }
        public Endereco End { get; set; }

        public PessoaPf(int cpf, Endereco end)
        {
            Cpf = cpf;
            End = end;
        }
        public PessoaPf()
        {

        }
    }
}