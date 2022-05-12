<!--#include file="global.asa"-->
<%
response.buffer = true
dsn = "DBQ=" & Server.Mappath("db/cadastro.mdb") & ";Driver={Microsoft Access Driver (*.mdb)};"
'decleration
dim useraction
dim conn,dsn,rs,sql
'if the user submit the form
useraction = request("action")
select case useraction
	case "login"
		login = request.form("login")
		senha = request.form("senha")
		Set Conn = Server.CreateObject("ADODB.Connection")
		Set Rs = Server.CreateObject("ADODB.Recordset")
		Conn.Open dsn
		SQL = "SELECT * FROM atu where senha='"& senha &"' and login='"& login & "'"
		rs.open sql,conn
		if rs.eof and rs.bof then
			response.redirect "login.asp?senha=errada"
		else
		    session("nivel") = rs("nivel")
			session("auth") = senha
			session("login") = login
			response.redirect "logado.asp"
		end if
	end select
%>


<html>
<head>
<basefont="verdana">
<title>#TCG - BRASnet</title>
</head>

<body bgcolor="#ADADAD" link="#000000" vlink="#000000" alink="#000000">

<div align="center">
  <center>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="475" id="AutoNumber1" bgcolor="#FFF19F" height="3">
  <tr>
    <td bgcolor="#FFFFFF" width="686" height="1" colspan="6">
    <p align="center"><p align="center">
    <img border="0" src="banner_new.jpg" width="564" height="104"></td>
  </tr>
  <tr>
    <td bgcolor="#FFF19F" width="80" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="indexp.asp">
    <img border="0" src="inicio.bmp"></a></td>
    <td width="113" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="cadastro.asp"><img border="0" src="cadastro.bmp"></a></td>
    <td width="83" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="dados.asp"><img border="0" src="dados.bmp"></a></td>
    <td width="53" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="lojas.asp"><img border="0" src="loja.bmp"></a></td>
    <td width="30" height="1" style="border-bottom-style: none; border-bottom-width: medium">
    <a href="login.asp"><img border="0" src="atualizar.bmp"></a></td>
    <td width="29" height="1" style="border-bottom-style: none; border-bottom-width: medium">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="686" bgcolor="#FFFFFF" colspan="6" height="95" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1">
    <p align="center">&nbsp;</p>
    <p align="center"><img border="0" src="atualize.bmp" align="left"></p>
    <p align="center">&nbsp;</p>
    <p align="center">&nbsp;</p>
    <p align="center" style="margin-top: 0; margin-bottom: 0">
</p>
      <% if request("login") = "errado" then 
    response.write "<center>O login está errado</center>"
    end if
    %>
      <% if request("senha") = "errada" then 
    response.write "<center>A senha esta errada</center>"
    end if
    %>
    <p align="center" style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
    <table border="0" align="left" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="428" height="38" id="AutoNumber3">
      <tr>
        <td width="220" height="38" rowspan="3">
        <p align="center"><img border="0" src="zapdos.gif"></td>
        <form method="post" action="login.asp?action=login" name="Form1">
        <td width="208" height="14"><font size="2" face="Verdana">Login:</font>&nbsp; 
        <input type="text" name="login" size="20" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1"></td>
      </tr>
      <tr>
        <td width="208" height="3"><font face="Verdana" size="2">Senha:</font> 
        <input type="password" name="senha" size="20" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1"></td>
      </tr>
      <tr>
        <td width="208" height="21">
        <p align="center">
        <input type="submit" value="Logar" style="border:1px solid #000000; BACKGROUND-COLOR: #ffffff; COLOR: #000000; FONT-FAMILY: Verdana; FONT-SIZE: 8pt; bordcolor: #2C3B51">
        <input type="reset" style="border:1px solid #000000; BACKGROUND-COLOR: #ffffff; COLOR: #000000; FONT-FAMILY: Verdana; FONT-SIZE: 8pt; bordcolor: #2C3B51" value="Limpar" name="limpar"></td>
      <p align="center">&nbsp;
      </tr>
      </form>
    </table>
    </td>
  </tr>
 
  <tr>
    <td width="686" bgcolor="#FFFFFF" colspan="6" height="19" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-bottom-style: solid; border-bottom-width: 1">
    <p align="center">&nbsp;<p align="center"><b><font size="2" face="Verdana">Agora tem <%= Application("UsuariosAtuais")%> usuarios no site</font></b></td>
  </tr>
</table>

  </center>
</div>

</body>

</html>