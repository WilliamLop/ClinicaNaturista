<%-- 
    Document   : listarFormula
    Created on : 28-jun-2019, 15:37:09
    Author     : Angie
--%>
<%@page import= "Modelo.Formula"%>
<%@page import= "Modelo.Cita"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action="Formula.do?a=list"method="post" class="formulario">
            
        <h1>Editar Formula</h1> 
        
         <table border>
        
            <tr>
            <thead>
            <th>Descripci&oacute;n:</th>
               
            </thead>   
            </tr>
      
             <tr>
                 
             <td> <textarea name="txtDescripcion" rows="30" cols="90" class="formulario__input" required="required" id="descripcion"> </textarea>   </td>             
            </tr>
         </form> 
    </body>
</html>
