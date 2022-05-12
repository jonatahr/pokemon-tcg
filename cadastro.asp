<!--#include file="conn.asp"-->
<% response.buffer = true %>
<%
AbreConexao
listar = "SELECT * FROM atu ORDER BY id DESC"
Set rs = Conexao.Execute(listar)
%>
<%
if request("cadastro") = "new" then
AbreConexao
Dim nome,nick,deck,professor,dinheiro,email,itens,cartas,comentarios,senha,login,exp
nome = replace(request.form("nome"), "'", "''")
nick = replace(request.form("nick"), "'", "''")
deck = replace(request.form("deck"), "'", "''")
professor = replace(request.form("professor"), "'", "''")
dinheiro = replace(request.form("dinheiro"), "'", "''")
email = replace(request.form("email"), "'", "''")
itens = replace(request.form("itens"), "'", "''")
cartas = replace(request.form("cartas"), "'", "''")
comentarios = replace(request.form("comentarios"), "'", "''")
senha = replace(request.form("senha"), "'", "''")
login = replace(request.form("nick"), "'", "''")
exp = replace(request.form("exp"), "'", "''")


sql = "select id from dados where nick = '"& request.form("nick") &"' or senha = '"& request.form("senha") &"'"
set rs = conexao.execute(sql)
if rs.eof = false then
response.redirect "cadastro.asp?nick=existe"
else
inserir = "INSERT INTO dados (nome,nick,deck,professor,dinheiro,email,itens,cartas,comentarios,senha,login,exp) " & _
"VALUES ('" & nome & "','" & nick & "','" & deck & "','" & professor & "','" & dinheiro & "','" & email & "','" & itens & "','" & cartas & "','" & comentarios & "','" & senha & "','" & login & "','" & exp & "')"
Conexao.Execute(inserir)
End If
response.redirect "confirma.asp"
FechaConexao
end if
%>

<html>

<head>

<html>

<title>#TCG - BRASnet</title>
</head>

<body bgcolor="#ADADAD" link="#000000" vlink="#000000" alink="#000000">

<div align="center">
  <center>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="443" id="AutoNumber1" bgcolor="#FFF19F" height="5">
  <tr>
    <td bgcolor="#FFF19F" width="673" height="1" colspan="6">
    <p align="center">
    <img border="0" src="banner_new.jpg" width="561" height="105"></td>
  </tr>
  <tr>
    <td bgcolor="#FFF19F" width="80" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="indexp.asp">
    <img border="0" src="inicio.bmp"></a></td>
    <td width="113" height="1" style="border-bottom-style: none; border-bottom-width: medium">
    <a href="cadastro.asp"><img border="0" src="cadastro.bmp"></a></td>
    <td width="83" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="dados.asp"><img border="0" src="dados.bmp"></a></td>
    <td width="53" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="lojas.asp"><img border="0" src="loja.bmp"></a></td>
    <td width="23" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="login.asp"><img border="0" src="atualizar.bmp"></a></td>
    <td width="23" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    </td>
  </tr>
  <tr>
    <td width="673" bgcolor="#FFFFFF" colspan="6" height="95" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1">
    <p align="left" style="margin-top: 0; margin-bottom: 0">
    <img border="0" src="cadastre.bmp"></p>
    <p align="left" style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
    <table border="0" align="center" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="94%" id="AutoNumber2" height="140">
      <tr>
        <td width="50%" rowspan="2" height="140"><b>
        <font face="Verdana" size="2">Aqui você cadastrará no canal de Mirc #TCG
        isso irá proporciona-lhe de jogar os jagas de cartas de pokemon no #TCG 
        para saber mais se cadastre e pessa a um op do canal o faq. (isso o 
        ensinará a jogar)</font></b><p style="margin-top: 0; margin-bottom: 0">
        <b><font face="Verdana" size="2">Para poder entrar neste canal pegue um 
        script ou acesse alguma página que tenha o chat online obrigado pela 
        colaboração e divirtasse.</font></b><p style="margin-top: 0; margin-bottom: 0">&nbsp;<p style="margin-top: 0; margin-bottom: 0">
        <b><font face="Verdana" size="2">Equipe #TCG</font></b></td>
        <td width="50%" height="170"><img border="0" src="charmleon.gif"></td>
      </tr>
      <tr>
        <td width="50%" height="1"></td>
      </tr>
    </table>
    <% if request("nick") = "existe" then 
    response.write "<center>Este nick que você digitou ja existe</center>"
    end if
    %>

    <p align="center" style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
    <div align="center">
     <center><font face="Arial" size="4"></h2></center>


  </font>
     <font face="Verdana" size="4">

