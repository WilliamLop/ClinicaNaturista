<%-- 
    Document   : listarMedicamento
    Created on : 28-jun-2019, 15:38:09
    Author     : Angie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Modelo.Medicamento"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Medicamentos Registrados</h1>
        
         <table border>
            <thead>
                <tr>C&oacute;digo</th>
                <th>Nombre</th>
                <th>Precio</th>
                <th>Cantidad Disponible</th>
                <th>Descripci&oacute;n</th>
                
            </tr>
            </thead>
            
            <%
            ArrayList<Medicamento> medicamento = (ArrayList)request.getAttribute("Medicamento");
            %>  
            
            <% for (Medicamento mto: medicamento){ %>
            <tr>
                <td><%= mto.getNombre()%></td>
                <td><%= mto.getPrecio()%></td>
                <td><%= mto.getCantDisp()%></td>
                <td><%= mto.getDescripcion()%></td>

            </tr>        
          <%}%>              
        </table> 
              
        </form>
        
    </body>
</html>
