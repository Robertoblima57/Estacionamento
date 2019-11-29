<%-- 
    Document   : InserirVeiculo
    Created on : 27/11/2019, 21:26:48
    Author     : Betinho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PÁGINA CADASTRO VEICULO</title>
    </head>
    <body>
        <form action="Executar_InserirVeiculo.jsp" method="post">
            <label>CODIGO VEICULO</label><br>
            <input type="text" name="CODIGO_VEICULO"/><br>
            <label>PLACA</label><br>
            <input type="text" name="PLACA"/><br>
            <label>MARCA</label><br>
            <input type="text" name="MARCA"/><br>
            <label>MODELO</label><br>
            <input type="text" name="MODELO"/><br>
            <label>DATA ENTRADA</label><br>
            <input type="text" name="DTENT"/><br>
            <label>DATA SAIDA</label><br>
            <input type="text" name="DTSAIDA"/><br>
            <label>TEMPO SAIDA</label><br>
            <input type="text" name="TPSAIDA"/><br>
            <label>STATUS</label><br>
            <input type="text" name="STATUS"/><br>
            <label>VALOR</label><br>
            <input type="text" name="VALOR"/><br>
            <br>
            <input type="submit" value="CADASTRAR VEICULO"/>
        </form>
          
        <br>
        <form action="VerificarLogin.jsp" method="post">
            <button type="submit">TELA VEICULO</button>
        </form>
    </body>
    
</html>

