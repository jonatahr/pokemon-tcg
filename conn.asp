<!--#include file="config.asp"-->
<%
Set Conexao = CreateObject("ADODB.CONNECTION")
conStr ="DRIVER={Microsoft Access Driver (*.mdb)}; DBQ=" & server.MapPath(db)
ConexaoAberta = FALSE
Sub AbreConexao()
	if not ConexaoAberta then
	Conexao.Open ConStr
	ConexaoAberta = True
	end if
end sub
Sub FechaConexao()
	if ConexaoAberta then
	Conexao.close
	ConexaoAberta = False
	end if
end sub 
%>