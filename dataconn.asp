<!--#include file="adovbs.inc"-->
<%
ConnString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("db/cadastro.mdb")
Set Conn = Server.CreateObject("ADODB.Connection")
Conn.Open ConnString
%>
<%
Function LimpaHTML(matriz)
Do While True
   ini     = InStr(1,matriz,"<")
   If ini  = 0 Then Exit Do
   fim     = InStr(ini,matriz,">")
   parcial = Mid(matriz,ini,fim-ini+1)
   matriz  = Replace(matriz,parcial,"")
Loop
LimpaHTML  = matriz
End Function
%>
<%
Function Plic(ByVal strTexto)
  If InStr(strTexto, Chr(39)) Then
    Plic = Chr(39) & Replace(strTexto, Chr(39), _
           Chr(39) & Chr(39)) & Chr(39)
Else
    Plic = Chr(39) & strTexto & Chr(39)
  End If
End Function
%>