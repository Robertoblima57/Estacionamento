<%-- 
    Document   : ExcluirVeiculo
    Created on : 29/11/2019, 20:12:31
    Author     : Betinho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EXCLUIR VEICULO</title>
    </head>
    <body>
         <<form action ="Executar_ExcluirVeiculo.jsp" method="post">
            <label>CODIGO VEICULO</label><br>
            <input type="text" name="CODIGO_VEICULO" value="<%=request.getParameter("IdEstacionamento")%>"/><br>
            <label>PLACA</label><br>
            <input type="text" name="PLACA"value="<%=request.getParameter("placa")%>"/><br>
            <button type="submit">EXCLUIR</button><br><br>
        </form>
        <form action="VerificarLogin.jsp" method="post">
            <button type="submit">TELA VEICULO</button>
        </form>    
    </body>
</html>
