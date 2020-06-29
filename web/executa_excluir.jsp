<%-- 
    Document   : executa_excluir
    Created on : 23/06/2020, 22:57:53
    Author     : Thaynara
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
               ProdutoDAO prd =new ProdutoDAO();
               
               if(request.getParameter("nome")== "" || request.getParameter("preco")== null){
                    response.sendRedirect("index.jsp");
                }else{
                    prd.excluir(Integer.parseInt(request.getParameter("id")));
                    response.sendRedirect("index.jsp");
                
                }
               /*prd.excluir(Integer.parseInt(request.getParameter("id")));
               response.sendRedirect("index.jsp");*/
            }catch(Exception erro){
                throw new RuntimeException("Erro 9:"+erro);
            }
        %>
    </body>
</html>
