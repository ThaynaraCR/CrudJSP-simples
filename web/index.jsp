<%-- 
    Document   : index
    Created on : 23/06/2020, 15:05:23
    Author     : Thaynara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto"%>
<%@page import="dao.ProdutoDAO"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="index.jsp" method="post">
            
           
            
            <label>Nome:</label>  <br/>
            <input type="text" name="nome" > <br/>
          
            
            <button type="submit">
                OK
            </button>
            
        </form>
        
        <%
           try{
              out.print("<table>");
              out.print("<tr>");
              out.print("<th>ID</th><th>nome</th><th>preco</th><th>editar</th><th>excluir</th>");
              out.print("</tr>");
              ProdutoDAO prd = new ProdutoDAO();
              if(request.getParameter("nome")=="" || request.getParameter("nome")== null){            /* OBS: o valor ao editar  do preço não poderá ser nulo*/
                 ArrayList<Produto> lista = prd.listarTodos();
                        for(int num=0; num< lista.size();num++){
                            out.print("<tr>");
                            out.print("<td>"+lista.get(num).getId_produto()+"</td>");
                            out.print("<td>"+lista.get(num).getNome_produto()+"</td>");
                            out.print("<td>"+lista.get(num).getPreco_produto()+"</td>");
                            out.print("<td><a href=alterar.jsp?id="+ lista.get(num).getId_produto()
                                    + "&nome="
                                    + lista.get(num).getNome_produto()
                                    + "&preço"
                                    + lista.get(num).getPreco_produto()
                                    + ">CLIQUE</a></td>");
                            out.print("<td><a href=excluir.jsp?id="
                                    + lista.get(num).getId_produto()
                                    + "&nome="
                                    + lista.get(num).getNome_produto()
                                    + ">CLIQUE</a></td>");
                            out.print("<td></td>");
                            out.print("</tr>");
                        }
                } else{
                  ArrayList<Produto> lista = prd.listarTodosDescricao(request.getParameter("nome"));
                        for(int num=0; num< lista.size();num++){
                            out.print("<tr>");
                            out.print("<td>"+lista.get(num).getId_produto()+"</td>");
                            out.print("<td>"+lista.get(num).getNome_produto()+"</td>");
                            out.print("<td>"+lista.get(num).getPreco_produto()+"</td>");
                            out.print("<td><a href=alterar.jsp?id="
                                    + lista.get(num).getId_produto()
                                    + "nome"
                                    + lista.get(num).getNome_produto()
                                    + "preço"
                                    + lista.get(num).getPreco_produto()
                                    + ">CLIQUE</a></td>");
                            out.print("<td><a href=excluir.jsp?id="
                                    + lista.get(num).getId_produto()
                                    + "nome"
                                    + lista.get(num).getNome_produto()
                                    + ">CLIQUE</a></td>");                           
                            out.print("<td></td>");
                            out.print("</tr>");
                         
                        }        
    
              }
             
   
           }catch(Exception erro){
               throw new RuntimeException("Erro:10"+erro);
               
               
           }
            
            %>
        
            <a href="inserir.jsp">NOVO</a>
    </body>
</html>
