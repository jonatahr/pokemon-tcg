<!--#include file="global.asa"-->
<!--#include file="dataconn.asp"-->
<%	if Session("login") = False then
    response.redirect "login.asp?login=errado"
End if
%>
<% if session("auth") = false then
response.redirect "login.asp?senha=errada"
End if
%>
<%
Session("nick") = LimpaHTML(request("nick"))
%>
             <%
              set rs = server.createobject("adodb.recordset")
              rs.open "select * from dados where nick = '"&request("nick")&"'", Conn
              If rs.EOF or rs.BOF then
              response.redirect "altera_dados.asp?text=Lutador+não+encontrado."
              End If
              %>

<html>

<head>
<title>#TCG - BRASnet</title>
</head>

<body bgcolor="#ADADAD" link="#000000" vlink="#000000" alink="#000000">

<div align="center">
  <center>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="526" id="AutoNumber1" bgcolor="#FFF19F" height="4">
  <tr>
    <td bgcolor="#FFFFFF" width="686" height="1" colspan="6">
    <p align="center">
    <img border="0" src="banner_new.jpg" width="567" height="99"></td>
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
    <td width="30" height="1">
    <a href="login.asp"><img border="0" src="atualizar.bmp"></a></td>
    <td width="29" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="686" bgcolor="#FFFFFF" colspan="6" height="95" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1">
    <p align="center">Dados de <%=rs("nick")%> </p>
    <table border="0" cellpadding="0" align="center" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="80%" id="AutoNumber2">
      <form method="POST" action="alterar.asp?action=atualizar">
     <tr>
     <input type="hidden" name="nick" value="<%=rs("nick")%>">
     <input type="hidden" name="nome" value="<%=rs("nome")%>">
     <input type="hidden" name="senha" value="<%=rs("senha")%>">
     <input type="hidden" name="login" value="<%=rs("login")%>">
          <input type="hidden" name="id" value="<%=rs("id")%>">
        <td width="50%" align="right"><b><font face="Verdana" size="1">Deck</font></b></td>
        <td width="50%">
        <input type="texte" value="<%= rs("deck")%>" size="20" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" name="deck"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><b><font face="Verdana" size="1">
        Experiência</font></b></td>
        <td width="50%">
        <input type="texte" value="<%= rs("exp")%>" size="20" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" name="exp"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><b><font face="Verdana" size="1">Professor</font></b></td>
        <td width="50%">
        <input type="texte" value="<%= rs("professor")%>" size="20" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" name="professor"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><b><font face="Verdana" size="1">Dinheiro</font></b></td>
        <td width="50%">
        <input type="texte" value="<%= rs("dinheiro")%>" size="20" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" name="dinheiro"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><b><font face="Verdana" size="1">E-Mail</font></b></td>
        <td width="50%">
        <input type="texte" value="<%= rs("email")%>" size="20" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" name="email"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><b><font face="Verdana" size="1">Itens</font></b></td>
        <td width="50%">
      <font color="#FFFFFF" face="Tahoma" size="2">
        <textarea rows="10" name="Itens" cols="32" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" ><%=rs("itens")%></textarea></font></td>
      </tr>
      <tr>
        <td width="50%" align="right"><b><font face="Verdana" size="1">Cartas</font></b></td>
        <td width="50%">
      <font color="#FFFFFF" face="Tahoma" size="2">
        <textarea rows="10" name="cartas" cols="32" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" ><%= rs("cartas")%></textarea></font></td>
      </tr>
      <tr>
        <td width="50%" align="right"><b><font face="Verdana" size="1">
        Comentários</font></b></td>
        <td width="50%">
      <font color="#FFFFFF" face="Tahoma" size="2">
        <textarea rows="10" name="comentarios" cols="32" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" ><%= rs("comentarios")%></textarea></font></td>
      </tr>
      <tr>
        <td width="100%" colspan="2" align="center">
      <input type="submit" value="Atualizar" name="Submite" style="border:1px solid #000000; BACKGROUND-COLOR: #ffffff; COLOR: #000000; FONT-FAMILY: Verdana; FONT-SIZE: 8pt; bordcolor: #2C3B51"></td>
      </tr>
    </table>
    </form>
    </td>
  </tr>

  
  <tr>
    <td width="686" bgcolor="#FFFFFF" colspan="6" height="19" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-bottom-style: solid; border-bottom-width: 1">
    <p align="center"><b><font size="2" face="Verdana">Agora tem <%= Application("UsuariosAtuais")%> usuarios no site</font></b></td>
  </tr>
</table>

  </center>
</div>

</body>
<%
Conn.Close
Set Conn = nothing
%>

</html>