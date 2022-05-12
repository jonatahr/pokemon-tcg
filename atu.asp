<!--#include file="conn.asp"-->
<% 
AbreConexao
dim deck,professor,email,itens,cartas,comentarios,exp,id
deck = replace(request.form("deck"), "'", "''")
professor = replace(request.form("professor"), "'", "''")
dinheiro = replace(request.form("dinheiro"), "'", "''")
email = replace(request.form("email"), "'", "''")
itens = replace(request.form("itens"), "'", "''")
cartas = replace(request.form("cartas"), "'", "''")
comentarios = replace(request.form("comentarios"), "'", "''")
exp = replace(request.form("exp"), "'", "''")
id = request.form("id")

alterar = "UPDATE dados SET deck = '" & deck & "', professor = '" & professor & "', dinheiro = '" & dinheiro & "', email = '" & email & "', itens = '" & itens & "', cartas = '" & cartas & "', comentarios = '" & comentarios & "', exp = '" & exp & "' WHeRe iD = " & iD & " "
conexao.Execute(alterar)
FechaConexao
response.redirect "logado.asp?msg=User+Atualizado+com+Sucesso!!!!"
%>