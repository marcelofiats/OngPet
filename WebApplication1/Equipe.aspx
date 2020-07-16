<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Equipe.aspx.cs" Inherits="WebApplication1.Equipe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #img-equipe img {
            height: 200px;
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <p>Nossa equipe conta com 50 pessoas, em sua maioria jovens ativistas apaixonadas, inconformadas, multi-causas e multi-tarefas. </p>
    <p>Na liderança desse time, contamos com uma equipe de diretoria que tem os seguintes integrantes:</p>
    <div id="img-equipe" class="row">
        <div class="col-4 center">
            <img src="Images/b.jpeg" />
        </div>
        <div class="col-4 center">
            <img src="Images/m.jpeg" />
        </div>
        <div class="col-4 center">
            <img src="Images/I.jpeg" />
        </div>
    </div>
    <div class="row">
        <div class="col-4 center">
            <h3>Bianca Issa</h3>
        </div>
        <div class="col-4 center">
            <h3>Marcelo Fiats da Silva</h3>
        </div>
        <div class="col-4 center">
            <h3>Isabela Vitoria Garcia</h3>
        </div>
    </div>
</asp:Content>
