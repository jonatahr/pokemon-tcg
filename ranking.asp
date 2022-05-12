<!--#include file="dataconn.asp"-->
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
    <p align="center"><p align="center">
    <img border="0" src="banner_new.jpg" width="563" height="104"></td>
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
    <td width="30" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="login.asp"><img border="0" src="atualizar.bmp"></a></td>
    <td width="29" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="686" bgcolor="#FFFFFF" colspan="6" height="95" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1">
    <table border="0" style="border-collapse: collapse" width="54%" align="center">
      
       
      
       <tr>
        <table border="0" width="51%" align="center" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="100%">
                  <p align="center"><img border="0" src="ranking.bmp"></td>
                </tr>
                <tr>
                  <td width="100%">&nbsp;
              
                    <table border="0" width="337" cellspacing="0" cellpadding="2">
                      <tr>
                        <td width="28" bgcolor="<%=bg%>">
                          <p align="center"><font face="Verdana" size="2"><b>#</b></font></p>
                        </td>
                        <td width="108" bgcolor="<%=bg%>"><font face="Verdana" size="2"><b>Nick</b></font></td>
                        <td width="99" bgcolor="<%=bg%>"><b>
                        <font face="Verdana" size="2">Deck</font></b></td>
                        <td width="85" bgcolor="<%=bg%>"><b>
                        <font face="Verdana" size="2">Experiência</font></b></td>
                      </tr>
  <%
  sql = "SELECT top 50 nick, exp, deck from dados order by exp desc"
  Set rs = Server.CreateObject("ADODB.RecordSet")
  rs.Cachesize = 50
  rs.Open sql, Conn
  %>
  <%
  If rs.EOF or rs.BOF then
  response.write "<font face=Verdana size=1>Não há lutadores cadastrados</font>"
  Else
  %>
                    <%
y = 1
x = 1
Do Until x = 51 or rs.BOF or rs.EOF

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
                        <td width="28" bgcolor="<%=bg%>">
                          <p align="center"><font face="Verdana" size="1"><%=x%></font></td>
                        <td width="108" bgcolor="<%=bg%>"><a href="dados2.asp?nick=<%=rs("nick").value%>"><font face="Verdana" size="1"><%=rs("nick").value%></font></a></td>
                        <td width="99" bgcolor="<%=bg%>"><font face="Verdana" size="1"><%=rs("deck").value%></font></td>
                        <td width="85" bgcolor="<%=bg%>"><font face="Verdana" size="1"><%=rs("exp").value%></font></td>
                      </tr>
                      <%
x = x + 1
y = y + 1
rs.Movenext
Loop
end if
%>
</table>
</table>
  <tr>
    <td width="686" bgcolor="#FFFFFF" colspan="6" height="19" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-bottom-style: solid; border-bottom-width: 1">
    <p align="center"><b><font size="2" face="Verdana">Agora tem <%= Application("UsuariosAtuais")%> usuarios no site</font></b></td>
  </tr>
</table>

  </center>
</div>

</div>

</body>

</html>