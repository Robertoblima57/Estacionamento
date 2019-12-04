<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.Usuario"%>
<%@page import="Dao.UsuarioDao"%>
<%@page import="Model.Veiculo"%>
<%@page import="Dao.VeiculoDao"%>
<%@page import="java.util.ArrayList"%>


<%
Usuario usu = new Usuario();
UsuarioDao usd = new UsuarioDao();

String login = request.getParameter("login");
String senha = request.getParameter("senha");

usu.setLogin_usuario(login);
usu.setSenha_login(senha);
boolean status = usd.verificarUsuario(usu);
if (usd.result){
    out.print("BEM VINDO: " + usd.nome);
}else{
    out.print("LOGIN INVALIDO");
}

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MOSTRA VEICULOS</title>
    </head>
    <body><br><br>
        <form action="VerificarLogin.jsp" method="post">
        <label>DATA: </label>
        <input type="text" name="data"/>
        <label for ="Status">STATUS</label>
        <select NAME="STATUS">
                <option>SELECIONE UMA OPÇÃO</option>
                <option value="A">ABERTO</option>
                <option value="F">FECHADO</option>
        </select>
            <button type="submit">OK</button>
        </form>
                
        <%  
        String dataEntrada = request.getParameter("data");
        //double valortotal = 0;
            try{
                out.print("<table border='1'>");
                out.print("<tr>");
                out.print("<th>CODIGO</th>");
                out.print("<th>PLACA</th>");
                out.print("<th>MARCA</th>");
                out.print("<th>MODELO</th>");
                out.print("<th>DATA/ENTRADA</th>");
                out.print("<th>DATA/SAIDA</th>");
                out.print("<th>TEMPO/TOTAL</th>");
                out.print("<th>STATUS</th>");
                out.print("<th>VALOR</th>");
                out.print("<th>editar</th>");
                out.print("<th>excluir</th>");
                out.print("</tr>");
                
                VeiculoDao veicd = new VeiculoDao();
                    
                if(dataEntrada == "" || dataEntrada == null){
                    ArrayList<Veiculo> lista = veicd.ListarTodosVeiculos();
                    for(int i = 0;i < lista.size();i++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(i).getIdEstacionamento()+"</td>");
                        out.print("<td>"+lista.get(i).getPlaca()+"</td>");
                        out.print("<td>"+lista.get(i).getMarca()+"</td>");
                        out.print("<td>"+lista.get(i).getModelo()+"</td>");
                        out.print("<td>"+lista.get(i).getDataEntrada()+"</td>");
                        out.print("<td>"+lista.get(i).getDataSaida()+"</td>");
                        out.print("<td>"+lista.get(i).getTempoTotal()+"</td>");
                        out.print("<td>"+lista.get(i).getStatus()+"</td>");
                        out.print("<td>"+lista.get(i).getValor()+"</td>");
                        //out.print("<td>"+lista.get(i).getValortotal()+"</td>");
                        //valortotal = lista.get(i).getValortotal();
                        out.print("<td><a href='AlterarVeiculo.jsp?IdEstacionamento="+lista.get(i).getIdEstacionamento()+
                                "&placa="+lista.get(i).getPlaca()+
                                "&marca="+lista.get(i).getMarca()+
                                "&modelo="+lista.get(i).getModelo()+
                                "&dataentrada="+lista.get(i).getDataEntrada()+
                                "&datasaida="+lista.get(i).getDataSaida()+
                                "&tempototal="+lista.get(i).getTempoTotal()+
                                "&status="+lista.get(i).getStatus()+
                                "&valor="+lista.get(i).getValor()+"'>CLIQUE</a></td>");
                        out.print("<td><a href='ExcluirVeiculo.jsp?IdEstacionamento="+lista.get(i).getIdEstacionamento()+
                                "&placa="+lista.get(i).getPlaca()+"'>CLIQUE</a></td>");
                        out.print("</tr>");
                    }
                }else{
                    ArrayList<Veiculo> lista = veicd.verificarVeiculo(dataEntrada);
                    for(int i = 0;i < lista.size();i++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(i).getIdEstacionamento()+"</td>");
                        out.print("<td>"+lista.get(i).getPlaca()+"</td>");
                        out.print("<td>"+lista.get(i).getMarca()+"</td>");
                        out.print("<td>"+lista.get(i).getModelo()+"</td>");
                        out.print("<td>"+lista.get(i).getDataEntrada()+"</td>");
                        out.print("<td>"+lista.get(i).getDataSaida()+"</td>");
                        out.print("<td>"+lista.get(i).getTempoTotal()+"</td>");
                        out.print("<td>"+lista.get(i).getStatus()+"</td>");
                        out.print("<td>"+lista.get(i).getValor()+"</td>");
                        //out.print("<td>"+lista.get(i).getValortotal()+"</td>");
                        //valortotal = lista.get(i).getValortotal();
                        out.print("<td><a href='AlterarVeiculo.jsp?IdEstacionamento="+lista.get(i).getIdEstacionamento()+
                                "&placa="+lista.get(i).getPlaca()+
                                "&marca="+lista.get(i).getMarca()+
                                "&modelo="+lista.get(i).getModelo()+
                                "&dataentrada="+lista.get(i).getDataEntrada()+
                                "&datasaida="+lista.get(i).getDataSaida()+
                                "&tempototal="+lista.get(i).getTempoTotal()+
                                "&status="+lista.get(i).getStatus()+
                                "&valor="+lista.get(i).getValor()+"'>CLIQUE</a></td>");
                        out.print("<td><a href='ExcluirVeiculo.jsp?IdEstacionamento="+lista.get(i).getIdEstacionamento()+
                                "&placa="+lista.get(i).getPlaca()+"'>CLIQUE</a></td>");
                        out.print("</tr>");
                    }
                    
                }
            }catch(Exception erro){
                throw new RuntimeException("erro 6 "+ erro);
            }
            out.print("</table>");
        %>
        <br>
        <a href="InserirVeiculo.jsp">NOVO CADASTRO VEICULO</a><br><br>
        
    </body>
</html>
