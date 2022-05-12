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
if request("add") = "down" then
abreconexao
dim arquivo,tamanho,link,comentario

arquivo = replace(request.form("arquivo"), "'", "''")
tamanho = replace(request.form("tamanho"), "'", "''")
link = replace(request.form("link"), "'", "''")
comentario = replace(request.form("comentario"), "'", "''")

inserir = "INSERT INTO downloads (arquivo,tamanho,link,comentario) " & _
"VALUES ('" & arquivo & "','" & tamanho & "','" & link & "','" & comentario & "')"
Conexao.Execute(inserir)
response.redirect "logado.asp?msg=Download+Adicionado+com+Sucesso!!!!"
FechaConexao
end if
%>


<html>

<head>
<title>#TCG - BRASnet</title>
</head>

<body bgcolor="#ADADAD" link="#000000" vlink="#000000" alink="#000000">

<div align="center">
  <center>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="157" id="AutoNumber1" bgcolor="#FFF19F" height="4">
  <tr>
    <td bgcolor="#FFFFFF" width="686" height="1" colspan="6">
    <p align="center"><p align="center">
    <img border="0" src="banner_new.jpg" width="564" height="101"></td>
  </tr>
  <tr>
    <td bgcolor="#FFF19F" width="80" height="1" style="border-left-style: none; border-left-width: medium; border-right-style: none; border-right-width: medium; border-top-style: none; border-top-width: medium; border-bottom-style: solid; border-bottom-width: 1">
    <a href="indexp.asp">
    <img border="0" src="inicio.bmp"></a></td>
    <td width="113" height="1" style="border-bottom-style: solid; border-bottom-width: 1; border-left-style:none; border-left-width:medium; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium">
    <a href="cadastro.asp"><img border="0" src="cadastro.bmp"></a></td>
    <td width="83" height="1" style="border-bottom-style: solid; border-bottom-width: 1; border-left-style:none; border-left-width:medium; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium">
    <a href="dados.asp"><img border="0" src="dados.bmp"></a></td>
    <td width="53" height="1" style="border-bottom-style: solid; border-bottom-width: 1; border-left-style:none; border-left-width:medium; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium">
    <a href="lojas.asp"><img border="0" src="loja.bmp"></a></td>
    <td width="30" height="1" style="border-bottom-style: none; border-bottom-width: medium; border-left-style:none; border-left-width:medium">
    <a href="login.asp"><img border="0" src="atualizar.bmp"></a></td>
    <td width="29" height="1" style="border-bottom-style: none; border-bottom-width: medium">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="686" bgcolor="#FFFFFF" colspan="6" height="95" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1">
    <p align="center"><font face="Verdana" size="7">Downlaods</font></p>
    <p align="center">       <select onchange="if (this[this.selectedIndex].value) { self.location=this[this.selectedIndex].value; }" name="combox" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
      <option selected>&lt;-------ESCOLHA-------&gt;</option>
      <option value="add_iten.asp">Adicionar Itens</option>
      <option value="Altera_dados.asp">Atualizar Luta</option>
      <option value="Postar_news.asp">Postar News</option>
      <option value="add_down.asp">Edição de Downloads</option>
      <option value="Admin_ops.asp">Administração de Ops</option>
      <option value="logado.asp?logout=now">Logout</option>
    </select></p>
    <p align="center"><select onchange="if (this[this.selectedIndex].value) { self.location=this[this.selectedIndex].value; }" name="combox" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
      <option selected>&lt;-------ESCOLHA-------&gt;</option>
      <option value="del_down.asp">Remover Download</option>
      <option value="add_down.asp">Adicionar Download</option>
    </select></p>
    <p align="center"><% if request("nick") = "existe" then 
    response.write "<center>Este nick que você digitou ja existe</center>"
    end if
    %>
</p>
    <table border="0" style="border-collapse: collapse" wdith="80%" align="center" width="237">
      <tr>
      <form method="post" action="add_down.asp?add=down" name="add">
        <td width="91" align="right">
        <p align="left"><font face="Verdana" size="2">Arquivo</font></td>
        <td width="169">
        <input type="text" size="20" name="arquivo" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" size="20"></td>
      </tr>
      <tr>
        <td width="91" align="right">
        <p align="left"><font face="Verdana" size="2">Tamanho:</font></td>
        <td width="169">
        <input type="text" size="20" name="tamanho" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" size="20"></td>
      </tr>
      <tr>
        <td width="91" align="right">
        <p align="left"><font face="Verdana" size="2">Link:</font></td>
        <td width="169">
        <input type="text" size="20" name="link" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" size="20"></td>
      </tr>
      <tr>
        <td width="91" align="right">
        <p align="left"><font face="Verdana" size="2">Comentário:</font></td>
        <td width="169">
        <input type="text" size="20" name="comentario" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" size="20"></td>
      </tr>
      <tr>
        <td width="262" colspan="2" align="center">
        <input type="submit" value="Inserir" name="inserir" style="border:1px solid #000000; BACKGROUND-COLOR: #ffffff; COLOR: #000000; FONT-FAMILY: Verdana; FONT-SIZE: 8pt; bordcolor: #2C3B51; ">&nbsp;
        <input type="reset" value="Limpar" name="limpar" style="border:1px solid #000000; BACKGROUND-COLOR: #ffffff; COLOR: #000000; FONT-FAMILY: Verdana; FONT-SIZE: 8pt; bordcolor: #2C3B51; "><p>&nbsp;</td>
      </tr>
      </form>
    </table>
    </td>
  </tr>
  <tr>
    <td width="686" bgcolor="#FFFFFF" colspan="6" height="19" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-bottom-style: solid; border-bottom-width: 1">
    <p align="center"><b><font size="2" face="Verdana">Agora tem <%= Application("UsuariosAtuais")%> usuarios no site</font></b></td></tr></table></center></div></body></html>