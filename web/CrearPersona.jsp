<%@include file="Header.jsp" %>
<div class="content">
            <!-- Animated -->
            <div class="animated fadeIn">       
                

                <div class="row">

                    <div class="col-xs-12 col-sm-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>A&ntilde;adir una persona.</strong> <small> Small Text Mask</small>
                            </div>
                            <div class="card-body card-block">
                                <div class="form-group">
                                    <label class=" form-control-label">* Nombre :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                        <input class="form-control" type="text" name="txtNombre" placeholder="Name">
                                    </div>
                                    <small class="form-text text-muted">ex. Juan Andres</small>
                                </div>
                                <div class="form-group">
                                    <label class=" form-control-label">* Apellido :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                        <input class="form-control" type="text" name="txtApellido" placeholder="Last Name">
                                    </div>
                                    <small class="form-text text-muted">ex. Perez Camargo</small>
                                </div>
                                <div class="form-group">
                                    <label class=" form-control-label">* Documento de Identificaci&oacute;n :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                        <input class="form-control" type="text" name="txtDocumentid" placeholder="Identification Number">
                                    </div>
                                    <small class="form-text text-muted">ex. 9999999999</small>
                                </div>
                                <div class="form-group">
                                    <label class=" form-control-label">* Fecha de Nacimiento :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                                        <input class="form-control" type="date" name="txtFechaNacimiento" placeholder="DD/MM/AAAA">
                                    </div>
                                    <small class="form-text text-muted">ex. 99/99/9999</small>
                                </div>
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-header">
                                            <strong class="card-title">* Genero :</strong>
                                        </div>
                                        <div class="card-body">
                                            <label class="switch switch-default switch-primary-outline switch-pill mr-2"><input  class="switch-input" type="radio" value="Masculino" name="txtGenero"> Masculino<span class="switch-label"></span> <span class="switch-handle"></span></label>

                                            <label class="switch switch-default switch-secondary-outline switch-pill mr-2"><input  class="switch-input" type="radio" value="Femenino" name="txtGenero"> Femenino <span class="switch-label"></span> <span class="switch-handle"></span></label>

                                            <label class="switch switch-default switch-success-outline switch-pill mr-2"><input  class="switch-input" checked="true"type="radio" value="Otro" name="txtGenero"> Otro<span class="switch-label"></span> <span class="switch-handle"></span></label>


                                        </div>
                                    </div>
                                </div><!--/.col-->
                                <div class="row form-group">
                                        <div class="col col-md-2"><label for="txtRh" class=" form-control-label">* RH :</label></div>
                                        <div class="col-12 col-md-4">
                                            <select name="txtRh" id="select" class="form-control">
                                                <option value="">Please select</option>
                                                <option value="A+">A+</option>
                                                <option value="A-">A-</option>
                                                <option value="B+">B+</option>
                                                <option value="B-">B-</option>
                                                <option value="O+">O+</option>
                                                <option value="O-">O-</option>
                                            </select>
                                        </div>
                                        <small class="form-text text-muted">ex. A+ or B+ or O+</small>
                                </div>
                                <div class="row form-group">
                                        <div class="col col-md-3"><label for="file-input" class=" form-control-label">Foto :</label></div>
                                        <div class="col-12 col-md-9"><input type="file" id="file-input" name="txtFoto" class="form-control-file"></div>
                                </div>                                
                                <div class="form-group">
                                    <label class=" form-control-label">* Telefono :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-phone"></i></div>
                                        <input class="form-control" type="text" name="txtTelefono" placeholder="Telephone" >
                                    </div>
                                    <small class="form-text text-muted">ex. (999) 999-9999</small>
                                </div>
                                <div class="form-group">
                                    <label class=" form-control-label">* Correo :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-usd"></i></div>
                                        <input class="form-control" type="email" name="txtCorreo" placeholder="E-Mail">
                                    </div>
                                    <small class="form-text text-muted">ex. 99-9999999</small>
                                </div>
                                <div class="form-group">
                                    <label class=" form-control-label">* Password :</label>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                        <input class="form-control" type="password" name="txtPassword" placeholder="Password">
                                    </div>
                                    <small class="form-text text-muted">ex. 999-99-9999</small>
                                </div>
                                <div class="col-md-6">
                                <div class="card">
                                    <div class="card-header">
                                        <strong class="card-title">* Rol :</strong>
                                    </div>
                                    <div class="card-body">
                                        <label class="switch switch-default switch-primary-outline switch-pill mr-2"><input  class="switch-input" type="radio" value="Administrador" name="txtRol"> Administrador<span class="switch-label"></span> <span class="switch-handle"></span></label>

                                        <label class="switch switch-default switch-secondary-outline switch-pill mr-2"><input  class="switch-input" type="radio" value="Medico" name="txtRol"> Medico <span class="switch-label"></span> <span class="switch-handle"></span></label>

                                        <label class="switch switch-default switch-success-outline switch-pill mr-2"><input  class="switch-input" checked="true"type="radio" value="Paciente" name="txtRol"> Paciente<span class="switch-label"></span> <span class="switch-handle"></span></label>

                                        
                                    </div>
                                </div>
                                </div><!--/.col-->
                                
                            </div>
                        </div>
                    </div><!--
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
        </form>-->
        </div>
            </div>
        <%@include file="Footer.jsp" %>