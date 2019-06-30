<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Persona"%>
<%@include file="Header.jsp" %>
<div class="content">
<!-- Animated -->
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-xs-12 col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <strong>A&ntilde;adir una persona.</strong>
                    </div>
                    <div class="card-body card-block">
                        <table id="bootstrap-data-table" class="table table-striped table-bordered">
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

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%@include file="Footer.jsp" %>