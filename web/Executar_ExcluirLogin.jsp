<%-- 
    Document   : Executar_ExcluirLogin
    Created on : 09/11/2019, 16:29:49
    Author     : Betinho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dao.UsuarioDao"%>

<%
    try{
        UsuarioDao Usud = new UsuarioDao();
        int codigo_usuario = Integer.parseInt(request.getParameter("CODIGO_USUARIO"));
        Usud.excluir(codigo_usuario);
        out.print("<script>alert('Registro excluido')</script>");
        out.print("<script>window.location.href='index.jsp';</script>");
    }catch(Exception erro){
        throw new RuntimeException("erro10"+ erro);
        
    }
%>