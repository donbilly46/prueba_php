<?php
require_once "funciones.php";
require_once "funciones.js";


$var_consulta= "select * from info_estudiante WHERE identificacion=".$identificacion."";
$var_resultado = $obj_conexion->query($var_consulta);					    
while ($var_fila=$var_resultado->fetch_array()) {
	$nombre	=$var_fila["nombre"];
	$fecha_nacimiento	=$var_fila["fecha_nacimiento"];
	$identificacion	=$var_fila["identificacion"];
	$edad	=$var_fila["edad"];
	$sexo	=$var_fila["sexo"];
	$cod_estudiante	=$var_fila["cod_estudiante"];
	$pais_naci	=$var_fila["pais_naci"];
	$departamento_naci	=$var_fila["departamento_naci"];
	$ciudad_naci	=$var_fila["ciudad_naci"];
	$subsidio	=$var_fila["subsidio"];
}

?>
<style type="text/css">
.btn-action {
    color: #000000 !important;
    background-color: #FFFFFF !important;
    border-color: #FFB500 !important;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	traer_departamento_mod();
});
</script>
<div class="alert alert-success" id="mensaje_ok" style="display: none"></div>
<div class="title" style="background-color: rgba(204,204,204,1) !important;color: black !important;">Formulario</div>

<form method="post" action="index.php" name="form" id="rg_form_ed" enctype="multipart/form-data" >
	<div class="form-content ">
        <div class="form-left ">
            <div class="panel-body color-panel">
			
				<div class="panel-heading">
					<h3 class="panel-title">Estudiante</h3>
				</div>
				
				<div class="panel-heading">
					<div class="form-group div_error">
						<label>Nombre: </label>			
						<input type="text" name="n_estudiante" id="n_estudiante"  value="<?php echo $nombre;?>" class="form-control">
					</div>
				</div>

				<div class="panel-heading">
					<div class="form-group div_error">
						<label>Fecha de nacimiento: </label>			
						<input type="date" name="f_nacimiento" id="f_nacimiento"  value="<?php echo $fecha_nacimiento;?>" class="form-control">
					</div>
				</div>

				<div class="panel-heading">
					<div class="form-group div_error">
						<label>Identificaci??n: </label>			
						<input type="text" name="iden_estudi" id="iden_estudi"  value="<?php echo $identificacion;?>" class="form-control" >
					</div>
				</div>

				<div class="panel-heading">
					<div class="form-group div_error">
						<label>Edad: </label>			
						<input type="text" name="edad_estudi" id="edad_estudi"  value="<?php echo $edad;?>" class="form-control">
					</div>
				</div>

				<div class="panel-heading">
					<div class="form-group div_error">
						<label>Sexo: </label>			
						<select name="sexo_estudi" id="sexo_estudi" size="1"  style="width: 250px;" class="form-control" onchange="valida_subsidio()">
							<option value="-1" selected="selected" >Seleccione uno</option>
							<option value="Masculino" <?php if($sexo=='Masculino'){ ?>selected="selected" <?php } ?>>Masculino</option>			 
							<option value="Femenino" <?php if($sexo=='Femenino'){ ?>selected="selected" <?php } ?>>Femenino</option>	   			
						</select>
					</div>
				</div>

				<div class="panel-heading">
					<div class="form-group div_error">
						<label>Codigo del estudiante: </label>			
						<input type="text" name="cod_estudi" id="cod_estudi"  value="<?php echo $cod_estudiante;?>" class="form-control">
					</div>
				</div>


				<div class="panel-heading">
					<div class="form-group div_error">
						<label>Pa??s de nacimiento: </label>	
						<select name="pais_nacimiento" id="pais_nacimiento" size="1"  style="width: 250px;" class="form-control" onchange="traer_departamento(this.value)">
						    <option value="-1" selected="selected">Seleccione uno</option>
						    <?php
						    $query_pais= "select * from paises where iso='CO'";
						    $rt_pais = $obj_conexion->query($query_pais);
							    while ($lista=$rt_pais->fetch_array())
							    {	
							    	$select='';
							    	if ($pais_naci==$lista["iso"]) {
							    		$select='selected="selected"';
							    	}
							        echo '<option value="'.$lista["iso"].'" '.$select.'>'.$lista["nombre"].'</option>';
							    }
							?>						    			
						</select>
					</div>
				</div>
				<div class="panel-heading">
					<div class="form-group div_error">
						<label>Departamento de nacimiento: </label>					
						<select name="dep_nacimiento" id="dep_nacimiento" size="1"  style="width: 250px;" class="form-control" onchange="traer_ciudad(this.value)">		
						</select>
					</div>
				</div>
				<div class="panel-heading">
					<div class="form-group div_error">
						<label>Ciudad de nacimiento: </label>					
						<select name="ciud_nacimiento" id="ciud_nacimiento" size="1"  style="width: 250px;" class="form-control">					
						</select>
					</div>
				</div>
			</div>
		</div>
		<div class="form-right ">
            <div class="panel-body color-panel">
			
				<div class="panel-heading">
					<h3 class="panel-title">Acudiente</h3>
				</div>

				 <div class="form-group div_error auto-scroll_editActa">
                    <table class="table" style="margin-bottom: 1px">
						<thead>
							<tr>
								<th>Nombre</th>
								<th>Identificaci&oacute;n</th>
								<th>Parentesco</th>
								<th>Estado civil</th>
								<th>Pa&iacute;s y ciudad de nacimiento</th>
								<th>
                                    <a href="javascript:agregar_acudiente();" class="glyphicon glyphicon-plus-sign btn-lg" data-toggle="tooltip" data-placement="right" title="Agregar"></a>
                                </th>
							</tr>
						</thead>
						<tbody id="div_invitados">
						</tbody>
					</table>
                </div>  
				
			</div>
			<hr>
			<div class="panel-body color-panel">
				<div class="panel-heading">
					<div class="form-group div_error" align="center">
						<label>Subsidio: </label>	<br>
						<input type="text" name="N_subis" id="N_subis" readonly>
						<input type="text" name="subis" id="subis" readonly>
						<input type="hidden" name="subsidio" id="subsidio">
						<input type="hidden" name="cant_viud" id="cant_viud">
					</div>
				</div>
			</div>
		</div>
	</div>

	<div align="center">

		<input type="hidden" name="id_ciudad" id="id_ciudad" value="<?php echo $ciudad_naci;?>">
		<input type="hidden" name="id_depa" id="id_depa" value="<?php echo $departamento_naci;?>">
		<input type="hidden" name="funcion" value="MODIFICAR">
		<input type="hidden" name="op" value="1.1">			
		<button type="submit" class="class_btr" >
					<span class="glyphicon glyphicon-download-alt"></span>GUARDAR	
		</button>
	</div>
