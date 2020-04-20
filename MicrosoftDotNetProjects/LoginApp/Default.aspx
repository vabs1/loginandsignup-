<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title >
       
    </title>
     <style>

         body
         {
             background:#0ff
             
         }
            .formclass 
            {
                padding:20px;
                margin:0px auto;
                background: #fff;
                width:275px;
               height: 350px;
               border-style:solid;
         }
            h2
            {
                text-align:center
            }
            input
            {
                padding:2px;
                width:80%
                }
         .button {
                padding:2px;
                width:50%;
                
            }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <br />
    <div>

        <h1 align="center">Welcome to Vaibhav Software, Mumbai India. </h1>
    </div>
   
   
        <div class ="formclass">
         <table align="center"    style="background-color="#ffff0"><tr><td>
        <asp:label runat="server" ID="lbltext" Text=""  /> 
        <label align="center" style="text-decoration-color="green"> <b>SignIn to your account</b></label>
        

        <h2>LOGIN PAGE</h2>
        <asp:label runat="server" ID="Labelname" Text="User Name"  />&nbsp;  <asp:TextBox ID="txtUser" CssClass="input" Text="" runat="server"></asp:TextBox>
         <br /><br />                   
        <asp:label runat="server" ID="Labelpass" Text="Password"  />&nbsp; <asp:TextBox ID="txtpass" CssClass="input" Text="" TextMode="Password" runat="server"></asp:TextBox>
        <br /><br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" CssClass="button"  runat="server" Text ="Login" OnClick="Button1_Click" />
        <br />
        <br />
            </td> </tr>
        <tr><td>
       
        <label> <b>Dont have an account</b></label>
           <br /> <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btncreateAccount" CssClass="button"  runat="server" Text ="Create an Account" OnClick="btncreateAccount_Click"  />
            </td>
    </tr></table> 
         </div>
     
           

       
    </form>
</body>
</html>
