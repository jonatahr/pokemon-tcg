
<%
response.buffer = True
Response.Expires = -1000
If Session("logged_lj") <> "true" then
response.redirect "lojas.asp?msg=Login+inválido,+tente+novamente."
End If
%>
<% if request("logout") = "now" then
Session.Abandon 
response.redirect("lojas.asp?msg=Logout+Efetuado+com+Sucesso")
end if
%>

<!--#include file="dataconn.asp"-->
<!--#include file="global.asa"-->

<html>

<head>
<title>#TCG - BRASnet</title>
</head>

<body bgcolor="#ADADAD" link="#000000" vlink="#000000" alink="#000000">

<div align="center">
  <center>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="526" id="AutoNumber1" bgcolor="#FFF19F" height="3">
  <tr>
    <td bgcolor="#FFFFFF" width="686" height="1" colspan="6">
    <p align="center">
    <img border="0" src="banner_new.jpg" width="567" height="99"></td>
  </tr>
  <tr>
    <td bgcolor="#FFFF00" width="80" height="1" style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium; border-top-style: none; border-top-width: medium; border-bottom-style: solid; border-bottom-width: 1">
    <a href="indexp.asp">
    <img border="0" src="inicio.bmp"></a></td>
    <td width="113" height="1" style="border-bottom-style: solid; border-bottom-width: 1; border-left-style:none; border-left-width:medium; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium" bgcolor="#FFFF00">
    <a href="cadastro.asp"><img border="0" src="cadastro.bmp"></a></td>
    <td width="83" height="1" style="border-bottom-style: solid; border-bottom-width: 1; border-left-style:none; border-left-width:medium; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium" bgcolor="#FFFF00">
    <a href="dados.asp"><img border="0" src="dados.bmp"></a></td>
    <td width="53" height="1" style="border-style:none; border-width:medium; ">
    <a href="lojas.asp"><img border="0" src="loja.bmp"></a></td>
    <td width="30" height="1" style="border-bottom-style: solid; border-bottom-width: 1; border-left-style:none; border-left-width:medium; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium">
    <a href="login.asp"><img border="0" src="atualizar.bmp"></a></td>
    <td width="29" height="1" style="border-left-style:none; border-left-width:medium">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="686" bgcolor="#FFFFFF" colspan="6" height="95" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1">
    <p align="center">
    <table border="0" width="100%" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="100%" colspan="2">
                  <p align="center"><img border="0" src="loje.bmp"></td>
                </tr>
                <tr>
                  <td width="77%"><font face="Verdana"><b>Nick: <%=Session("nick_lj")%></b></font></td>
                  <td width="23%">
                    <p align="center"><font face="Verdana"><b>
                    <a href="loja2.asp?logout=now">Logout</a></b></font></td>
                </tr>
                <tr>
                  <td width="100%" colspan="2"><font face="Verdana"><b>Dinheiro:&nbsp;<%=Session("dinheiro_lj")%></b></font></td>
                </tr>
              </table>
</p>
    <table border="0" width="100%" align="center">
    <tr>
            <td width="100%" valign="top">
              <p align="center">
              <font face=verdana size=1 color=orange><b><%=request.querystring("text")%></b></font>
              <div align="center">
                <center>
              <table border="0" width="95%" bgcolor="#E37A20" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="100%" align="center" colspan="4" bgcolor="#FFFFFF">
                    <p align="left"><font face="Verdana">Bem vindo à 
                    loja. do #tcg_pokemon. Veja a
              lista de itens abaixo. Clique no nome do produto para comprá-lo.</font></td>
                </tr>
  <center>
                <tr>
                  <td width="25%" align="center" bgcolor="#FFF19F"><b>
                  <font face="Verdana"><a href="loja2.asp?q=1">Cartas</a></font></b></td>
                  <td width="25%" align="center" bgcolor="#FFF19F"><b>
                  <font face="Verdana"><a href="loja2.asp?q=2">Busters</a></font></b></td>
                  <td width="25%" align="center" bgcolor="#FFF19F"><b>
                  <font face="Verdana"><a href="loja2.asp?q=3">Decks</a></font></b></td>
                  <td width="25%" align="center" bgcolor="#FFF19F"><b>
                  <font face="Verdana"><a href="loja2.asp?q=4">Moedas</a></font></b></td>
                </tr>
              </table>
                </center>
                </div>
              &nbsp;
              <%
              
              If request.querystring("q") = "1" then
              sql = "SELECT * from loja where tipo='cartas' order by produto"
              Elseif request.querystring("q") = "2" then
              sql = "SELECT * from loja where tipo='busters' order by produto"
              Elseif request.querystring("q") = "3" then
              sql = "SELECT * from loja where tipo='decks' order by produto"
              Elseif request.querystring("q") = "4" then
              sql = "SELECT * from loja where tipo='moedas' order by produto"
              Else
              sql = "SELECT top 5 * from loja order by preco desc"
              End If
              
              set rs = server.createobject("adodb.recordset")
              rs.cachesize = 10
              rs.open sql, conn
              %>
              <%
              Do until rs.BOF or rs.EOF
              %>
              <div align="center">
                <center>
              <table border="0" width="93%" cellspacing="0" cellpadding="0" height="40">
                <tr>
                  <td width="50%" height="20"><font face="Verdana" size="2"><b><%=rs("produto").value%></b></font></a></td>
                  <td width="50%" height="20"><font face="Verdana" size="2"><b>Preço:</b> <%=rs("preco").value%></font></td>
                </tr>
                <tr>
                  <td width="100%" colspan="2" height="20"><p><font face="Verdana" size="1"><%=rs("descricao").value%></font></p>
  </center>
                    <p align="right"><a href="loja3.asp?id=<%=rs("id").value%>">
                    <img border="0" src="comprar.jpg"></p></a></td>
                </tr>
              </table>
              </center>
            </div>
  <center>
              <hr width="85%" size="1" color="#DFDFDE">
              <%
              rs.Movenext
              Loop
              %>

              </center>

            </td>
          </tr>
</table>
    
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