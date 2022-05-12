<!--#include file="dataconn.asp"-->
<%
Dim UserName
Dim Password
UserName = LimpaHTML(Request.Form("nick_lj"))
Password = LimpaHTML(Request.Form("senha_lj"))

If Len(UserName) > 0 Then
msql = ("SELECT login, senha, dinheiro, itens FROM dados WHERE login='" & UserName & "' AND senha='" & Password & "'")
Set RS = Conn.Execute(msql)
	
	If RS.EOF Then
		response.redirect ("lojas.asp?msg=Login+inválido,+tente+novamente.")
		RS.Close
		Set RS = Nothing
		Set Conn = Nothing
		
	Else
		Session("logged_lj") = "true"
		Session("nick_lj") = Username
		Session("dinheiro_lj") = rs("dinheiro").value
		Session("itens_lj") = rs("itens").value
		response.cookies("nick_lj") = Username
		response.cookies("nick_lj").expires = now + day(2)
		response.cookies("senha_lj") = Password
		response.cookies("senha_lj").expires = now + day(2)
		response.redirect "loja2.asp"
	End If
End If
%>


<html>

<head>
<title>Login</title>
</head>

<body>
</body>

</html>