<form method=post action="cadastro.asp?cadastro=new">
<table border=0 width="80%" align=center>
  <tr>
    <td align=right valign=top><b><font size="2">N</font></font><font face="Verdana" size="2">ome:</font></b></td>
    <td align=left valign=top>
      <font face="Arial" size="2">
  <input type=text name="nome" value="" size=15 maxlength=50 style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1"></td>
  </tr>
  <tr>
    <td align=right valign=top><b><font face="Verdana" size="2">Nick:</font></b></td>
    <td align=left valign=top>
      <font face="Arial" size="2">
    <input type=text name="nick" value="" size=15 maxlength=50 style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1"
>    </td>
  </tr>
  </font>
  <font face="Verdana" size="2">
  <tr>
    <td align=right valign=top><b>D</font>eck:</b></font></td>
  <font face="Verdana" size="2">
    <td align=left valign=top>
      <font color="#FFFFFF" face="Tahoma">
        <select size="1" name="deck" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1"
>
            <option>Bulbasaur e Amigos</option>
            <option>Charmander e Amigos</option>
            <option>Squirtle e Amigos</option>
          </select></font><font face="Arial" size="2">
    
  </tr>
  <font face="Verdana">
  <tr>
    <td align=right valign=top><b>P</font></b></font><font face="Verdana" size="2"><b><font face="Verdana">rofessor:</font></b></td>
    <td align=left valign=top>
      <font color="#FFFFFF" face="Tahoma">
        <select size="1" name="professor" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
        <%While not rs.EOF%>
        <option>
        <%= rs("login")%>
        </option>
       <% rs.MoveNext
        Wend
        rs.close
        Set rs = nothing
        %>

          </select></font><font face="Arial" size="2">
    
  </tr>
  <font face="Verdana">
  <tr>
    <td align=right valign=top><b>E</b></font><font face="Verdana" size="2"><b><font face="Verdana">-Mail:</font></b></td>
    <td align=left valign=top>
      <font face="Arial" size="2">
    <input type="text" name="email" value="" size=15 maxlength=50 style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">    </td>
  </tr>
  <font face="Verdana">
  <tr>
    <td align=right valign=top><b>S</font></b></font><font face="Verdana" size="2"><b><font face="Verdana">enha:</font></b></td>
    <td align=left valign=top>
      <font face="Arial" size="2">
    <input type="text" name="senha" value="" size=15 maxlength=50 style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1">
    <input type="hidden" name="cartas" value="n/a">
    <input type="hidden" name="comentarios" value="n/a">
    <input type="hidden" name="login" value=" <% request.form("nick")%> ">
    <input type="hidden" name="dinheiro" value="20">
    <input type="hidden" name="itens" value="<%=request.form("deck")%>">
    <input type="hidden" name="exp" value="5">
    </td>
  </tr>
  </font>
  </font>
  </font>
  </font>
  </table>
<center>
<input type="submit" name="submit" value="Cadastrar" style="border:1px solid #000000; BACKGROUND-COLOR: #ffffff; COLOR: #000000; FONT-FAMILY: Verdana; FONT-SIZE: 8pt; bordcolor: #2C3B51"></center>
</form>


</body>
</html>      </center>
    </div>
    <p align="center" style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
    <p align="center" style="margin-top: 0; margin-bottom: 0">&nbsp;</p>
    </td>
  </tr>
  <tr>
    <td width="673" bgcolor="#FFFFFF" colspan="6" height="19" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1; border-bottom-style: solid; border-bottom-width: 1">
    <p align="center"><b><font size="2" face="Verdana">Agora tem <%= Application("UsuariosAtuais")%> usuarios no site</font></b></td>
  </tr>
</table>

  </center>
</div>

</body>

</html>