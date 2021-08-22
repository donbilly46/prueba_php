<?php
require_once "funciones.php";
require_once "funciones.js";
?>

<div class="panel-body color-panel">
<div class="title" style="background-color: rgba(204,204,204,1) !important;color: black !important;">Listado estudiantes</div>
<div id="mensaje_lugar" class="alert alert-success" style="display: none;width: 300px;font-size: 13px;z-index: 200;position: absolute;margin-left: 34%"></div>

<div class="alert alert-success" id="mensaje_ok" style="display: none"></div>
<script type="text/javascript">
	$(document).ready(function() {
	    $('#example').DataTable();
	} );
</script>
<div class="panel-body" >
	<div class="form-content ">
	    <div class="form-center ">
				<table id="example" class="display" style="width:100% !important">
					 <thead>
				        <tr>
				            <th>Identificaci&oacute;n</th>
				            <th>Nombre</th>
				            <th>Fecha nacimiento</th>
				            <th>Edad</th>
				            <th>
				                Edici&oacute;n
				                <a onclick="crearestudiante()"  class="glyphicon glyphicon-plus-sign btn-lg" aria-hidden="true" data-toggle="tooltip" data-placement="right" title="Crear" style="z-index:100;"></a>
				            </th>
				        </tr>
				    </thead>
	    		<tbody>
	    			<?php

	    				$var_consulta= "select * from info_estudiante order by identificacion asc";
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

					    ?>
					    <tr align="left" height="33">
	                		<td align="left" ><?php echo $identificacion; ?></td>
	                		<td align="left" ><?php echo $nombre; ?></td>
	                		<td align="left" ><?php echo $fecha_nacimiento; ?></td>
	                		<td align="left" ><?php echo $edad; ?></td> 
	                		<td align="left" id="td_<?= $id ?>">
			                    <a onclick="modificarestudiante(<?php echo $identificacion ?>)" class="glyphicon glyphicon-pencil btn-lg" aria-hidden="true" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Editar"></a>
			                    <a onclick="eliminarestudiante(<?php echo $identificacion ?>)" class="glyphicon glyphicon-trash btn-lg" aria-hidden="true" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Eliminar"></a>     
			                   
			                </td>
	    			   </tr>
		    		<?php 
		    			} 
		    		?> 
	    		</tbody>
				</table>
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
                <h4 class="modal-title" id="myModalLabel">¿Desea eliminar el estudiante?</h4>
            </div>
            <div class="modal-footer">
                <input type="hidden" id="id_estu_elim" name="id_estu_elim" value="">
				
				<button type='button' class='btn btn-submit'onclick="eliminar_estud()"><span class='glyphicon glyphicon-ok'></span> Aceptar</button>
		        <button type='button' class='btn btn-reject' data-dismiss='modal'><span class='glyphicon glyphicon-remove-sign'></span> Cancelar</button>
				
            </div>
        </div>
    </div>
</div>