<%-- 
    Document   : Executa_AlterarLogin
    Created on : 09/11/2019, 11:02:20
    Author     : Betinho
--%>

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
      int CODIGO_USUARIO = Integer.parseInt(request.getParameter("CODIGO_USUARIO"));
      
      if(NOME_USUARIO.equals("")||LOGIN_USUARIO.equals("")||SENHA_LOGIN.equals("")){
          response.sendRedirect("index.jsp");
          
      }else{
          Usu.setNome_usuario(NOME_USUARIO);
          Usu.setLogin_usuario(LOGIN_USUARIO);
          Usu.setSenha_login(SENHA_LOGIN);
          Usu.setId_usuario(CODIGO_USUARIO);
          Usud.atualizar(Usu);
          out.print("<script>alert('atualizado com sucesso');</script>");
          out.print("<script>window.location.href='index.jsp'</script>");
      }
  }catch(Exception erro){
      throw new RuntimeException("erro9"+erro);
  }

%>