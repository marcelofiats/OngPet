<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper margin-top-60px">
        <div class="row">
            <div class="col-3 box-padding box-border">
                <h2>Entrar</h2>
                <br />
                <asp:Label ID="Mensagem" runat="server" ForeColor="red"></asp:Label>
                <br />
                <label>Login</label>
                <asp:TextBox ID="NomeLogin" runat="server"></asp:TextBox>
                <label>Senha</label>
                <asp:TextBox ID="Senha" TextMode="Password" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Entrar" OnClick="Entrar_Click" runat="server" Text="Entrar" />
            </div>
        </div>
    </div>
</asp:Content>
