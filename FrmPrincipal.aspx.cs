using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proj01
{
    public partial class FrmPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            //Codigo para Salvar (Incluir/Alterar)
            // limpa tudo!!
            BtnLimpar_Click(sender, e);


            if (txtNm_Cliente.Text =="")
            {
                lblDs_Msg.Text = "incluido com sucesso.";
            }
            else
            {
                lblDs_Msg.Text = "alterado com sucesso";
            }

        }

        protected void BtnLimpar_Click(object sender, EventArgs e)
        {
            // limpar os TextBox
            txtNm_Cliente.Text = "";
            txtNr_Telefone.Text = "";

            //Limpar Checked
            chkSt_VIP.Checked = false;

            //Limpar Msg
            lblDs_Msg.Text = "";

            // mudar status button
            BtnExcluir.Enabled = false;
        }

        protected void BtnSalvar_Click(object sender, EventArgs e)
        {
            BtnLimpar_Click(sender, e);

            if (txtID_Cliente.Text == "")
            {
                lblDs_Msg.Text = "incluido com sucesso";
            }
            else
            {
                lblDs_Msg.Text = "Alterado com sucesso";
            }
        }


        protected void BtnExcluir_Click(object sender, EventArgs e)
        {
            // Limpa tudo!!
            BtnLimpar_Click(sender, e);

            //msg ao User
            lblDs_Msg.Text = "excluido com sucesso.";
        }

        protected void txtID_Cliente_TextChanged(object sender, EventArgs e)
        {
            BtnExcluir.Enabled = true;
        }
    }
}