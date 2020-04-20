<%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="_welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script> 

       
        
    </script>
    
</head>
<body  >
    Welcome to Vaibhav Software.
<p>Vaiabhav Software Solutions is a startup company founded in Year Jan 2020. It is headquatered
in Navi Mumbai India. Vaibhav Athawale is the CEO of the company.</p>

<p>The Company has started building AI and  CyberSecurity Products aimed to served the b2b customers.</p>

<p>This website is under construction and will be updated regularly.</p>

<p>Thanks for visiting the Site.</p>

<p> For enquiries you can reach out to athawale200@gmail.com </p>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="txtuser" runat="server" Text ="" ></asp:Label>
    <asp:Button ID ="btnLogout" runat ="server" Text ="Log out" OnClick="btnLogout_Click" />
    </div>
    </form>
</body>
</html>
