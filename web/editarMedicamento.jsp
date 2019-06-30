<%-- 
    Document   : editarMedicamento
    Created on : 28-jun-2019, 15:38:40
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
        <% Medicamento mto= (Medicamento) request.getAttribute("editarMedicamento");%>
        <h1>Editar Medicamento</h1>      
         <form action="Medicamento.do?a=update&idmedicamento=<%=mto.getIdmedicamento()%>" method="post" class="formulario" >
                <label for="" class="formulario__label">C&oacute;digo </label>
                <input type="text" name="txtCodigo" value="<%=mto.getCodigo()%>"   class="formulario__input" required="required"/>
                <label for="" class="formulario__label">Nombre:</label>
                <input type="text" name="txtNombre" value="<%=mto.getNombre()%>"   class="formulario__input" required="required"/>
                <label for="" class="formulario__label">Precio:</label>
                <input type="text" name="txtPrecio" value="<%=mto.getPrecio()%>"   class="formulario__input" required="required"/>
                <label for="" class="formulario__label">Cantidad Disponible:</label>          
                <input type="text" name="txtCantdisp" value="<%=mto.getCantDisp()%>" class="formulario__input" required="required"/>  <br><br>
                <label for="" class="formulario__label">Descripci&oacute;n:</label> <br><br>             
                <textarea name="txtDescripcion" value="<%=mto.getDescripcion()%>" rows="30" cols="90" class="formulario__input" required="required"> </textarea>   
                <br>
                <input type="submit" value="Guardar" class="formulario__submit" />
              
        </form>
        
    </body>
</html>
