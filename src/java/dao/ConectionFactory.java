/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Thaynara
 */
public class ConectionFactory {
    
        public Connection getConexao(){
        
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    return DriverManager.getConnection("jdbc:mysql://localhost/produto","root","");
                } catch(Exception erro){
                  throw new RuntimeException("Erro 1 :"+erro);
                  }
    
        }
        
}  
       
