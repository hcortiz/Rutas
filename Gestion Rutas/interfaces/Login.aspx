<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gestion_Rutas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/style.css" rel="stylesheet" />
</head>
<body>
    <div class="menu">
        <h1>Sistema Gestion de Rutas</h1>
    </div>    
    <div class="loginbox">
        <img src="../imagenes/user.png" alt="Alternate Text" class="user"/>
        <h2>Registrese</h2>
        <form runat="server" >
            <asp:Label Text="Usuario" CssClass="lblusuario" runat="server" />
            <asp:TextBox ID="txtUsuario" CssClass="txtusuario" runat="server" placeholder="Ingrese Usuario"/>
            <asp:Label Text="Contraseña" CssClass="lblcontra" runat="server" />
            <asp:TextBox ID="txtcontra" CssClass="txtcontra" runat="server" TextMode="Password" placeholder="**********"/>
            <asp:Button Text="Iniciar Sesión" CssClass="btnenviar" runat="server" OnClick="Unnamed5_Click" />
            <asp:LinkButton Text="Olvidé mi contraseña" CssClass="btnolvide" runat="server" OnClick="Unnamed4_Click" />
        </form>
        <div >
            <asp:Label ID="lblmjs" CssClass="lblmjs" runat="server" />
        </div>
    </div>

</body>
</html>
