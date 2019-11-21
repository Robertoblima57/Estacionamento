<%-- 
    Document   : DeletarLogin
    Created on : 09/11/2019, 16:28:08
    Author     : Betinho
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DELETAR LOGIN</title>
    </head>
    <body>
         <<form action ="Executar_ExcluirLogin.jsp" method="post">
            <label>CODIGO USUARIO</label><br>
            <input type="text" name="CODIGO_USUARIO" value="<%=request.getParameter("CODIGO_USUARIO")%>"/><br>
            <label>NOME</label><br>
            <input type="text" name="nome"value="<%=request.getParameter("nome")%>"/><br>
            <button type="submit">EXCLUIR</button><br><br>
        </form>
        <form action="index.jsp" method="post">
            <button type="submit">TELA LOGIN</button>
        </form>    
    </body>
</html>
