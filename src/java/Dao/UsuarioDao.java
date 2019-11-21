package Dao;

import Model.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class UsuarioDao {
    private Connection conn;
    private PreparedStatement stmt;
    private ResultSet rs;
    private Statement st;
    private ArrayList<Usuario> lista = new ArrayList<>();
    
    public UsuarioDao(){
        conn = new Conexao().getConexao();
    }
    
    public boolean result = false;
    public String nome = "";
    
    public boolean verificarUsuario(Usuario usuario){
        String sql = "SELECT nome_usuario FROM tb_usuario "
                + "WHERE login_usuario = ? AND senha_login = ?";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario.getLogin_usuario());
            stmt.setString(2, usuario.getSenha_login());
            rs = stmt.executeQuery();
            if (rs.next()){
                result = true;
                nome = rs.getString("nome_usuario");
            }
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro 2 - Verificar" + erro);
         }
        return result;
        
        
    }

//metodos de pesquisa pesquisa tudo
    public ArrayList<Usuario> ListarTodos(){
        String sql = "SELECT * FROM tb_usuario";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Usuario usuario = new Usuario();
                usuario.setId_usuario(rs.getInt("id_usuario"));
                usuario.setNome_usuario(rs.getString("nome_usuario"));
                usuario.setLogin_usuario(rs.getString("login_usuario"));
                usuario.setSenha_login(rs.getString("senha_login"));
                lista.add(usuario);
            }
        }catch(Exception erro){
            throw new RuntimeException("erro 4:"+erro);
         }
        return lista;
    }


    public void inserir(Usuario usuario){
        String sql = "INSERT INTO tb_usuario(nome_usuario,login_usuario,senha_login) VALUES(?,?,?)";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario.getNome_usuario());
            stmt.setString(2, usuario.getLogin_usuario());
            stmt.setString(3, usuario.getSenha_login());
            stmt.execute();
            stmt.close();
            
        }catch(Exception erro){
            throw new RuntimeException("erro 2:" +erro);
        }
    }        
    // metodo de atualização
    public void atualizar(Usuario usuario){
        String sql = "UPDATE tb_usuario SET nome_usuario = ?, login_usuario = ?, senha_login = ? WHERE id_usuario = ? ";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario.getNome_usuario());
            stmt.setString(2, usuario.getLogin_usuario());
            stmt.setString(3, usuario.getSenha_login());
            stmt.setInt(4, usuario.getId_usuario());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("erro 7:"+erro);
        }
    }
     // metodo para excluir
    public void excluir(int valor){
        String sql = "DELETE FROM tb_usuario WHERE id_usuario = "+valor;
        try{
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        }catch(Exception erro){
            throw new RuntimeException("erro 8 ",erro);
        }
        
    }
    
}
