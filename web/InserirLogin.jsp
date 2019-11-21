<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PÁGINA CADASTRO LOGIN</title>
    </head>
    <body>
        <form action="Executar_InserirLogin.jsp" method="post">
            <label>CODIGO USUARIO</label><br>
            <input type="text" name="CODIGO_USUARIO"/><br>
            <label>NOME USUARIO</label><br>
            <input type="text" name="nome"/><br>
            <label>LOGIN</label><br>
            <input type="text" name="login"/><br>
            <label>SENHA</label><br>
            <input type="password" name="senha"/><br><br>
            <input type="submit" value="CADASTRAR LOGIN"/>
        </form>
          
        <br>
        <form action="index.jsp" method="post">
            <button type="submit">TELA LOGIN</button>
               <%-- <a href="AlterarLogin.jsp">Cadastro Login</a>--%>
        </form>
    </body>
    
</html>