</form>


<!-- Modal acudiente-->
<div class="modal fade" id="modal_invitados" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">Agregar acudiente</h4>
                <div class='alert alert-danger' id='invitados_err' style='display: none;position:fixed;width:90%;z-index:2;font-size:12px;'></div>
            </div>
            <div class="modal-body" style="height: auto !important">
            	<form action="formulario/funciones.php" method="post" id="validateacudiente">
            		<div class="form-content">
				        <div class="panel form-left">
				            <div class="panel-body color-panel">
								<div class="form-group div_error">
				                    <label>Nombre*</label>
				                    <input type="text" id="nombre_inv" name="nombre_inv" class="form-control">
				                </div>    
				                <div class="form-group div_error">
				                    <label>Identificaci&oacute;n*</label>
				                    <input type="text" id="identi_inv" name="identi_inv" class="form-control">
				                </div> 
				                <div class="form-group div_error">
				                    <label>Parentesco*</label>
				                    <input type="text" id="parent_inv" name="parent_inv" class="form-control">
				                </div>           
				            </div>
				        </div>
				        <div class="panel form-right">
				            <div class="panel-body color-panel">
				                <div class="form-group div_error">
				                    <label>Estado civil*</label>
				                    <select name="estado_inv" id="estado_inv" size="1"  style="width: 250px;" class="form-control">
									    <option value="-1" selected="selected">Seleccione uno</option>
									 		<option value="Soltero">Soltero(a)</option>			 
									 		<option value="Casado">Casado(a)</option>	
									 		<option value="Divorciado">Divorciado(a)</option>	
									 		<option value="Separacion">Separaci??n en proceso judicial(a)</option>
									 		<option value="Viudo">Viudo(a)</option>		   			
									</select>
				                </div> 
				                <div class="form-group div_error">
				                    <label>Pa??s*</label>
				                    <input type="text" id="pais_in" name="pais_in" class="form-control">
				                </div> 
				                <div class="form-group div_error">
				                    <label>Ciudad*</label>
				                    <input type="text" id="ciudad_inv" name="ciudad_inv" class="form-control">
				                </div>

				            </div>
				        </div>
				    </div>
				    <div style="clear: both;"></div>
				    <div class="center">
				    	<input type="hidden" name="funcion" id="funcion" value="agregar_invitados">
				    	<input type="hidden" name="id_estudiante" id="id_estudiante" value="<?= $id_estudiante?>">
                        <button type='submit' class='btn btn-submit' id="btn_agregar_invitado"><span class='glyphicon glyphicon-ok'></span> crear</button>
		                <button type='button' class='btn btn-reject' data-dismiss='modal'><span class='glyphicon glyphicon-remove-sign'></span> Cancelar</button>
		            </div>
            	</form>
		    </div>
            
        </div>
    </div>
