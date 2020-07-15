<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Voluntario.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Cadastro Volúntario</h2>
    <div class="row">
        <div class="col-6">
            <div class="text">
                <br />
                Para se tornar um volúntario é simples, bast se cadastrar abaixo escolher uma área e esperar nosso contato.
                <br /><br /><h4>Áreas</h4>
                <h5>Campanha</h5>Terá e responsabilidade de divulgar e nos ajudar durante campanhas de arrecadação de doacões, 
                e em campanhas de doação de animais.<br />
                <h5>Abrigo</h5>Terá a responsabilidade de nós ajudar nos abrigos de animais como, higienização de local e animais, 
                alimentar, cuidar e receber visitas.<br />
                <h5>Apadrinhado</h5>Será responsavel por fazer divulgação e acompanhamento de adoções de animais.

            </div>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Formulario" />
            <br />
            <asp:Label ID="Mensagem" ForeColor="red" Font-Size="14px" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Nome: "/><asp:TextBox ID="nome" runat="server"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" Text="Endereço : "/><asp:TextBox ID="endereco" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Telefone : "/><asp:TextBox ID="telefone" runat="server"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="E-mail: "/><asp:TextBox ID="email" runat="server"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" Text="Área"/>
            <asp:DropDownList ID="area" runat="server">
                <asp:ListItem Selected="True"></asp:ListItem>
                <asp:ListItem>Campanha</asp:ListItem>
                <asp:ListItem>Abrigo</asp:ListItem>
                <asp:ListItem>Apadrinhado</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Salvar" />
        </div>
        <div class="col-6">
            <div class="mapa border-radius">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3677.9337071454306!2d-47.312166085403874!3d-22.8049201850637!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c89814859aa171%3A0xbd2e8d58b35594d8!2sR.%20Flamboyant%2C%20186%20-%20Jardim%20Alvorada%2C%20Nova%20Odessa%20-%20SP%2C%2013460-000!5e0!3m2!1spt-BR!2sbr!4v1594322423380!5m2!1spt-BR!2sbr" width="450" height="400" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
            </div>
        </div>

    </div>
</asp:Content>
