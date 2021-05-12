<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" MasterPageFile="~/Site.master" CodeBehind="CadastroPessoa.aspx.cs" Inherits="ManterPessoa.Pages.CadastroPessoa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <html>
    <head>
        <title>Cadastro de Pessoas</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <!-- Include jQuery -->
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
        <!-- Include Date Range Picker -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />



    </head>
    <body>
        <div class="container register-form top-buffer-1">
            <div class="form">

                <%-- div mensagem sistema erro--%>

                <div class="form-group " runat="server" visible="false" id="msgerro">
                    <div class="alert alert-danger alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <strong>
                            <asp:Label runat="server" ID="labelmensagemerro"></asp:Label>
                        </strong><%--texto a acrecentar --%>
                    </div>
                </div>

                <%-- div mensagem sistema sucesso--%>

                <div class="form-group " runat="server" visible="false" id="msgsucesso">
                    <div class="alert alert-success alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <strong>
                            <asp:Label runat="server" ID="labelmensagemsucesso"></asp:Label>
                        </strong><%--texto a acrecentar --%>
                    </div>
                </div>


                <div class="note">
                    <h5>CADASTRO DE PESSOAS</h5>
                </div>
                <div class="form-content bk">
                    <form action="#" method="POST">
                        <fieldset class="scheduler-border">
                            <legend class="scheduler-border">Dados de Pessoas</legend>

                            <asp:UpdatePanel runat="server" ID="update">
                                <ContentTemplate>


                                    <div class="row">


                                        <div class="col-sm-4">
                                            <label class="control-label" for="selectbasic">Nome<h11>*</h11></label>
                                            <asp:TextBox runat="server" MaxLength="30" ID="nome" ClientIDMode="Static" placeholder="" class="form-control" AutoPostBack="true" autofocus="true" />
                                        </div>

                                        <div class="col-sm-3">
                                            <label class="control-label" for="selectbasic">Tipo Pessoa<h11>*</h11></label>
                                            <asp:DropDownList runat="server" ClientIDMode="Static" ID="tp_pessoa" CssClass="form-control" required="required">

                                                <asp:ListItem Value="" Text=""></asp:ListItem>
                                                <asp:ListItem Value="PF" Text="Pessoa Fisica"></asp:ListItem>

                                            </asp:DropDownList>


                                        </div>


                                    </div>


                                    <div class="row">

                                        <div class="col-sm-4">
                                            <label class="control-label" for="selectbasic">CPF<h11>*</h11></label>
                                            <asp:TextBox runat="server" MaxLength="11" ID="cpf" ClientIDMode="Static" placeholder="" class="form-control" required />
                                        </div>

                                        <div class="col-sm-4">
                                            <label class="control-label" for="selectbasic">CEP<h11></h11></label>
                                            <asp:TextBox runat="server" MaxLength="8" ID="cep" ClientIDMode="Static" placeholder="" class="form-control" required />
                                        </div>


                                        <%--<div class="col-sm-2">
                                <label class="control-label" for="selectbasic">Sistema<h11>*</h11></label>
                                <asp:TextBox runat="server" MaxLength="30" ID="sistema" Text="PGBL" ClientIDMode="Static" placeholder="PGBL ou SPI(SID)" ToolTip="PGBL ou SPI(SID)" class="form-control" />
                            </div>--%>
                                    </div>

                                    <div class="row">

                                        <div class="col-sm-4">
                                            <label class="control-label" for="selectbasic">Logradouro<h11>*</h11></label>
                                            <asp:TextBox runat="server" MaxLength="20" ID="logradouro" ClientIDMode="Static" placeholder="" class="form-control" required />
                                        </div>

                                        <div class="col-sm-4">
                                            <label class="control-label" for="selectbasic">Numero<h11></h11></label>
                                            <asp:TextBox runat="server" MaxLength="10" ID="numero" ClientIDMode="Static" placeholder="" class="form-control" required />
                                        </div>


                                        <%--<div class="col-sm-2">
                                <label class="control-label" for="selectbasic">Sistema<h11>*</h11></label>
                                <asp:TextBox runat="server" MaxLength="30" ID="sistema" Text="PGBL" ClientIDMode="Static" placeholder="PGBL ou SPI(SID)" ToolTip="PGBL ou SPI(SID)" class="form-control" />
                            </div>--%>
                                    </div>

                                    <div class="row">

                                        <div class="col-sm-4">
                                            <label class="control-label" for="selectbasic">Complemento<h11>*</h11></label>
                                            <asp:TextBox runat="server" MaxLength="20" ID="complemento" ClientIDMode="Static" placeholder="" class="form-control" required />
                                        </div>

                                        <%-- <div class="col-sm-4">
                                            <label class="control-label" for="selectbasic">CEP<h11></h11></label>
                                            <asp:TextBox runat="server" MaxLength="30" ID="TextBox2" ReadOnly="true" ClientIDMode="Static" placeholder="" class="form-control" />
                                        </div>--%>


                                        <%--<div class="col-sm-2">
                                <label class="control-label" for="selectbasic">Sistema<h11>*</h11></label>
                                <asp:TextBox runat="server" MaxLength="30" ID="sistema" Text="PGBL" ClientIDMode="Static" placeholder="PGBL ou SPI(SID)" ToolTip="PGBL ou SPI(SID)" class="form-control" />
                            </div>--%>
                                    </div>

                                </ContentTemplate>
                            </asp:UpdatePanel>

                            <div class="row">

                                <div class="col-sm-1">
                                    <br />
                                    <asp:Button runat="server" ID="btnCadastrar" CssClass="btn btnSucesso" type="submit" Text="Cadastrar" OnClick="btnCadastrar_Click" />
                                </div>

                            </div>


                        </fieldset>

                    </form>
                </div>
            </div>
        </div>
    </body>
    </html>

</asp:Content>
