<%-- 
    Document   : crearMedicamento
    Created on : 28-jun-2019, 15:37:44
    Author     : Angie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Guardar Medicamento</h1>
        
         <form action="Medicamento.do?a=create" method="post" class="formulario" submit="return accion();">
                <label for="" class="formulario__label">C&oacute;digo </label>
                <input type="text" name="txtCodigo" class="formulario__input" required="required" id="datepicker"/>
                <label for="" class="formulario__label">Nombre:</label>
                <input type="text" name="txtNombre" class="formulario__input" required="required" id="nombre"/>
                <label for="" class="formulario__label">Precio:</label>
                <input type="text" name="txtPrecio" class="formulario__input" required="required" id="precio"/>
                <label for="" class="formulario__label">Cantidad Disponible:</label>          
                <input type="text" name="txtCantdisp" class="formulario__input" required="required" id="cantDisp"/>  <br><br>
                <label for="" class="formulario__label">Descripci&oacute;n:</label> <br>
                <br>
                <textarea name="txtDescripcion" rows="30" cols="90" class="formulario__input" required="required" id="descripcion"> </textarea>   
                <br>
                <input type="submit" value="Guardar" class="formulario__submit" />
              
        </form>
        
    </body>
</html>
