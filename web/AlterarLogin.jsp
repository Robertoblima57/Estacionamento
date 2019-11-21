<%-- 
    Document   : AlterarLogin
    Created on : 09/11/2019, 10:30:12
    Author     : Betinho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAGINA ALTERAR LOGIN</title>
    </head>
    <body>
        <<form action ="Executa_AlterarLogin.jsp" method="post">
            <label>CODIGO USUARIO</label><br>
            <input type="text" name="CODIGO_USUARIO" value="<%=request.getParameter("CODIGO_USUARIO")%>"/><br>
            <label>NOME USUARIO</label><br>
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>"/><br>
            <label>LOGIN</label><br>
            <input type="text" name="login" value="<%=request.getParameter("login")%>"/><br>
            <label>SENHA</label><br>
            <input type="text" name="senha" value="<%=request.getParameter("senha")%>"/><br><br>
            <button type="submit">ATUALIZAR LOGIN</button><br><br>
        </form>
        <form action="index.jsp" method="post">
            <button type="submit">TELA LOGIN</button>
        </form>
    </body>
</html>
