﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerPedidos.aspx.cs" Inherits="WebApplication1.Admin.VerPedidos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Pedidos de adoção</h2>
    <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="Mensagem" runat="server"></asp:Label>

        <asp:GridView ID="GridView1" AutoGenerateColumns="true" CellPadding="8" AutoGenerateDeleteButton="true" OnRowDeleting="GridView1_RowDeleting"  DataKeyNames="Codigo" runat="server"></asp:GridView>
    </asp:Panel>
</asp:Content>