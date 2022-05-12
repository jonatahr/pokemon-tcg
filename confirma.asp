<!--#include file="conn.asp"-->
<%
response.buffer = true 
AbreConexao
listar = "SELECT * FROM dados ORDER BY id DESC"
Set lista = Conexao.Execute(listar)
%>

<html>

<head>
<title>#TCG - BRASnet</title>
</head>

<body bgcolor="#ADADAD" link="#000000" vlink="#000000" alink="#000000">

<div align="center">
  <center>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="526" id="AutoNumber1" bgcolor="#FFF19F" height="5">
  <tr>
    <td bgcolor="#FFFFFF" width="672" height="1" colspan="6">
    <p align="center"><p align="center">
    <img border="0" src="banner_new.jpg" width="565" height="100"></td>
  </tr>
  <tr>
    <td bgcolor="#FFF19F" width="80" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="indexp.asp">
    <img border="0" src="inicio.bmp"></a></td>
    <td width="102" height="1"><a href="cadastro.asp"><img border="0" src="cadastro.bmp"></a></td>
    <td width="94" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="dados.asp"><img border="0" src="dados.bmp"></a></td>
    <td width="27" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="lojas.asp"><img border="0" src="loja.bmp"></a></td>
    <td width="26" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="login.asp"><img border="0" src="atualizar.bmp"></a></td>
    <td width="45" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="672" bgcolor="#FFFFFF" colspan="6" height="95" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1">
    <p align="center"><img border="0" src="cadastre.bmp"></p>
    <p align="center"><b><font face="Verdana" size="2">Você Foi registrado com sucesso no #Tcg seus dados 
    são:</font></b></p>
     <div align="center">
       <center>
     <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="227" height="261" id="AutoNumber2">
      <tr>
        <td width="63" height="27"><b><font face="Verdana" size="1">Nome:</font></b></td>
        <td width="164" height="27"><%= lista("nome")%></td>
      </tr>
      <tr>
        <td width="63" height="26"><b><font face="Verdana" size="1">Nick:</font></b></td>
        <td width="164" height="26"><%= lista("nick")%></td>
      </tr>
      <tr>
        <td width="63" height="26"><b><font face="Verdana" size="1">Deck:</font></b></td>
        <td width="164" height="26"><%= lista("deck")%></td>
      </tr>
      <tr>
        <td width="63" height="27"><b><font face="Verdana" size="1">Experiencia:
        </font></b></td>
        <td width="164" height="27"><%= lista("exp")%></td>
      </tr>
      <tr>
        <td width="63" height="27"><b><font face="Verdana" size="1">Professor:</font></b></td>
        <td width="164" height="27"><%= lista("professor")%></td>
      </tr>
      <tr>
        <td width="63" height="38"><b><font face="Verdana" size="1">Dinheiro:</font></b></td>
        <td width="164" height="38"><%= lista("dinheiro")%></td>
      </tr>
      <tr>
        <td width="63" height="29"><b><font face="Verdana" size="1">E-Mail:</font></b></td>
        <td width="164" height="29"><%= lista("email")%></td>
      </tr>
      <tr>
        <td width="63" height="29"><b><font face="Verdana" size="1">Senha:</font></b></td>
        <td width="164" height="29"><%= lista("senha")%></td>
      </tr>
      <tr>
        <td width="63" height="27"><b><font face="Verdana" size="1">Login:</font></b></td>
        <td width="164" height="16"><%= lista("login")%></td>
      </tr>
      <% FechaConexao %>
    </table>
       </center>
    </div>
    <p align="center">&nbsp;</td>
  </tr>
  <tr>
    <td width="672" bgcolor="#FFFFFF" colspan="6" height="19" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-bottom-style: solid; border-bottom-width: 1">
    <p align="center"><b><font size="2" face="Verdana">Agora tem <%= Application("UsuariosAtuais")%> usuarios no site</font></b></td></tr></table></center></div></body></html>