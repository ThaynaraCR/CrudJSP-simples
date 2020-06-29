<%-- 
    Document   : executa_alterar
    Created on : 23/06/2020, 22:57:32
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
                
                if(request.getParameter("nome")== "" || request.getParameter("preco")== null){
                    response.sendRedirect("index.jsp");
                }else{
                    pro.setId_produto(Integer.parseInt(request.getParameter("id")));
                    pro.setNome_produto(request.getParameter("nome"));
                    pro.setPreco_produto(Double.parseDouble(request.getParameter("preco")));
                    prd.alterar(pro);
                    response.sendRedirect("index.jsp");
                
                }
               
             
            }catch(Exception erro){
                throw new RuntimeException("Erro 8:"+erro);
            }
        %>
    </body>
</html>
