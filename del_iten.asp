<!--#include file="conn.asp"-->
<%
response.buffer = True
Response.Expires = -1000
     if Session("login") = False then
response.redirect "login.asp?login=errado"
end if
%>
<%
if session("nivel") =< 20 then
response.redirect "logado.asp?msg5=vc"
end if
%>
<%
If request("del") = "iten" then
AbreConexao
Dim id,produto,descricao,tipo,preco
id = replace(request.form("id"), "'", "''")
tipo = replace(request.form("tipo"), "'", "''")
preco = replace(request.form("preco"), "'", "''")
descricao = replace(request.form("descricao"), "'", "''")
produto = replace(request.form("produto"), "'", "''")

deletar = "DELETE  id,preco,produto,descricao,tipo FROM loja WHERE id = " & id &""
Conexao.Execute(deletar)
FechaConexao
response.redirect "logado.asp?msg=Item+Deletado+com+Sucesso!!!!"
end if
%>
<%
AbreConexao
listar = "SELECT produto,preco,id,tipo,descricao FROM loja ORDER BY id DESC"
Set lista = Conexao.Execute(listar)
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
    <font face="Verdana" size="7">Itens</font><p align="center" style="margin-top: 0; margin-bottom: 0">&nbsp;<p align="center" style="margin-top: 0; margin-bottom: 0">       <select onchange="if (this[this.selectedIndex].value) { self.location=this[this.selectedIndex].value; }" name="combox" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
      <option selected>&lt;-------ESCOLHA-------&gt;</option>
      <option value="add_iten.asp">Adicionar Itens</option>
      <option value="Altera_dados.asp">Atualizar Luta</option>
      <option value="Postar_news.asp">Postar News</option>
      <option value="add_down.asp">Edição de Downloads</option>
      <option value="Admin_ops.asp">Administração de Ops</option>
      <option value="logado.asp?logout=now">Logout</option>
    </select><p align="center" style="margin-top: 0; margin-bottom: 0">&nbsp;<p align="center" style="margin-top: 0; margin-bottom: 0"><select onchange="if (this[this.selectedIndex].value) { self.location=this[this.selectedIndex].value; }" name="combox" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
      <option selected>&lt;-------ESCOLHA-------&gt;</option>
      <option value="del_iten.asp">Remover Itens</option>
      <option value="add_iten.asp">Adicionar Itens</option>
    </select><p align="center" style="margin-top: 0; margin-bottom: 0">&nbsp;<p align="center" style="margin-top: 0; margin-bottom: 0">
    <%while NOT lista.EOF%>
    </font>  
    <center>
    <table border="0" width="80%" id="AutoNumber2" align="center" height="22">
       <form method="post" action="del_iten.asp?del=iten" name="delete">
      <tr>
        <td width="50%" align="center" height="18"><p><font face="verdana" size="2"><%= lista("produto")%> </td></p>
        <td width="50%" align="center" height="18">
        <input type="hidden" name="id" value="<%= lista("id")%>">
        <input type="hidden" name="arquivo" value="<%= lista("tipo")%>">
        <input type="hidden" name="tamanho" value="<%= lista("descricao")%>">
        <input type="hidden" name="link" value="<%= lista("preco")%>">
    
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