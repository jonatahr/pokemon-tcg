<!--#include file="dataconn.asp"-->
<%
Set rs = Server.CreateObject("ADODB.RecordSet")
sql = "DELETE * FROM dados WHERE nick = '"&Request("nick")&"'"
RS.Open sql, Conn
response.redirect "altera_dados.asp?text=Lutador+apagado."
%>