<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper border">
        <div class="foto">
            <div class="flexslider">
                <ul class="slides color">
                    <li>
                        <img class="fotosliders border-radius" src="Images/adotar-cachorro-rua-quais-os-cuidados.jpg" />
                    </li>
                    <li>
                        <img class="fotosliders border-radius" src="Images/cachorro2.jpg" />
                    </li>
                    <li>
                        <img class="fotosliders border-radius" src="Images/cachorro3.jpg" />
                    </li>
                    <li>
                        <img class="fotosliders border-radius" src="Images/gato1.jpg" />
                    </li>
                    <li>
                        <img class="fotosliders border-radius" src="Images/gato2.jpg" />
                    </li>
                </ul>
            </div>
        </div>
        <script>
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: 'slide'
                });
            });
        </script>
        <div class="row margin-top-50">
            <!-- COLUNA 1 -->
            <div class="col-4">
                <div class="box-padding">
                    <img class="border-radius" width="105%" src="Images/voluntario.png" />
                    <br />
                    <br />
                    <h1>Nossa Equipe</h1>
                    <p>
                        Nossa equipe é formada por volúntarios, nossa missão é fazer recolhimento de animais abandonados,
                    oferecer os cuidados necessarios, e de achar um novo lar para os nossos amiguinhos, esse trabalho é feito de forma sem 
                    fins lucrativos, somente com doações e trabalho volúntario, temos mais de 100 volúntarios em diversas regiões,
                    que alem de nos ajudar com os animais, ajudam na divulgação e busca por colaboração.
                    </p>

                    <div class="text">
                        Nossa equipe
                        <br />
                        <a href="Equipe.aspx">click aqui</a> para saber mais.
                    </div>
                </div>
            </div>
            <!-- COLUNA 2 -->
            <div class="col-4">
                <div class="box-padding">
                    <img  class="border-radius" width="100%" src="Images/colaboracao.png" />
                    <br />
                    <br />
                    <h1>Parceiros</h1>
                    Nossa ONG, conta com mais de 20 Parceiros, entre Veterinarios, casas de rações, Empresas Parceiras, enter outra,
                    a fim de nos ajudar com nosso projetos e divulgação de nossa ONG.
                     <br />
                    <br />
                    <div class="text">Deseja ser um parceiro <a href="Parceiro.aspx">click aqui</a> e saiba mais.</div>
                </div>
            </div>

            <!-- COLUNA 3 -->
            <div class="col-4">
                <div class="box-padding">
                    <img class="border-radius" width="100%" src="Images/doar.jpg" />
                    <br />
                    <br />
                    <h1>Doações</h1>
                    caso queira fazer uma doação em prol da ONG, sua doação val muito para nossos amiguinos, seja ela em dinheiro, roupas velhas, cobertores, ração, entre outro toda doação é bem vinda.
                     <br />
                    <br />
                    <div class="text">Para Fazer uma doação <a href="Doacoes.aspx">click aqui</a> e saiba mais.</div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
