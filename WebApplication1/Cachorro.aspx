<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cachorro.aspx.cs" Inherits="WebApplication1.Cachorro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="titulo">Abaixo temos alguns de nossos amigos para doação, caso goste de algum e queira conhecer-los cadastrece e faca uma vizita.</div>
    <div class="row">
        <!--Primeira coluna-->
        <div class="col-3 center">
            <img class="zoom border-radius" src="Images/cachorraXuxa.jpg" />
            <br />
            nossa querida cachorra Xuxa
        <br />
            <img class="zoom border-radius" src="Images/cachorroNeneco.jpg" />
            <br />
            Divertido Sansão
        <br />
            <img class="zoom border-radius" src="Images/nicolau.jpg" />
            <br />
            Lindo Hercules
        </div>

        <!--Segunda coluna-->
        <div class="col-3 center">
            <img class="zoom border-radius" src="Images/cachorroChico.jpg" />
            <br />
            Chico Brincalhão
        <br />
            <img class="zoom border-radius" src="Images/cachorroBillu.jpg" />
            <br />
            Querido Billu
        <br />
            <img class="zoom border-radius" src="Images/hercules.jpg" />
            <br />
            Sussegado Nicolau
        
        </div>
        <!--Terceira coluna-->
        <div class="col-3 center">
            <img class="zoom border-radius" src="Images/cachorroPitico.jpg" />
            <br />
            Chico Brincalhão
        <br />
            <img class="zoom border-radius" src="Images/Lilica.jpg" />
            <br />
            Graciosa Lilica
        <br />
            <img class="zoom border-radius" src="Images/jandira.jpg" />
            <br />
            carinhosa Jandira
        </div>

        <!--Quarta coluna-->
        <div class="col-3 center">
            <img class="zoom border-radius" src="Images/gatoFelix.jpg" />
            <br />
            Lindo Felix
        <br />
            <img class="zoom border-radius" src="Images/gatoLaurinha.jpg" />
            <br />
            Manhosa Laurinha
        <br />
            <img class="zoom border-radius" src="Images/palilo.jpg" />
            <br />
            Festeiro Palilo
        </div>

        <div class="col-6 box-border padding10 margin-top-50">
        <h2>Formulario</h2>
        <asp:Label ID="Label1" runat="server" Text="Nome: " />
        <asp:TextBox ID="Vnome" runat="server"></asp:TextBox>
        </div>
    </div>


</asp:Content>
