<%
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
response.redirect "del_iten.asp"
end if
%>