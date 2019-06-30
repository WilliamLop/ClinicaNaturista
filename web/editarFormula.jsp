<%-- 
    Document   : editarFormula
    Created on : 28-jun-2019, 15:36:26
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
        <title>Editar Formula</title>
    </head>
    <body>
        <% Formula fla = (Formula)request.getAttribute("editarFormula");%>
        <h1>Editar Formula</h1>
            <form action="Formula.do?a=update"method="post" class="formulario">
               <label for="" class="formulario__label">Descripci&oacute;n:</label>
                <br>
                <textarea name="txtDescripcion" value="<%= fla.getDescripcion()%>"rows="30" cols="90" class="formulario__input" required="required" id="descripcion"> </textarea>   
                <br>
                <input type="submit" value="Guardar" class="formulario__submit" />
            </form>
         
    </body>
</html>
