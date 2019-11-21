/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Betinho
 */
public class conexao2 {

public  Connection getConexao2(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/estacionamento","root","");
        }catch (Exception erro){
            throw new RuntimeException("Erro1 - Conexão" + erro);
        }
    }
    
}
