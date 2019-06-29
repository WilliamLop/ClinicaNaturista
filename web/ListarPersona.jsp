<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <caption>Lista Personas</caption>
            <thead>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Identificacion</th>
                <th>Genero</th>
                <th>Rh</th>
                <th>Fecha de Nacimiento</th>
                <th>Rol</th>
                <th>Telefono</th>
                <th>Correo</th>
            </thead>
            <tbody>
                <%
                ArrayList<Persona> personas = (ArrayList)request.getAttribute("Per");
                for (Persona prs :personas){%>
                <td><%=prs.getNombre() %></td>
                <td><%=prs.getApellido() %></td>
                <td><%=prs.getDocumentid() %></td>
                <td><%=prs.getGenero() %></td>
                <td><%=prs.getRh() %></td>
                <td><%=prs.getFechaNacimiento() %></td>
                <td><%=prs.getRol() %></td>
                <td><%=prs.getTelefono() %></td>
                <%}%>
            </tbody>
            <tfoot>
                
            </tfoot>
        </table>
    </body>
</html>
