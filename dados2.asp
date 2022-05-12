<!--#include file="global.asa"-->
<!--#include file="dataconn.asp"-->
<html>

<head>
<title>#TCG - BRASnet</title>
</head>

<body bgcolor="#ADADAD" link="#000000" vlink="#000000" alink="#000000">

<div align="center">
  <center>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="440" id="AutoNumber1" bgcolor="#FFF19F" height="4">
  <tr>
    <td bgcolor="#FFFFFF" width="688" height="1" colspan="5">
    <p align="center">
    <img border="0" src="banner_new.jpg" width="567" height="99"></td>
  </tr>
  <tr>
    <td bgcolor="#FFF19F" width="80" height="1" style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium; border-top-style: none; border-top-width: medium; border-bottom-style: solid; border-bottom-width: 1">
    <a href="indexp.asp">
    <img border="0" src="inicio.bmp"></a></td>
    <td width="113" height="1" style="border-bottom-style: solid; border-bottom-width: 1; border-left-style:none; border-left-width:medium; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium">
    <a href="cadastro.asp"><img border="0" src="cadastro.bmp"></a></td>
    <td width="83" height="1" style="border-left-style:none; border-left-width:medium">
    <a href="dados.asp"><img border="0" src="dados.bmp"></a></td>
    <td width="53" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="lojas.asp"><img border="0" src="loja.bmp"></a></td>
    <td width="61" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="login.asp"><img border="0" src="atualizar.bmp"></a></td>
  </tr>
  <tr>
    <td width="688" bgcolor="#FFFFFF" colspan="5" height="95" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1">
    <p align="center">  
    <table border="0" width="529" cellspacing="0" cellpadding="0">
    <tr>
      <td width="615" valign="top">
      <p align="center">&nbsp;</td>
    </tr>
    <tr>
      <td width="615" valign="top">
      <div align="right" style="width: 564; height: 226">
        <table border="0" align="center" width="99%" cellspacing="0" cellpadding="0">
          <tr>
            <td width="100%" valign="top">            
              &nbsp;
              <div align="center">
                <center>            
                <%
                sql = "SELECT nick, nome, deck, professor, dinheiro, email, itens, cartas, comentarios, exp from dados where nick = '"&request.querystring("nick")&"'"
                set rs = conn.execute(sql)
                %>
                <%
                If rs.EOF or rs.BOF then
                response.write "<font face=verdana size=1>Nick não encontrado.</font>"
                Else
                %>
              <center><table border="0" width="85%" align="center" cellspacing="0" cellpadding="2" height="155">
                <tr>
                  <td width="100%" colspan="2" height="18">
                  <p align="center"><b><font face="Verdana">Dados De: <%=rs("nick").value%></font></b></td>
                </tr>
                <tr>
                  <td width="29%" height="12"><b><font face="Verdana" size="1">
                  Nome</font></b></td>
                  <td width="71%" height="12"><font face="Verdana" size="1"><%=rs("nome").value%></font></td>
                </tr>
                <tr>
                  <td width="29%" height="12"><b><font face="Verdana" size="1">
                  Deck</font></b></td>
                  <td width="71%" height="12"><font face="Verdana" size="1"><%=rs("deck").value%></font></td>
                </tr>
                <tr>
                  <td width="29%" height="12"><b><font face="Verdana" size="1">
                  Professor</font></b></td>
                  <td width="71%" height="12"><font face="Verdana" size="1"><%=rs("professor").value%></font></td>
                </tr>
                <tr>
                  <td width="29%" height="12"><b><font face="Verdana" size="1">
                  Dinheiro</font></b></td>
                  <td width="71%" height="12"><font face="Verdana" size="1"><%=rs("dinheiro").value%></font></td>
                </tr>
                <tr>
                  <td width="29%" height="12"><b><font face="Verdana" size="1">
                  Experiência</font></b></td>
                  <td width="71%" height="12"><font face="Verdana" size="1"><%=rs("exp").value%></font></td>
                </tr>
                <tr>
                  <td width="29%" height="12"><b><font face="Verdana" size="1">
                  Itens</font></b></td>
                  <td width="71%" height="12"><font face="Verdana" size="1"><%=rs("itens").value%></font></td>
                </tr>
                <tr>
                  <td width="29%" height="12"><b><font face="Verdana" size="1">
                  E-Mail</font></b></td>
                  <td width="71%" height="12"><font face="Verdana" size="1"><%=rs("email").value%></font></td>
                </tr>
                <tr>
                  <td width="29%" height="17"><b><font face="Verdana" size="1">
                  Cartas</font></b></td>
                  <td width="71%" height="17"><font face="Verdana" size="1"><%=rs("cartas").value%></font></td>
                </tr>
                <tr>
                  <td width="29%" height="12"><b><font face="Verdana" size="1">
                  Comentários</font></b></td>
                  <td width="71%" height="12"><font face="Verdana" size="1"><%=rs("comentarios").value%></font></td>
                </tr>
              </table>
              <%End If%>
                </center>
              </div>
              </center>
          </tr>
  <center>
  </center>
      </table></center> </p>
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

</html>