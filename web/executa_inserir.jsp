<%-- 
    Document   : executa_inserir
    Created on : 23/06/2020, 22:56:45
    Author     : Thaynara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto"%>
<%@page import="dao.ProdutoDAO"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
                Produto pro= new Produto();
                ProdutoDAO prd= new ProdutoDAO();
                
                if(request.getParameter("nome").equals("") || request.getParameter("preco").equals("")){
                    response.sendRedirect("index.jsp");
                }else{
                    pro.setNome_produto(request.getParameter("nome"));
                    pro.setPreco_produto(Double.parseDouble(request.getParameter("preco")));
                    prd.inserir(pro);
                    response.sendRedirect("index.jsp");
                
                }
               
             
            }catch(Exception erro){
                throw new RuntimeException("Erro 7:"+erro);
            }
        %>
    </body>
</html>

