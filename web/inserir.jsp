<%-- 
    Document   : inserir
    Created on : 24/06/2020, 00:57:37
    Author     : Thaynara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="executa_inserir.jsp" method="post">
            
          <!--  <label>ID:</label>  <br/>
            <input type="text" name="id"> <br/>-->
            
            <label>Nome:</label>  <br/>
            <input type="text" name="nome"> <br/>
            
            <label>Preço:</label>  <br/>
            <input type="text" name="preco"> <br/>
            
            <button type="submit">
                OK
            </button>
            
        </form>
        
        
    </body>
</html>
