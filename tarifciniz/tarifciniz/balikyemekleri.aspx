<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="balikyemekleri.aspx.cs" Inherits="tarifciniz.balikyemekleri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/css/allSytle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                    <asp:DataPager ID="DataPager1" PagedControlID="tarifList" PageSize="5" QueryStringField="sayfa" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ShowPreviousPageButton="true" ShowNextPageButton="false" PreviousPageText="&laquo;" />
                            <asp:NumericPagerField NextPageText="..." PreviousPageText="..." />
                            <asp:NextPreviousPagerField ShowNextPageButton="true" ShowPreviousPageButton="false" NextPageText="&raquo;" />
                        </Fields>
                     </asp:DataPager>
</asp:Content>
