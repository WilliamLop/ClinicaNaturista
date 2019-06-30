<%-- 
    Document   : crearFormula
    Created on : 28-jun-2019, 15:35:59
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
        <title>Guardar Formula</title>
    </head>
    <body>
        <h1>Añadir Formula</h1>
            <form action="Formula.do?a=create"method="post" class="formulario">
                
                 Cita:
                <select name="cmbCita">
                    <option value=""> Seleccione </option>
                    <% ArrayList<Cita> cita = (ArrayList) request.getAttribute("cita");%>
                    <% for(Cita cta : cita){ %>
                    <option value="<%=cta.getIdcita()%>" <%=cta.getIdcita()%> <%=cta.getFecha() %></option>
                    <% } %>  
                </select>
                <br/><br>  
                <label for="" class="formulario__label">Descripci&oacute;n:</label>
                <br>
                <textarea name="txtDescripcion" rows="30" cols="90" class="formulario__input" required="required" id="descripcion"> </textarea>   
                <br>
                <input type="submit" value="Guardar" class="formulario__submit" />
            </form>
         
    </body>
</html>
