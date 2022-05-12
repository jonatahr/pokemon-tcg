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
if request("postar") = "now" then
abreconexao
dim data,titulo,news,nick,foto,comentarios
data = request.form("data")
titulo = request.form("titulo")
foto = request.form("foto")
news = request.form("news")
nick = session("login")
comentarios = request.form("comentarios")

inserir = "INSERT INTO news (data,titulo,news,nick,foto,comentarios) " & _
"VALUES ('" & data & "','" & titulo & "','" & news & "','" & nick & "','" & foto & "','" & comentarios & "')"
Conexao.Execute(inserir)
response.redirect "logado.asp?msg=Notícia+Postada+com+Sucesso!!!!"
FechaConexao
end if
%>
<html>

<head>
<meta http-equiv="Content-Language" content="pt-br">

<title>#TCG - BRASnet</title>
</head>

<body bgcolor="#ADADAD" link="#000000" vlink="#000000" alink="#000000">

<div align="center">
  <center>

<table border="0" style="border-collapse: collapse" bordercolor="#111111" width="492" id="AutoNumber1" bgcolor="#FFF19F" height="85">
  <tr>
    <td bgcolor="#FFFFFF" width="686" height="85" colspan="6">
    <p align="center"><p align="center">
    <img border="0" src="banner_new.jpg" width="574" height="107"></td>
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
    <td width="33" height="1">
    <a href="login.asp"><img border="0" src="atualizar.bmp"></a></td>
    <td width="29" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="686" bgcolor="#FFFFFF" colspan="6" height="95" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1">
    <p align="center"><font size="7" face="Verdana">Postar news</font></p>
    <p align="center">       <select onchange="if (this[this.selectedIndex].value) { self.location=this[this.selectedIndex].value; }" name="combox" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
      <option selected>&lt;-------ESCOLHA-------&gt;</option>
      <option value="add_iten.asp">Adicionar Itens</option>
      <option value="Altera_dados.asp">Atualizar Luta</option>
      <option value="Postar_news.asp">Postar News</option>
      <option value="add_down.asp">Edição de Downloads</option>
      <option value="Admin_ops.asp">Administração de Ops</option>
      <option value="logado.asp?logout=now">Logout</option>
    </select></p>
    <p align="center">&nbsp;<select onchange="if (this[this.selectedIndex].value) { self.location=this[this.selectedIndex].value; }" name="combox" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
      <option selected>&lt;------ESCOLHA------&gt;</option>
      <option value="del_news.asp">Remover news</option>
      <option value="postar_news.asp">Postar news</option>
    </select></p>
    <p align="center">&nbsp;</p>
        <table border="0" style="border-collapse: collapse" width="35%" align="center" height="60">
        <form method="post" action="postar_news.asp?postar=now" name="postar">
                  <input type="hidden" name="data" value="<%= date%>">
          </tr>
      <tr>
        <td width="50%" height="19" align="center">
        <b><font face="Verdana">Título:</font></b></td>
        <td width="50%" height="19" align="center">
        <font face="Arial" size="2">
    <input type=text name="titulo" value="" size=29 maxlength=50 style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1"
></td>
      </tr>
      <tr>
        <td width="50%" height="19" align="center">
        <b><font face="Verdana">Foto:</font></b></td>
        <td width="50%" height="19" align="center">
        <font face="Arial" size="2">
    <input type=text name="foto" value="" size=29 maxlength=50 style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1"
></td>
      </tr>
      <tr>
        <td width="50%" height="19" align="center">
        <b><font face="Verdana">Comentários:</font></b></td>
        <td width="50%" height="19" align="center">
        <font color="#FFFFFF" face="Tahoma" size="2">
        <textarea rows="10" name="comentarios" cols="32" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" ></textarea></font></td>
      </tr>
      <tr>
        <td width="100%" height="19" align="right" colspan="2">
        <p align="center">
        <input type="submit" value="Postar" name="postar" style="border:1px solid #000000; BACKGROUND-COLOR: #ffffff; COLOR: #000000; FONT-FAMILY: Verdana; FONT-SIZE: 8pt; bordcolor: #2C3B51; ">
        <input type="reset" value="Limpar" name="limpar" style="border:1px solid #000000; BACKGROUND-COLOR: #ffffff; COLOR: #000000; FONT-FAMILY: Verdana; FONT-SIZE: 8pt; bordcolor: #2C3B51; "></td>
      </tr>
      </form>
    </table>
    </td>
  </tr>
  <tr>
    <td width="686" bgcolor="#FFFFFF" colspan="6" height="19" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-bottom-style: solid; border-bottom-width: 1">
    <p align="center"><b><font size="2" face="Verdana">Agora tem <%= Application("UsuariosAtuais")%> usuarios no site</font></b></td></tr></table></center></div></body></html>