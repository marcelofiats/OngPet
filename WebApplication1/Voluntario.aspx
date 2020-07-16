<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Voluntario.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Cadastro Volúntario</h2>
    <div class="row">
        <div class="col-10">
            <div class="text">
                <br />
                <h1>VAMOS JUNTOS SALVAR VIDAS? 😻</h1>
                <p>Chega de dar desculpas! Agora você pode ser um voluntário virtual sem sair de casa e sem muito esforço! 🤩</p>
                <p>Ajude a salvar vidas e oferecer um lar #responsável pra quem tanto merece carinho e amor! ❤️.</p>

                <h1>COMO VAI FUNCIONAR? (presta atenção, hein!)</h1>
                <p>Nosso objetivo é achar um voluntário comprometido em arranjar um lar responsável para nossos animais resgatados! Afinal de contas, LUGAR DE ANIMAL NÃO É NO CANIL! E sim, numa casa com muito amor! 🐶</p>
                <p>Para se tornar um volúntario é simples, basta se cadastrar abaixo escolher uma área e esperar nosso contato.</p>
                <br />
                <h4>Áreas</h4>
                <h5>Campanha</h5>
                Terá e responsabilidade de divulgar e nos ajudar durante campanhas de arrecadação de doacões, 
                e em campanhas de doação de animais.<br />
                <h5>Abrigo</h5>
                Terá a responsabilidade de nós ajudar nos abrigos de animais como, higienização de local e animais, 
                alimentar, cuidar e receber visitas.<br />
                <h5>Apadrinhado</h5>
                Será responsavel por fazer divulgação e acompanhamento de adoções de animais.

            </div>
            <br />
            <br />
            <div class=" col-6 box-border padding10 text">
            <asp:Label ID="Label1" runat="server" Text="Formulario" />
            <br />
            <asp:Label ID="Mensagem" ForeColor="red" Font-Size="14px" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Nome: " /><asp:TextBox ID="nome" Width="90%" runat="server"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" Text="Endereço : " /><asp:TextBox ID="endereco" Width="90%" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Telefone : " /><asp:TextBox ID="telefone" Width="90%" runat="server"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="E-mail: " /><asp:TextBox ID="email" Width="90%" runat="server"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" Text="Área" />
            <asp:DropDownList ID="area" Width="70%" runat="server">
                <asp:ListItem Selected="True"></asp:ListItem>
                <asp:ListItem>Campanha</asp:ListItem>
                <asp:ListItem>Abrigo</asp:ListItem>
                <asp:ListItem>Apadrinhado</asp:ListItem>
            </asp:DropDownList>

            
            <br />
            <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" Text="Salvar" />
        </div>

        </div>

    </div>
</asp:Content>
