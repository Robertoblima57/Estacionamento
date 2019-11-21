package Dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
    public  Connection getConexao(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/oficina","root","");
        }catch (Exception erro){
            throw new RuntimeException("Erro1 - Conexão" + erro);
        }
    }
    
}
