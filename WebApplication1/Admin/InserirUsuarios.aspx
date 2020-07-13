<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InserirUsuarios.aspx.cs" Inherits="WebApplication1.Admin.InserirUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper margin-top-60px">
        <asp:UpdatePanel ID="UpdatePanel" UpdateMode="Conditional" runat="server">
            <ContentTemplate>
                <div class="row">
                    <!-- FORMULÁRIO DE CADASTRO -->
                    <div class="col-6 box-padding box-border">
                        <asp:Panel DefaultButton="Salvar" ID="Panel2" runat="server">
                            <h2>CADASTRO DE USUÁRIOS</h2>
                            <br />
                            <asp:Label ID="Mensagem" ForeColor="red" runat="server"></asp:Label>
                            <br />
                            <br />
                            <div style="float: right;">
                                <asp:Label ID="Codigo" runat="server" Font-Bold="true" Font-Size="30px"></asp:Label>
                            </div>
                            <br />
                            <label>NOME COMPLETO</label>
                            <asp:TextBox ID="NomeCompleto" MaxLength="255" runat="server"></asp:TextBox>
                            <label>LOGIN</label>
                            <asp:TextBox ID="Login" MaxLength="255" runat="server"></asp:TextBox>
                            <label>SENHA</label>
                            <asp:TextBox ID="Senha" MaxLength="255" runat="server"></asp:TextBox>
                            <label>ANOTAÇÕES</label>
                            <asp:TextBox ID="Anotacoes" MaxLength="255" TextMode="MultiLine" Rows="4" runat="server"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="Salvar" OnClick="Salvar_Click" runat="server" Text="Salvar" />
                            <asp:Button ID="Excluir" Visible="false" OnClick="Excluir_Click" runat="server" Text="Excluir" OnClientClick="return confirm('Deseja Realmente Excluir o cadastro?');" />

                        </asp:Panel>
                        <br />
                        <br />
                    </div>
                    <!-- DADOS CADASTRADOS-->
                    <div class="col-6 box-border box-padding">
                        <h2>USUÁRIOS CADASTRADOS</h2>
                        <br />
                        <asp:TextBox ID="BuscarUsuario" Style="max-width: 400px; display: inline" runat="server"></asp:TextBox>
                        <asp:Button ID="Buscar" runat="server" OnClick="Buscar_Click" Text="Buscar" />
                        <asp:Button ID="Cancelar" Visible="false" runat="server" OnClick="Cancelar_Click" Text="X" />
                        <br />
                        <br />
                        <asp:Panel ID="Panel1" Height="500px" ScrollBars="Vertical" runat="server">
                            <asp:GridView ID="Usuarios" Width="100%" AutoGenerateColumns="true" CellPadding="8" HeaderStyle-BackColor="#dfdfdf" BorderColor="#cccccc" runat="server" OnSelectedIndexChanged="Usuarios_SelectedIndexChanged" AutoGenerateSelectButton="True"></asp:GridView>
                        </asp:Panel>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
