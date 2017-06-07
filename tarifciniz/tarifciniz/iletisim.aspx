<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="tarifciniz.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .message-form{
            float:left;
            margin-top:20px;
            padding-left:10px;
            width:680px;
            height:auto;
            background-color:#f85f5f;
            color:white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="hakkımızda-baslik" style="color:black;font-family:'Lobster 1.4';font-size:30px;background-color:green;color:white;">
        Iletisim
    </div>
    <div class="message-form">
        <br /><br />
        <a id="foxyform_embed_link_773997" href="http://www.foxyform.com/">foxyform</a>
        <script type="text/javascript">
            (function (d, t) {
                var g = d.createElement(t),
                    s = d.getElementsByTagName(t)[0];
                g.src = "http://www.foxyform.com/js.php?id=773997&sec_hash=7c2272a3128&width=350px";
                s.parentNode.insertBefore(g, s);
            }(document, "script"));
        </script>
    </div>

</asp:Content>