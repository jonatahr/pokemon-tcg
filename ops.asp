<!--#include file="global.asa"-->
<!--#include file="dataconn.asp"-->

<html>

<head>
<title>#TCG - BRASnet</title>
</head>

<body bgcolor="#ADADAD" link="#000000" vlink="#000000" alink="#000000">

<div align="center">
  <center>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="1" id="AutoNumber1" bgcolor="#FFF19F" height="1">
  <tr>
    <td bgcolor="#FFFFFF" width="686" height="1" colspan="6">
    <p align="center"><p align="center">
    <img border="0" src="banner_new.jpg" width="564" height="101"></td>
  </tr>
  <tr>
    <td bgcolor="#FFF19F" width="80" height="1">
    <a href="indexp.asp">
    <img border="0" src="inicio.bmp"></a></td>
    <td width="113" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="cadastro.asp"><img border="0" src="cadastro.bmp"></a></td>
    <td width="83" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="dados.asp"><img border="0" src="dados.bmp"></a></td>
    <td width="27" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="lojas.asp"><img border="0" src="loja.bmp"></a></td>
    <td width="26" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="login.asp"><img border="0" src="atualizar.bmp"></a></td>
    <td width="59" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="686" bgcolor="#FFFFFF" colspan="6" height="153" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1">
    <p align="center"><img border="0" src="operadores.bmp"></p>
    <table border=0 align="center" width="40%" align=center>
      <tr>
                   
                    <table border="0" align="center" width="54%" cellspacing="0" cellpadding="2">
                        <td width="45%" bgcolor="<%=bg%>"><font face="Verdana" size="2"><b>Nick</b></font></td>
                        <td width="26%" bgcolor="<%=bg%>"><font face="Verdana" size="2"><b>Nivel</b></font></td>
  <%
  sql = "SELECT login, email, nivel from atu order by nivel desc"
  Set rs = Server.CreateObject("ADODB.RecordSet")
  rs.Cachesize = 15
  rs.Open sql, Conn
  %>
  <%
  If rs.EOF or rs.BOF then
  response.write "<font face=Verdana size=1>Não há operadores cadastrados</font>"
  Else
  %>
                    <%
y = 1
x = 1
Do Until x = 101 or rs.BOF or rs.EOF

if y = 3 then
y = 1
end if

if y = 1 then
	bg = "#D8D8D8"
	else
	bg = "#C0C0C0"
end if
%>    
                      <tr>
                        <td width="45%" bgcolor="<%=bg%>"><a href="mailto:<%=rs("email").value%>"><font face="Verdana" size="1"><%=rs("login").value%></font></a></td>
                        <td width="26%" bgcolor="<%=bg%>"><font face="Verdana" size="1"><%=rs("nivel").value%></font></td>
                      </tr>
<%
x = x + 1
y = y + 1
rs.Movenext
Loop
End If
%>
                    </table>
                  </td>
                </tr>
  <tr>
    <td width="686" bgcolor="#FFFFFF" colspan="6" height="1" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-bottom-style:solid; border-bottom-width:1">
    <p align="center"><b><font size="2" face="Verdana">Agora tem <%= Application("UsuariosAtuais")%> usuarios no site</font></b></td>
  </tr>
</table>

                  </td>
                </tr>
              </table>    </table>
    </td>
  </tr>
  </table>

<tr>
<td width="686" bgcolor="#FFFFFF" colspan="6" height="19" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-bottom-style: solid; border-bottom-width: 1">

  </center>
</div>

</body>

</html>