</div>

<!-- Modal invitados modificar-->
<div class="modal fade" id="modal_invitados_modificar" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">Modificar acudiente</h4>
                <div class='alert alert-danger' id='invitados_error_2' style='display: none;position:fixed;width:90%;z-index:2;font-size:12px;'></div>
            </div>
            <div class="modal-body" style="height: auto !important">
		        
            	<form action="formulario/funciones.php" method="post" id="validateacudiente_mod">
            		<div class="form-content">
				        <div class="panel form-left">
				            <div class="panel-body color-panel">
								<div class="form-group div_error">
				                    <label>Nombre*</label>
				                    <input type="text" id="nombre_inv_mod" name="nombre_inv_mod" value="a" class="form-control">
				                </div>    
				                <div class="form-group div_error">
				                    <label>Identificaci&oacute;n*</label>
				                    <input type="text" id="identi_inv_mod" name="identi_inv_mod" value="b" class="form-control">
				                </div> 
				                <div class="form-group div_error">
				                    <label>Parentesco*</label>
				                    <input type="text" id="parent_inv_mod" name="parent_inv_mod" value="" class="form-control">
				                </div>           
				            </div>
				        </div>
				        <div class="panel form-right">
				            <div class="panel-body color-panel">
				                <div class="form-group div_error">
				                    <label>Estado civil*</label>
				                    <select name="estado_inv_mod" id="estado_inv_mod" size="1"  style="width: 250px;" class="form-control">
									    <option value="-1" selected="selected">Seleccione uno</option>
									 		<option value="Soltero">Soltero(a)</option>			 
									 		<option value="Casado">Casado(a)</option>	
									 		<option value="Divorciado">Divorciado(a)</option>	
									 		<option value="Separacion">Separaci??n en proceso judicial(a)</option>
									 		<option value="Viudo">Viudo(a)</option>		   			
									</select>
				                </div> 
				                <div class="form-group div_error">
				                    <label>Pa??s*</label>
				                    <input type="text" id="pais_in_mod" name="pais_in_mod" value="" class="form-control">
				                </div>
				                 <div class="form-group div_error">
				                    <label>Ciudad*</label>
				                    <input type="text" id="ciudad_inv_mod" name="ciudad_inv_mod" value="" class="form-control">
				                </div>
				            </div>
				        </div>
				    </div>
				    <div style="clear: both;"></div>
				    <div class="center">
				    	<input type="hidden" name="funcion" id="funcion" value="modificar_invitados">
				    	<input type="hidden" name="id_acudiente" id="id_acudiente" value="">
						<button type='submit' class='btn btn-submit' id="btn_modificar_inv"><span class='glyphicon glyphicon-ok'></span> modificar</button>
		                <button type='button' class='btn btn-reject' data-dismiss='modal'><span class='glyphicon glyphicon-remove-sign'></span> Cancelar</button>
		            </div>
            	</form>
		    </div>
        </div>
    </div>
</div>


<!-- Modal eliminar invitados-->
<div class="modal fade" id="modal_borrar_invitado" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">??Desea eliminar el acudiente?</h4>
            </div>
            <div class="modal-footer">
                <input type="hidden" id="id_acudiente_elim" name="id_acudiente_elim" value="">
				
				<button type='button' class='btn btn-submit'onclick="eliminar_acudie()"><span class='glyphicon glyphicon-ok'></span> Aceptar</button>
		        <button type='button' class='btn btn-reject' data-dismiss='modal'><span class='glyphicon glyphicon-remove-sign'></span> Cancelar</button>
				
            </div>
        </div>
    </div>
</div>