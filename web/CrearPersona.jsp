<%-- 
    Document   : crearPersona
    Created on : 28/06/2019, 11:02:43 PM
    Author     : YIBER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>A&ntilde;adir una persona.</h3>
        <form action="Persona.do?a=create" method="post" >
            <h3>Informaci&oacute;n personal :</h3>
            <label>* Nombre :</label>
            <input type="text" name="txtNombre" placeholder="Name"  >
            <label>* Apellido :</label>
            <input type="text" name="txtApellido" placeholder="Last Name"  >
            <label>* Documento de Identificaci&oacute;n :</label>
            <input type="text" name="txtDocumentid" placeholder="Identification Number">
            <label>* Fecha de Nacimiento :</label>
            <input type="date" name="txtFechaNacimiento" placeholder="DD/MM/AAAA">
            <label>* Genero :</label>
            <label>
            <input type="radio" value="Masculino" name="txtGenero"> Masculino
            <span></span>
            </label>
            <label >
            <input type="radio" value="Femenino" name="txtGenero"> Femenino
            <span></span>
            </label>
            <label >
            <input type="radio" value="Otro" name="txtGenero"> Otro
            <span></span>
            </label>
            <label>* RH :</label>
            <select name="txtRh" >
                <option >Select</option>
                <option value="A+">A+</option>
                <option value="A-">A-</option>
                <option value="B+">B+</option>
                <option value="B-">B-</option>
                <option value="O+">O+</option>
                <option value="O-">O-</option>
            </select>
            <label>* Foto :</label>
            <input type="file" name="txtFoto">
            <h3>Informaci&oacute;n de contacto :</h3>
            <label>* Telefono :</label>
            <input type="text" name="txtTelefono" placeholder="Telephone"  >
            <label>* Correo :</label>
            <input type="email" name="txtCorreo" placeholder="E-Mail"  >
            <label>* Password :</label>
            <input type="password" name="txtPassword" placeholder="Password"  >
            <h3>Informaci&oacute;n Laboral :</h3>
            <label>* Rol :</label>
            <label >
            <input type="radio" value="Paciente" name="txtRol"> Paciente
            <span></span>
            </label>
            <label >
            <input type="radio" value="Medico" name="txtRol"> Medico
            <span></span>
            </label>
            <label >
            <input type="radio" value="Administrador" name="txtRol"> Administrador
            <span></span>
            </label>
            <button type="submit">Validate</button>
            <button type="reset">Cancel</button>
        </form>
    </body>
</html>
