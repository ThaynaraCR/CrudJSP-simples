/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import model.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;


/**
 *
 * @author Thaynara
 */
public class ProdutoDAO {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Produto> lista = new ArrayList<>();
    
    
    
    public ProdutoDAO(){
        conn = new ConectionFactory().getConexao();
    }
    
    public void inserir(Produto produto){
           String sql =" INSERT INTO produto(nome, preço) VALUES (?,?)";
           
           try{
                stmt=conn.prepareStatement(sql);
                stmt.setString(1, produto.getNome_produto());
                stmt.setDouble(2, produto.getPreco_produto());
                stmt.execute();
                stmt.close();
           }catch(Exception erro){
               throw new RuntimeException("Erro2:"+erro);
           }
           
    
    }
    
     public void alterar(Produto produto){
           String sql ="UPDATE produto SET nome=?,preço=? WHERE id=? ";
           
           try{
               stmt=conn.prepareStatement(sql);
                stmt.setString(1, produto.getNome_produto());
                stmt.setDouble(2, produto.getPreco_produto());
                stmt.setInt(3,produto.getId_produto());
                stmt.execute();
                stmt.close();
               
           }catch(Exception erro){
               throw new RuntimeException("Erro3:"+erro);
           }
           
    
    }
     
     
      public void excluir(int valor){
           String sql ="DELETE FROM produto WHERE id="+valor;
           
           try{
               st = conn.createStatement();
               st.execute(sql);
               st.close();
           }catch(Exception erro){
               throw new RuntimeException("Erro4:"+erro);
           }
           
    
    }
      
      
      public ArrayList<Produto> listarTodos(){
           String sql ="SELECT*FROM produto";
           try{
               st=conn.createStatement();
               rs=st.executeQuery(sql);
               
               while(rs.next()){
                   Produto produto = new Produto();
                   produto.setId_produto(rs.getInt("id"));  
                   produto.setNome_produto(rs.getString("nome")); 
                   produto.setPreco_produto(rs.getDouble("preço")); 
                   lista.add(produto);
                   
               }
           
           }
           catch(Exception erro){
               throw new RuntimeException("Erro 5:"+erro);
           }
           return lista;
           
      }
      
      
           public ArrayList<Produto> listarTodosDescricao(String valor){
           String sql ="SELECT * FROM produto WHERE nome LIKE '%"+valor+"%' ";
           try{
               st=conn.createStatement();
               rs=st.executeQuery(sql);
               
               while(rs.next()){
                   Produto produto = new Produto();
                   produto.setId_produto(rs.getInt("id"));  
                   produto.setNome_produto(rs.getString("nome")); 
                   produto.setPreco_produto(rs.getDouble("preço")); 
                   lista.add(produto);
                   
               }
           
           }
           catch(Exception erro){
               throw new RuntimeException("Erro 6:"+erro);
           }
           return lista;
           
      }
}
      

      
 