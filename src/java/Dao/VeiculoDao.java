/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Model.Veiculo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Betinho
 */
public class VeiculoDao {

    private Connection conn;
    private PreparedStatement stmt;
    private ResultSet rs;
    private Statement st;
    private ArrayList<Veiculo> lista = new ArrayList<>();
    
    public VeiculoDao(){
        conn = new Conexao().getConexao();
    }
    
    public boolean result = false;
    public String nome = "";
    
    public boolean verificarVeiculo(Veiculo veiculo){
        String sql = "SELECT nome_usuario FROM tabestacionamento "
                + "WHERE datahoraentrada = ? AND statusveiculo = ?";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, veiculo.getDataEntrada());
            stmt.setString(2, veiculo.getStatus());
            rs = stmt.executeQuery();
            if (rs.next()){
                result = true;
                nome = rs.getString("DataEntrada");
            }
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro 2 - Verificar" + erro);
         }
        return result;
        
        
    }

//metodos de pesquisa pesquisa tudo
    public ArrayList<Veiculo> ListarTodosVeiculos(){
        String sql = "SELECT * FROM tabestacionamento";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Veiculo veiculo = new Veiculo();
                veiculo.setIdEstacionamento(rs.getInt("idEstacionamento"));
                veiculo.setPlaca(rs.getString("placa"));
                veiculo.setMarca(rs.getString("marca"));
                veiculo.setModelo(rs.getString("modelo"));
                veiculo.setDataEntrada(rs.getString("datahoraentrada"));
                veiculo.setDataSaida(rs.getString("datahorasaida"));
                veiculo.setTempoTotal(rs.getString("tempototal"));
                veiculo.setStatus(rs.getString("statusveiculo"));
                veiculo.setValor(rs.getDouble("valor"));
                lista.add(veiculo);
            }
        }catch(Exception erro){
            throw new RuntimeException("erro 4:"+erro);
         }
        return lista;
    }


    public void inserirVeiculo(Veiculo veiculo){
        String sql = "INSERT INTO tabestacionamento(placa,marca,modelo,datahoraentrada,datahorasaida,tempototal,statusveiculo,valor) VALUES(?,?,?,?,?,?,?,?)";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, veiculo.getPlaca());
            stmt.setString(2, veiculo.getMarca());
            stmt.setString(3, veiculo.getModelo());
            stmt.setString(4, veiculo.getDataEntrada());
            stmt.setString(5, veiculo.getDataSaida());
            stmt.setString(6, veiculo.getTempoTotal());
            stmt.setString(7, veiculo.getStatus());
            stmt.setDouble(8, veiculo.getValor());
            stmt.execute();
            stmt.close();
            
        }catch(Exception erro){
            throw new RuntimeException("erro 2:" +erro);
        }
    }        
    // metodo de atualização
    public void atualizarVeiculo(Veiculo veiculo){
        String sql = "UPDATE tabestacionamento SET placa = ?, marca = ?, modelo = ?, datahoraentrada = ?, datahorasaida = ?, tempototal = ?, statusveiculo = ?, valor = ? WHERE idEstacionamento = ? ";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, veiculo.getPlaca());
            stmt.setString(2, veiculo.getMarca());
            stmt.setString(3, veiculo.getModelo());
            stmt.setString(4, veiculo.getDataEntrada());
            stmt.setString(5, veiculo.getDataSaida());
            stmt.setString(6, veiculo.getTempoTotal());
            stmt.setString(7, veiculo.getStatus());
            stmt.setDouble(8, veiculo.getValor());
            stmt.setInt(9, veiculo.getIdEstacionamento());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("erro 7:"+erro);
        }
    }
     // metodo para excluir
    public void excluirVeiculo(int valor){
        String sql = "DELETE FROM tabestacionamento WHERE idestacionamento = "+valor;
        try{
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        }catch(Exception erro){
            throw new RuntimeException("erro 8 ",erro);
        }
        
    }
    
}

    
