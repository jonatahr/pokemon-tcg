<!--#include file="global.asa"-->
<!--#include file="conn.asp"-->
<%
AbreConexao
SQL = "SELECT * FROM news ORDER BY id DESC"
Set rs = Conexao.Execute(SQL)
%>
<html>

<head>
<title>#TCG - BRASnet</title>
</head>

<body bgcolor="#ADADAD" link="#000000" vlink="#000000" alink="#000000" style="width: 0">

<div align="center">
  <center>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1" id="AutoNumber1" bgcolor="#FFF19F" height="4">
  <tr>
    <td bgcolor="#FFFFFF" width="686" height="1" colspan="5">
    <p align="center"><p align="center">
    <img border="0" src="banner_new.jpg" width="558" height="105"></td>
  </tr>
  <tr>
    <td bgcolor="#FFF19F" width="80" height="1">
    <a href="indexp.asp">
    <img border="0" src="inicio.bmp"></a></td>
    <td width="113" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="cadastro.asp"><img border="0" src="cadastro.bmp"></a></td>
    <td width="83" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="dados.asp"><img border="0" src="dados.bmp"></a></td>
    <td width="53" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="lojas.asp"><img border="0" src="loja.bmp"></a></td>
    <td width="59" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="login.asp"><img border="0" src="atualizar.bmp"></a></td>
  </tr>
  <tr>
    <td width="686" bgcolor="#FFFFFF" colspan="5" height="95" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1">
    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="102%" id="AutoNumber2" height="61">
      <tr>
        <td width="50%" height="43"><p align="left">
        <a href="ops.asp">
        <img border="0" src="operadores.bmp" width="278" height="77"></a>&nbsp;</td>
        <td width="50%" height="43">&nbsp;</td>
      </tr>
      <tr>
        <td width="50%" height="3"><font face="Verdana" size="2">Clicando em operadores, você ira descobrir 
        todos os operadores cadastrados, para não ser enganado por qualquer um, 
        quando estiver no canal batalhando.</font></td>
        <td width="50%" height="3"><font face="Verdana" size="2">Clique em&nbsp; Downloads para ver os 
        Downloads do #TCG como Addons&nbsp; Fservers jogos e várias outras 
        coisas entre.&nbsp; </font> </td>
      </tr>
      <tr>
        <td width="100%" height="5" colspan="2">
        <p align="center"><a href="ranking.asp">
        <img border="0" src="ranking.bmp"></a></td>
      </tr>
      <tr>
        <td width="100%" height="9" colspan="2">
        <p align="center"><font face="Verdana" size="2">Mostra Quem possui mais 
        experiência do canal</font></td>
      </tr>
    </table>
    <p align="center">&nbsp;<table border="0" align="center" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="76%" id="AutoNumber3">
      <tr>
        <td width="100%">
        <p align="center"><font face="Verdana" size="2">
        <img border="0" src="New.bmp"></font></td>
      </tr>
    </table>
    <table border="0" align="center" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="476" id="AutoNumber4" height="108">
      <tr>
        <td width="369" height="13"></td>
        <td width="1" height="13"></td>
      </tr>
      <tr>
        <td width="369" height="54">
        <table border="1" align="center" cellpadding="3" cellspacing="0" width="80%" bordercolorlight="#FFFFFF">
    <tr>
    <% While not rs.EOF %>
     <table border="0" align="center" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="160%" id="AutoNumber3" height="1">
                  <tr>
                    <td width="19%" height="1" rowspan="3"> 
                  <img border="0" src="<%= rs("foto")%>"></td>
                    <td width="81%" height="1">
      <font face="Verdana" size="1">
                  <a name="32279"> 
      <img src="tick-black.gif" width="7" height="7" hspace="2"><font face="Verdana">_<img src="news-assunto.gif" width="53" height="6"></font></a><font face="Verdana"> 
                    <%= rs("titulo")%></font></font></td>
                  </tr>
                  <tr>
                    <td width="81%" height="1">
      <font face="Verdana" size="1">
                  <a name="32279"> 
      <img src="tick-black.gif" width="7" height="7" hspace="2"></a>_<font face="Verdana"><a name="32279"><img src="news-por.gif" width="23" height="6"></a><%= rs("nick")%></font></font></td>
                  </tr>
                  <tr>
                    <td width="81%" height="1">
      <font face="Verdana" size="1">
                  <a name="32279"> 
      <img src="tick-black.gif" width="7" height="7" hspace="2"></a>_<a name="32279"><font face="Verdana"><img src="news-data.gif" width="31" height="6"></font></a><font face="Verdana"> 
      <%= rs("data")%></font></font></td>
                  </tr>
                </table>
                <table border="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="144%" id="AutoNumber2">
                  <tr>
                    <td width="100%">
                    <p align="center"><font face="Verdana" size="1"> <%= rs("comentarios")%></font></td>
                  </tr>
                  <tr>
                    <td width="100%">
                    <p align="center">
                  <a name="32279"> 
                <font face="Verdana" size="1"><b>
                ---------------------------------------------------------------------------------------------------------</b></font></td></font>
    </tr>
      </table>
  </center>
</div>
<% rs.MoveNext
Wend
rs.close
FechaConexao
Set rs = nothing %>
</font>
        </td>
  </tr>
        <td width="369" height="19">&nbsp;</td>
      </tr>
      </table>
    <p align="center">&nbsp;</td>
  </tr>
  <tr>
    <td width="686" bgcolor="#FFFFFF" colspan="5" height="19" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-bottom-style: solid; border-bottom-width: 1">
    <p align="center"><b><font size="2" face="Verdana">Agora tem <%= Application("UsuariosAtuais")%> usuarios no site</font></b></td>
  </tr>
</table>

  </center>
</div>

</body>

</html>