<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="_Registration" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
     body
         {
             background:#0ff
             
         }
            .formRegclass 
            {
                padding:20px;
                margin:0px auto;
                background: #fff;
                width:400px;
               height: 350px;
               border-style:solid;
         }
        .auto-style1 {
            width: 241px;
        }
        </style>
</head>
<body>
    
    <form id="form1" runat="server" class="formRegclass">
        
        <div>
        <label  ><b>USER REGISTRATION PAGE</b> &nbsp;&nbsp;</label><br /><br />
        <label> Enter your First Name &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; </label> <asp:TextBox ID="idfname" runat="server" Width="194px"></asp:TextBox> 
        <br /><br />
        <label  >Enter your LastName Name </label> &nbsp;<asp:TextBox ID="idlastname" runat="server" Width="192px"></asp:TextBox>
        <br /><br />
        <label>Enter your User Name </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="iduname" runat="server" Width="191px"></asp:TextBox>
         <br /><br />
        <label>Enter your Password</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:TextBox ID="idpwd" runat="server" Width="186px"></asp:TextBox>
        <br /><br />
        <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button  ID="btnRegister" align="center" Text ="  Submit " runat="server" Width="142px" OnClick="btnRegister_Click" />
    </div>
    </form>
</body>
</html>
