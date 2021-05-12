using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ManterPessoa.Models
{
    public class Endereco
    {
        public int Cep { get; set; }
        public string Logradouro { get; set; }
        public int Numero { get; set; }
        public string Complemento { get; set; }

        public Endereco(int cep, string logradouro, int numero, string complemento)
        {
            Cep = cep;
            Logradouro = logradouro;
            Numero = numero;
            Complemento = complemento;
        }
        public Endereco()
        {

        }
    }
}