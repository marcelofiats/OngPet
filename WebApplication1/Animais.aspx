<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Animais.aspx.cs" Inherits="WebApplication1.Cachorro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="titulo">Abaixo temos alguns de nossos amigos para doação, caso goste de algum e queira conhecer-los cadastrece e faca uma visita.</div>
    <div class="container" id="fotos">
        <div class="row">
            <div class="col-3">
                <figure>
                    <div class="zoom">
                        <figcaption>nossa querida cachorra Xuxa</figcaption>
                        <img class="img border-radius" src="Images/cachorraXuxa.jpg" />
                    </div>
                </figure>
            </div>
            <div class="col-3">
                <figure>
                    <div class="zoom">
                        <figcaption>Chico Brincalhão</figcaption>
                        <img class="img border-radius" src="Images/cachorroNeneco.jpg" />
                    </div>
                </figure>
            </div>
            <div class="col-3">
                <figure>
                    <div class="zoom">
                        <figcaption>Lindo Nicolau</figcaption>
                        <img class="img border-radius" src="Images/nicolau.jpg" />
                    </div>
                </figure>
            </div>
        </div>
        <div class="row">
            <div class="col-3">
                <figure>
                    <div class="zoom">
                        <figcaption>nossa querida cachorra Xuxa</figcaption>
                        <img class="img border-radius" src="Images/cachorroChico.jpg" />
                    </div>
                </figure>
            </div>
            <div class="col-3">
                <figure>
                    <div class="zoom">
                        <figcaption>Querido Billu</figcaption>
                        <img class="img border-radius" src="Images/cachorroBillu.jpg" />
                    </div>
                </figure>
            </div>
            <div class="col-3">
                <figure>
                    <div class="zoom">
                        <figcaption>Lindo Hercules</figcaption>
                        <img class="img border-radius" src="Images/hercules.jpg" />
                    </div>
                </figure>
            </div>
        </div>
        <div class="row">
            <div class="col-3">
                <figure>
                    <div class="zoom">
                        <figcaption>Chico Brincalhão</figcaption>
                        <img class="img border-radius" src="Images/gatoFelix.jpg" />

                    </div>
                </figure>
            </div>
            <div class="col-3">
                <figure>
                    <div class="zoom">
                        <figcaption>Lindo Felix</figcaption>
                        <img class="img border-radius" src="Images/gatoLaurinha.jpg" />
                    </div>
                </figure>
            </div>
            <div class="col-3 ">
                <figure>
                    <div class="zoom">
                        Festeiro Palilo
                    <img class="img border-radius" src="Images/palilo.jpg" />
                    </div>
                </figure>
            </div>
        </div>


    </div>
    <div class="row">

        <div class="col-6 box-border padding10">
            <h2>Formulario</h2>
            <asp:Label ID="mensagem" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="lvnome" runat="server" Text="Nome: " /><asp:TextBox ID="vNome" runat="server"></asp:TextBox>
            <asp:Label ID="lvTelefone" runat="server" Text="Telefone" /><asp:TextBox ID="vTelefone" runat="server"></asp:TextBox>
            <asp:Label ID="lvEmail" runat="server" Text="E-mail" /><asp:TextBox ID="vEmail" runat="server"></asp:TextBox>
            <asp:Label ID="lvAnimal" runat="server" Text="Nome do Amiguinho"></asp:Label><asp:TextBox ID="vAnimal" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" class="margin-top10" OnClick="AddPedido" runat="server" Text="Enviar Pedido" />
        </div>
    </div>


</asp:Content>
