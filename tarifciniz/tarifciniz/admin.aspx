<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="tarifciniz.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="tarifID" DataSourceID="SqlDataSource1">
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#BFE4FF" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="tarifID" HeaderText="tarifID" ItemStyle-Width="25" InsertVisible="False" ReadOnly="True" SortExpression="tarifID" >
<ItemStyle Width="25px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="tarifAd" HeaderText="tarifAd" ItemStyle-Width="200" SortExpression="tarifAd" >
<ItemStyle Width="200px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="tarifMalzeme" HeaderText="tarifMalzeme" ItemStyle-Width="350" SortExpression="tarifMalzeme" >
<ItemStyle Width="350px"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="tarifYapilis" HeaderText="tarifYapilis" ItemStyle-Width="900" SortExpression="tarifYapilis" >
<ItemStyle Width="900px"></ItemStyle>
            </asp:BoundField>
            <asp:CheckBoxField DataField="tarifOnay" HeaderText="tarifOnay" SortExpression="tarifOnay" />
        </Columns>
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:yemek_sitesiConnectionString %>" DeleteCommand="DELETE FROM [Bekleyentarif] WHERE [tarifID] = @original_tarifID AND (([tarifAd] = @original_tarifAd) OR ([tarifAd] IS NULL AND @original_tarifAd IS NULL)) AND (([tarifMalzeme] = @original_tarifMalzeme) OR ([tarifMalzeme] IS NULL AND @original_tarifMalzeme IS NULL)) AND (([tarifYapilis] = @original_tarifYapilis) OR ([tarifYapilis] IS NULL AND @original_tarifYapilis IS NULL)) AND (([tarifOnay] = @original_tarifOnay) OR ([tarifOnay] IS NULL AND @original_tarifOnay IS NULL))" InsertCommand="INSERT INTO [Bekleyentarif] ([tarifAd], [tarifMalzeme], [tarifYapilis], [tarifOnay]) VALUES (@tarifAd, @tarifMalzeme, @tarifYapilis, @tarifOnay)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [tarifID], [tarifAd], [tarifMalzeme], [tarifYapilis], [tarifOnay] FROM [Bekleyentarif]" UpdateCommand="UPDATE [Bekleyentarif] SET [tarifAd] = @tarifAd, [tarifMalzeme] = @tarifMalzeme, [tarifYapilis] = @tarifYapilis, [tarifOnay] = @tarifOnay WHERE [tarifID] = @original_tarifID AND (([tarifAd] = @original_tarifAd) OR ([tarifAd] IS NULL AND @original_tarifAd IS NULL)) AND (([tarifMalzeme] = @original_tarifMalzeme) OR ([tarifMalzeme] IS NULL AND @original_tarifMalzeme IS NULL)) AND (([tarifYapilis] = @original_tarifYapilis) OR ([tarifYapilis] IS NULL AND @original_tarifYapilis IS NULL)) AND (([tarifOnay] = @original_tarifOnay) OR ([tarifOnay] IS NULL AND @original_tarifOnay IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_tarifID" Type="Int32" />
                <asp:Parameter Name="original_tarifAd" Type="String" />
                <asp:Parameter Name="original_tarifMalzeme" Type="String" />
                <asp:Parameter Name="original_tarifYapilis" Type="String" />
                <asp:Parameter Name="original_tarifOnay" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="tarifAd" Type="String" />
                <asp:Parameter Name="tarifMalzeme" Type="String" />
                <asp:Parameter Name="tarifYapilis" Type="String" />
                <asp:Parameter Name="tarifOnay" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tarifAd" Type="String" />
                <asp:Parameter Name="tarifMalzeme" Type="String" />
                <asp:Parameter Name="tarifYapilis" Type="String" />
                <asp:Parameter Name="tarifOnay" Type="Boolean" />
                <asp:Parameter Name="original_tarifID" Type="Int32" />
                <asp:Parameter Name="original_tarifAd" Type="String" />
                <asp:Parameter Name="original_tarifMalzeme" Type="String" />
                <asp:Parameter Name="original_tarifYapilis" Type="String" />
                <asp:Parameter Name="original_tarifOnay" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <br />
    <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" OnClick="Button1_Click" />
    <br /><br />
    <a href="anasayfa.aspx">Anasayfa</a>
    </form>
</body>
</html>
