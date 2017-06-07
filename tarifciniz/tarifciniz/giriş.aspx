<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giriş.aspx.cs" Inherits="tarifciniz.giriş" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/css/bootstrap.css" rel="stylesheet" />
    <link href="Content/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/css/bootstrap-theme.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class = "container">
	    <div class="wrapper">    
		        <h3 class="form-signin-heading">Admin Paneli - Kullanıcı Giriş</h3>
			      <hr class="colorgraph"><br>
 
                  <asp:TextBox ID="Username" CssClass="form-control" placeholder="Kullanıcı Adı" required="" runat="server"></asp:TextBox>
                  <asp:TextBox ID="Password" CssClass="form-control" placeholder="Şifre" required="" runat="server" TextMode="Password"></asp:TextBox>	  
 
                  <asp:Button ID="Submit" CssClass="btn btn-lg btn-primary btn-block" runat="server" Text="Login" OnClick="Submit_Click" />			
	    </div>
    </div>
    </form>
</body>
</html>
