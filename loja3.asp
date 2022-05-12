<!--#include file="dataconn.asp"-->
<%
Dim prod, dinheiro, itens_cad, itens

response.buffer = True
response.expires = -1000

set RS = Server.CreateObject("ADODB.recordset")
RS.Open "SELECT produto, preco from loja where id = "&Request.querystring("id")&" ", Conn
prod = rs("produto").value
dinheiro = Session("dinheiro_lj") - rs("preco").value
rs.Close

If dinheiro < "0" then
Conn.Close
response.redirect "loja2.asp?text=Você+não+têm+dinheiro+suficiente."
Else

rs.Open "SELECT itens from dados where nick = '"&(Session("nick_lj"))&"'"
itens_cad = rs("itens").value
rs.close

If Len(itens_cad) <> "0" then
itens = itens_cad & ", " & prod
Elseif Len(itens_cad) = "0" then
itens = prod
End If

rs.Open "UPDATE dados set dinheiro='"&(dinheiro)&"', itens='"&(itens)&"' where nick='"&(Session("nick_lj"))&"'"
Conn.Close
Session("dinheiro_lj") = dinheiro
response.redirect "loja2.asp?text=Produto+adicionado+aos+seus+itens."

End If
%>

<html>

<head>
<title>Comprando</title>
</head>

<body>

</body>

</html>