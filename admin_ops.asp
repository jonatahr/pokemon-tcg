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
<% if session("nivel") =< 40 then
response.redirect "logado.asp?msg5=vc"
end if
%>

<%
if request("ad") = "op" then
abreconexao
dim email,login,senha,nivel
email = request.form("email")
login = request.form("login")
senha = request.form("senha")
nivel = request.form("nivel")

inserir = "INSERT INTO atu (email,login,senha,nivel) " & _
"VALUES ('" & email & "','" & login & "','" & senha & "','" & nivel & "')"
Conexao.Execute(inserir)
response.redirect "logado.asp?msg=Operador+Adicionado+com+Sucesso!!!!"
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

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="526" id="AutoNumber1" bgcolor="#FFF19F" height="4">
  <tr>
    <td bgcolor="#FFFFFF" width="686" height="1" colspan="6">
    <p align="center">
    <img border="0" src="banner_new.jpg" width="567" height="99"></td>
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
    <p align="center" style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
    <p align="center" style="margin-top: 0; margin-bottom: 0">
    <img border="0" src="operadores.bmp"></p>
    <p align="center" style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
    <p align="center" style="margin-top: 0; margin-bottom: 0">       <select onchange="if (this[this.selectedIndex].value) { self.location=this[this.selectedIndex].value; }" name="combox" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
      <option selected>&lt;-------ESCOLHA-------&gt;</option>
      <option value="add_iten.asp">Adicionar Itens</option>
      <option value="Altera_dados.asp">Atualizar Luta</option>
      <option value="Postar_news.asp">Postar News</option>
      <option value="add_down.asp">Edição de Downloads</option>
      <option value="Admin_ops.asp">Administração de Ops</option>
      <option value="logado.asp?logout=now">Logout</option>
    </select></p>
    <p align="center" style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
    <p align="center" style="margin-top: 0; margin-bottom: 0"><select onchange="if (this[this.selectedIndex].value) { self.location=this[this.selectedIndex].value; }" name="combox" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
      <option selected><-------ESCOLHA-------></option>
      <option value="del_ops.asp">Remover Ops</option>
      <option value="Admin_ops.asp">Adicionar Ops</option>
    </select></p>
    <p align="center" style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
    <table border="0" align="center" width="59%" id="AutoNumber2">
    <form method="post" action="admin_ops.asp?ad=op" name="ad">
      <tr>
        <td width="47%" align="right"><b><font face="Verdana">Operador:</font></b></td>
        <td width="53%">
      <font face="Arial" size="2">
    <input type=text name="login" value="" size=15 maxlength=50 style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1"
></td>
      </tr>
      <tr>
        <td width="47%" align="right"><b><font face="Verdana">E-Mail:</font></b></td>
        <td width="53%">
            <font face="Arial" size="2">
    <input type=text name="email" value="" size=15 maxlength=50 style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1"
></td>
      </tr>
      <tr>
        <td width="47%" align="right"><b><font face="Verdana">Senha:</font></b></td>
        <td width="53%">
      <font face="Arial" size="2">
    <input type=text name="senha" value="" size=15 maxlength=50 style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1"
></td>
      </tr>
      <tr>
        <td width="47%" align="right"><b><font face="Verdana">Nível:</font></b></td>
        <td width="53%">
      <font face="Arial" size="2">
    <input type=text name="nivel" value="" size=15 maxlength=50 style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1"
></td>
      </tr>
      <tr>
        <td width="100%" align="right" colspan="2">
        <p align="center">
  <font face="Verdana" size="2">
<input type="submit" name="submit" value="Cadastrar" style="border:1px solid #000000; BACKGROUND-COLOR: #ffffff; COLOR: #000000; FONT-FAMILY: Verdana; FONT-SIZE: 8pt; bordcolor: #2C3B51"></td>
      </tr>
      </form>
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