<!--#include file="global.asa"-->
<!--#include file="conn.asp"-->
<%	if Session("login") = False then
    response.redirect "login.asp?login=errado"
End if
%>
<% if session("auth") = false then
response.redirect "login.asp?senha=errada"
End if
%>
<% if session("nivel") =< 20 then
response.redirect "logado.asp?msg5=vc"
end if
%>

<%
AbreConexao
listar = "SELECT * FROM news ORDER BY id DESC"
Set lista = Conexao.Execute(listar)
%>
<%
if request("delete") = "news" then
AbreConexao
Dim nick,id,data,titulo,news,foto,comentarios
id = replace(request.form("id"), "'", "''")
nick = replace(request.form("nick"), "'", "''")
data = replace(request.form("data"), "'", "''")
titulo = replace(request.form("titulo"), "'", "''")
news = replace(request.form("news"), "'", "''")
foto = replace(request.form("foto"), "'", "''")
comentarios = replace(request.form("comentarios"), "'", "''")

deletar = "DELETE  nick,id,data,titulo,news,foto,comentarios FROM news WHERE id = " & id &""
Conexao.Execute(deletar)
FechaConexao
response.redirect "logado.asp?msg=Notícia+Deletada+com+Sucesso!!!"
end if
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
    <img border="0" src="banner_new.jpg" width="565" height="101"></td>
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
    <p align="center" style="margin-top: 0; margin-bottom: 0">
    <font face="Verdana" size="6">News</font><p align="center" style="margin-top: 0; margin-bottom: 0">&nbsp;<p align="center" style="margin-top: 0; margin-bottom: 0">       <select onchange="if (this[this.selectedIndex].value) { self.location=this[this.selectedIndex].value; }" name="combox" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
      <option selected>&lt;-------ESCOLHA-------&gt;</option>
      <option value="add_iten.asp">Adicionar Itens</option>
      <option value="Altera_dados.asp">Atualizar Luta</option>
      <option value="Postar_news.asp">Postar News</option>
      <option value="add_down.asp">Edição de Downloads</option>
      <option value="Admin_ops.asp">Administração de Ops</option>
      <option value="logado.asp?logout=now">Logout</option>
    </select><p align="center" style="margin-top: 0; margin-bottom: 0">&nbsp;<p align="center" style="margin-top: 0; margin-bottom: 0"><select onchange="if (this[this.selectedIndex].value) { self.location=this[this.selectedIndex].value; }" name="combox" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
      <option selected>&lt;------ESCOLHA------&gt;</option>
      <option value="del_news.asp">Remover news</option>
      <option value="postar_news.asp">Postar news</option>
    </select><p align="center" style="margin-top: 0; margin-bottom: 0">&nbsp;<p align="center" style="margin-top: 0; margin-bottom: 0">
    <%while NOT lista.EOF%> 
    <center>
    <table border="0" width="80%" id="AutoNumber2" align="center" height="22">
       <form method="post" action="../tcg/del_news.asp?delete=news" name="delete">
      <tr>
        <td width="50%" align="center" height="18"><font face="verdana" size="2"><%= lista("titulo")%> </td>
        <td width="50%" align="center" height="18">
        <input type="hidden" name="id" value="<%= lista("id")%>">
        <input type="hidden" name="data" value="<%= lista("data")%>">
        <input type="hidden" name="nick" value="<%= lista("nick")%>">
        <input type="hidden" name="titulo" value="<%= lista("titulo")%>">
        <input type="hidden" name="news" value="<%= lista("news")%>">
        <input type="hidden" name="foto" value="<%= lista("foto")%>">
        <input type="hidden" name="comentarios" value="<%= lista("comentarios")%>">
        <input type="submit" value="             Deletar             " name="delete" style="border:1px solid #000000; BACKGROUND-COLOR: #ffffff; COLOR: #000000; FONT-FAMILY: Verdana; FONT-SIZE: 8pt; bordcolor: #2C3B51; "></td>
      </tr>
      </form>
    </table>
   <% lista.MoveNext
Wend
lista.close
FechaConexao
Set lista = nothing %>
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