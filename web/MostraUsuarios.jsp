<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dao.UsuarioDao"%>
<%@page import="Model.Usuario"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MOSTRA USUARIOS</title>
    </head>
    <body>
        <%--<form action="index.jsp" method="post">
            
            <label>NOME</label><br>
            <input type="text" name="nome"/><br><br>
            <button type="submit">PESQUISAR</button><br><br>
        </form>--%>
        <%
            String nome_cliente = request.getParameter("nome");
            try{
                out.print("<table border='1'>");
                out.print("<tr>");
                out.print("<th>CODIGO</th>");
                out.print("<th>NOME USUARIO</th>");
                out.print("<th>LOGIN USUARIO</th>");
                out.print("<th>SENHA LOGIN</th>");
                out.print("<th>editar</th>");
                out.print("<th>excluir</th>");
                out.print("</tr>");
                
                UsuarioDao Usu = new UsuarioDao();
                  
                    ArrayList<Usuario> lista = Usu.ListarTodos();
                    for(int i = 0;i < lista.size();i++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(i).getId_usuario()+"</td>");
                        out.print("<td>"+lista.get(i).getNome_usuario()+"</td>");
                        out.print("<td>"+lista.get(i).getLogin_usuario()+"</td>");
                        out.print("<td>"+lista.get(i).getSenha_login()+"</td>");
                        out.print("<td><a href='AlterarLogin.jsp?CODIGO_USUARIO="+lista.get(i).getId_usuario()+
                                "&nome="+lista.get(i).getNome_usuario()+
                                "&login="+lista.get(i).getLogin_usuario()+
                                "&senha="+lista.get(i).getSenha_login()+"'>CLIQUE</a></td>");
                        out.print("<td><a href='ExcluirLogin.jsp?CODIGO_USUARIO="+lista.get(i).getId_usuario()+
                                "&nome="+lista.get(i).getNome_usuario()+"'>CLIQUE</a></td>");
                        out.print("</tr>");
                    }
                
            }catch(Exception erro){
                throw new RuntimeException("erro 6 "+ erro);
            }
            out.print("</table>");
        %>
        <br>
        <a href="InserirLogin.jsp">NOVO CADASTRO</a><br><br>
        <a href="index.jsp">TELA LOGIN</a>
    </body>
</html>
