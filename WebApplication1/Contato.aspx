<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="WebApplication1.Contato" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper margin-top-60px">
        <div class="row">
            <!-- FORMULário -->
            <div class="col-6">
                <h1>Fale Conosco</h1>
                <h4>Preencha todos os valores</h4>
                <div class="box-padding">
                    <asp:Label ID="Erro" ForeColor="Red" Font-Size="16px" runat="server"></asp:Label>
                    <br />
                    <label>Mensagem</label>
                    <asp:TextBox ID="Mensagem" TextMode="MultiLine" Rows="6" runat="server"></asp:TextBox>
                    <label>Seu Nome</label>
                    <asp:TextBox ID="SeuNome" runat="server"></asp:TextBox>
                    <label>Seu e-mail</label>
                    <asp:TextBox ID="SeuEmail" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Enviar" OnClick="Enviar_Click" runat="server" Text="Enviar" />
                </div>
            </div>
            <!-- MAPA DO GOOGLE -->
            <div class="col-6">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3679.6893715243923!2d-47.35252258440886!3d-22.73978423765145!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c89bea5cdb94f9%3A0xffb368bd91ea12ae!2sFatec%20Americana%20-%20Faculdade%20de%20Tecnologia%20de%20Americana!5e0!3m2!1spt-BR!2sbr!4v1588883887348!5m2!1spt-BR!2sbr" width="100%" height="600" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
            </div>
        </div>
    </div>
</asp:Content>
