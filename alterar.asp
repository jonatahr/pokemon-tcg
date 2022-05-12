<!--#include file="conn.asp"-->
<%
abreconexao
dim nome,nick,deck,professor,email,itens,cartas,comentarios,login,senha,exp,id
nome = replace(request.form("nome"), "'", "''")
nick = replace(request.form("nick"), "'", "''")
deck = replace(request.form("deck"), "'", "''")
professor = replace(request.form("professor"), "'", "''")
dinheiro = replace(request.form("dinheiro"), "'", "''")
email = replace(request.form("email"), "'", "''")
itens = replace(request.form("itens"), "'", "''")
cartas = replace(request.form("cartas"), "'", "''")
comentarios = replace(request.form("comentarios"), "'", "''")
login = replace(request.form("login"), "'", "''")
senha = replace(request.form("senha"), "'", "''")
exp = replace(request.form("exp"), "'", "''")
id = request.form("id")

alterar = "UPDATE dados SET login = '" & login & "',senha = '" & senha & "',nome = '" & nome & "', nick = '" & nick & "', deck = '" & deck & "', professor = '" & professor & "', dinheiro = '" & dinheiro & "', email = '" & email & "', itens = '" & itens & "', cartas = '" & cartas & "', comentarios = '" & comentarios & "', exp = '" & exp & "' WHeRe id = " & id & " "
conexao.Execute(alterar)
FechaConexao
response.redirect "altera_dados.asp?text=User+Atualziado+com+Sucesso"
%>