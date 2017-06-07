<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="tarifciniz.anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/css/allSytle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tarfiSonEklenen" style="color:black;font-family:'Lobster 1.4';font-size:30px;background-color:green;color:white">
        Son Eklenenler
    </div>
    <div class="tariflerWrap">
                    <asp:ListView ID="tarifList" runat="server">
                        <ItemTemplate>
	                        <div class="tarifBaslik">
    	                        <asp:Label Text='<%#Eval("tarifAd") %>' runat="server" />
                            </div>
                            <div class="tarifResim">
                                <asp:Image ID="Image1" ImageUrl='<%#Eval("tarifResim") %>' runat="server" />
                            </div>
                            <div class="tarifMalzeme">
    	                        <asp:Label Text='<%#Eval("tarifMalzeme") %>' runat="server" />
                            </div>
                            <div class="tarifYapilis">
    	                        <asp:Label Text='<%#Eval("tarifYapilis") %>' runat="server" />
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
    </div>
</asp:Content>
