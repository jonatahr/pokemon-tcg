<!--#include file="global.asa"-->
<html>

<head>
<title>#TCG - BRASnet</title>
</head>

<body bgcolor="#ADADAD" link="#000000" vlink="#000000" alink="#000000">

<div align="center">
  <center>

<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="526" id="AutoNumber1" bgcolor="#FFF19F" height="1">
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
    <td width="53" height="1" style="border-bottom-style: none; border-bottom-width: medium; border-left-style:none; border-left-width:medium">
    <a href="lojas.asp" style="text-decoration: none"><img border="0" src="loja.bmp"></a></td>
    <td width="30" height="1" style="border-bottom-style: solid; border-bottom-width: 1">
    <a href="login.asp" style="text-decoration: none"><img border="0" src="atualizar.bmp"></a></td>
    <td width="29" height="1">
    &nbsp;</td>
  </tr>
  <tr>
    <td width="686" bgcolor="#FFFFFF" colspan="6" height="1" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1">
    <tr>
    <td width="686" bgcolor="#FFFFFF" colspan="6" height="95" style="border-left-style: solid; border-left-width: 1; border-right-style: solid; border-right-width: 1">
    <p align="center">&nbsp;<font face="Verdana" size="7"> </font>
    <img border="0" src="loje.bmp"></p>
  <center><p><b><font face="Verdana" size="3"><%=request.querystring("msg")%></font></p></b></center>
    <table border="0" width="13%" align="center" id="AutoNumber2">
    <form method="POST" action="login_loja2.asp">
      <tr>
        <td width="50%" align="right"><font face="Verdana">Login</font></td>
        <td width="50%">
       
        <input type="text" name="nick_lj" size="20" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" size="20" value="<%=request.cookies("nick_lj")%>"></td>
      </tr>
      <tr>
        <td width="50%" align="right"><font face="Verdana">Senha</font></td>
        <td width="50%">
       
        <input type="password" name="senha_lj" size="20" style="color: #000000; font-family: Verdana; font-size: 8 pt; border: 1px solid #009933; padding-left: 4; padding-right: 4; padding-top: 1; padding-bottom: 1" size="20" value="<%=request.cookies("senha_lj")%>"></td>
      </tr>
      <tr>
        <td width="100%" colspan="2">
        <p align="center">
        <input type="submit" value="Submeter" name="logar" style="border:1px solid #000000; BACKGROUND-COLOR: #ffffff; COLOR: #000000; FONT-FAMILY: Verdana; FONT-SIZE: 8pt; bordcolor: #2C3B51; "></td>
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