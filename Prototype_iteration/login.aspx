<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Prototype_iteration.login" %>

<!DOCTYPE html>
<% 
  


    %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>login</title>
      <link rel="stylesheet" href="stylesheet.css">
   </head>
   <body>
       <form id="LG_in" runat="server">
      <header></header>
      <nav>
         <div class="containerLogin">
            <div class="box"></div>
            <div class="box"></div>
            <div class="boxLoginleft" style="float:left;  width: 161px;" >
               <div>
                    <asp:Literal ID="ltMessage" runat="server"></asp:Literal>
                   
                </div>
            </div>
            <div class="boxLoginleft">
    


                
                  <div>   
       <label>Username</label>
       <asp:TextBox ID="username" runat="server" />
        </div>       


        <div>   
       <label>Password</label>
       <asp:TextBox ID="password" runat="server" />
        </div>       
        <asp:Button ID="button_loggin" runat="server" Text="Login" type="submit" onclick="btmLogin_Click"/>


	   </form>
               
            </div>
         </div>
      </nav>
   </body>
</html>