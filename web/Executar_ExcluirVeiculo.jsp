<%-- 
    Document   : Executar_ExcluirVeiculo
    Created on : 29/11/2019, 20:12:51
    Author     : Betinho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dao.VeiculoDao"%>

<%
    try{
        VeiculoDao Veicd = new VeiculoDao();
        int codigo_veiculo = Integer.parseInt(request.getParameter("CODIGO_VEICULO"));
        Veicd.excluirVeiculo(codigo_veiculo);
        out.print("<script>alert('Registro excluido')</script>");
        out.print("<script>window.location.href='VerificarLogin.jsp';</script>");
    }catch(Exception erro){
        throw new RuntimeException("erro10"+ erro);
        
    }
%>