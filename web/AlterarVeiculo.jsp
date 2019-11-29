<%-- 
    Document   : AlterarVeiculo
    Created on : 29/11/2019, 19:27:58
    Author     : Betinho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PAGINA ALTERAR VEICULO</title>
    </head>
    <body>
        <<form action ="Executar_AlterarVeiculo.jsp" method="post">
            <label>CODIGO VEICULO</label><br>
            <input type="text" name="CODIGO_VEICULO" value="<%=request.getParameter("IdEstacionamento")%>"/><br>
            <label>PLACA</label><br>
            <input type="text" name="PLACA" value="<%=request.getParameter("placa")%>"/><br>
            <label>MARCA</label><br>
            <input type="text" name="MARCA" value="<%=request.getParameter("marca")%>"/><br>
            <label>MODELO</label><br>
            <input type="text" name="MODELO" value="<%=request.getParameter("modelo")%>"/><br>
            <label>DATA ENTRADA</label><br>
            <input type="text" name="DTENT" value="<%=request.getParameter("dataentrada")%>"/><br>
            <label>DATA SAIDA</label><br>
            <input type="text" name="DTSAIDA" value="<%=request.getParameter("datasaida")%>"/><br>
            <label>TEMPO SAIDA</label><br>
            <input type="text" name="TPSAIDA" value="<%=request.getParameter("tempototal")%>"/><br>
            <label>STATUS</label><br>
            <input type="text" name="STATUS" value="<%=request.getParameter("status")%>"/><br>
            <label>VALOR</label><br>
            <input type="text" name="VALOR" value="<%=request.getParameter("valor")%>"/><br>
            <br>
            <input type="submit" value="ALTERAR VEICULO"/>
        </form>
          
        <br>
        <form action="VerificarLogin.jsp" method="post">
            <button type="submit">TELA VEICULO</button>
        </form>
    </body>
</html>
