using ManterPessoa.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ManterPessoa.Pages
{
    public partial class CadastroPessoa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            try
            {



                Pessoa p = new Pessoa();
                DAOCadPessoa dao = new DAOCadPessoa();

                p.Nome_Pessoa = nome.Text;
                p.Tipo_Pessoa = tp_pessoa.Text;
                p.Pf.Cpf = int.Parse(cpf.Text);
                p.Pf.End.Cep = int.Parse(cep.Text);
                p.Pf.End.Logradouro = logradouro.Text;
                p.Pf.End.Numero = int.Parse(numero.Text);
                p.Pf.End.Complemento = complemento.Text;

                Boolean retorno = dao.ProcedureCadastrarPessoa(p);

                if (retorno)
                {

                    labelmensagemsucesso.Text = "Pessoa Cadastrada com Sucesso!";
                    msgsucesso.Visible = true;
                    msgerro.Visible = false;

                }
                else
                {

                    labelmensagemerro.Text = "Erro ao Cadastrar Pessoa.";
                    msgsucesso.Visible = false;
                    msgerro.Visible = true;


                }
            }

            catch (Exception ex)
            {
                labelmensagemerro.Text = "Erro: " + ex.Message;
                msgsucesso.Visible = false;
                msgerro.Visible = true;
            }



        }
    }
}