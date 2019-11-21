<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.Usuario"%>
<%@page import="Dao.UsuarioDao"%>
<%
try{
    Usuario Usu = new Usuario();
    UsuarioDao Usud = new UsuarioDao();
    String NOME_USUARIO = request.getParameter("nome");
    String LOGIN_USUARIO = request.getParameter("login");
    String SENHA_LOGIN = request.getParameter("senha");
    
    if (NOME_USUARIO.equals("") || LOGIN_USUARIO.equals("")|| SENHA_LOGIN.equals("")){
        out.print("<script>alert('Campos obrigatorios!');</script>");
        response.sendRedirect("InserirLogin.jsp");
    }else{
        Usu.setNome_usuario(NOME_USUARIO);
        Usu.setLogin_usuario(LOGIN_USUARIO);
        Usu.setSenha_login(SENHA_LOGIN);
        Usud.inserir(Usu);
        out.print("<script>alert('cadastro realizado com sucesso!');</script>");
        out.print("<script>window.location.href='index.jsp';</script>");
    }
}catch(Exception erro){
    throw new RuntimeException("erro 3:"+erro);
}
    
%>