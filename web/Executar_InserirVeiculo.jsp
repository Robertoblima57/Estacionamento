<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.Veiculo"%>
<%@page import="Dao.VeiculoDao"%>
<%
try{
    Veiculo Veic = new Veiculo();
    VeiculoDao Veicd = new VeiculoDao();
    String PLACA = request.getParameter("PLACA");
    String MARCA = request.getParameter("MARCA");
    String MODELO = request.getParameter("MODELO");
    String DATAENTRADA = request.getParameter("DTENT");
    String DATASAIDA = request.getParameter("DTSAIDA");
    String TEMPOTOTAL = request.getParameter("TPSAIDA");
    String STATUS = request.getParameter("STATUS");
    double VALOR = Double.parseDouble(request.getParameter("VALOR"));
    
    if (PLACA.equals("") || MARCA.equals("")|| MODELO.equals("")){
        out.print("<script>alert('Campos obrigatorios!');</script>");
        response.sendRedirect("VerificarLogin.jsp");
    }else{
        Veic.setPlaca(PLACA);
        Veic.setMarca(MARCA);
        Veic.setModelo(MODELO);
        Veic.setDataEntrada(DATAENTRADA);
        Veic.setDataSaida(DATASAIDA);
        Veic.setTempoTotal(TEMPOTOTAL);
        Veic.setStatus(STATUS);
        Veic.setValor(VALOR);
        Veicd.inserirVeiculo(Veic);
        out.print("<script>alert('cadastro realizado com sucesso!');</script>");
        out.print("<script>window.location.href='VerificarLogin.jsp';</script>");
    }
}catch(Exception erro){
    throw new RuntimeException("erro 3:"+erro);
}
    
%>