<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>OFICINA MECANICA</title>
    </head>
    <body>
        <form action="VerificarLogin.jsp" method="post">
            <label>LOGIN</label><br>
            <input type="text" name="login"/><br>
            <label>SENHA</label><br>
            <input type="password" name="senha"/><br><br>
            <input type="submit" value="Entrar"/>
        </form>
        <br>  
        <a href="InserirLogin.jsp">Cadastro Login</a><br><br>
        <a href="MostraUsuarios.jsp">Alterar ou Excluir Login</a>
        
    </body>
</html>
