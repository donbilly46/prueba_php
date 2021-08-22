<?php
require_once "./formulario/funciones.php";
require_once "./formulario/funciones.js";

if (isset($opcion) && $opcion=='BUSCAR') {
	$buscar_1='1';
}

// var_dump($_REQUEST);

?>

<div class="panel-body color-panel">
<div class="title" style="background-color: rgba(204,204,204,1) !important;color: black !important;">Reporte de estudiantes</div>
<div id="mensaje_lugar" class="alert alert-success" style="display: none;width: 300px;font-size: 13px;z-index: 200;position: absolute;margin-left: 34%"></div>

<div class="alert alert-success" id="mensaje_ok" style="display: none"></div>
<script type="text/javascript">
	$(document).ready(function() {
	    $('#example').DataTable();
	    var label= $('#buscar').val();
	    var id_ciudad= $('#id_ciudad').val();
	    var id_depa= $('#id_depa').val();


	    if (label=='BUSCAR' && id_ciudad!='-1' && id_depa!='-1') {
			traer_departamento_mod();
	    }

	} );
</script>

<form method="post" action="index.php" name="form"  enctype="multipart/form-data" >
<div class="panel-body" >
	<div class="form-content ">
	    <div class="form-center ">
			 
	    		<div class="form-inline">
					<div class="form-group div_error">
						<label>Nombre: </label>			
						<input type="text" name="n_estudiante" id="n_estudiante"  value="<?php if(isset($n_estudiante)){echo $n_estudiante; } ?>" class="form-control">
					</div>

					<div class="form-group div_error">
						<label>Sexo: </label>			
						<select name="sexo_estudi" id="sexo_estudi" size="1"  style="width: 250px;" class="form-control" onchange="valida_subsidio()">
							<option value="-1" selected="selected" >Seleccione uno</option>
							<option value="Masculino" <?php if(isset($sexo_estudi) && $sexo_estudi=='Masculino'){ ?>selected="selected" <?php } ?>>Masculino</option>		 
							<option value="Femenino" <?php if(isset($sexo_estudi) && $sexo_estudi=='Femenino'){ ?>selected="selected" <?php } ?>>Femenino</option>	  			
						</select>
					</div>

					<div class="form-group div_error">
						<label>País de nacimiento: </label>	
						<select name="pais_nacimiento" id="pais_nacimiento" size="1"  style="width: 250px;" class="form-control" onchange="traer_departamento(this.value)">
						    <option value="-1" selected="selected">Seleccione uno</option>
						    <?php
						    $query_pais= "select * from paises where iso='CO'";
						    $rt_pais = $obj_conexion->query($query_pais);
							    while ($lista=$rt_pais->fetch_array())
							    {	
							    	$select='';
							    	if ($pais_nacimiento==$lista["iso"]) {
							    		$select='selected="selected"';
							    	}
							        echo '<option value="'.$lista["iso"].'" '.$select.'>'.$lista["nombre"].'</option>';
							    }
							?>						    			
						</select>
					</div>

					<div class="form-group div_error">
						<label>Departamento de nacimiento: </label>					
						<select name="dep_nacimiento" id="dep_nacimiento" size="1"  style="width: 250px;" class="form-control" onchange="traer_ciudad(this.value)">		
						</select>
					</div>

					<div class="form-group div_error">
						<label>Ciudad de nacimiento: </label>					
						<select name="ciud_nacimiento" id="ciud_nacimiento" size="1"  style="width: 250px;" class="form-control">					
						</select>
					</div>


				</div>


		</div>
	</div>
</div>
<div align="center">
		<input type="hidden" name="op" value="5">	
		<input type="hidden" name="opcion" value="BUSCAR">	

		<input type="hidden" name="id_ciudad" id="id_ciudad" value="<?php echo $ciud_nacimiento;?>">
		<input type="hidden" name="id_depa" id="id_depa" value="<?php echo $dep_nacimiento;?>">	
		<input type="hidden" name="buscar" id="buscar" value="<?php echo $opcion;?>">		

		<button type="submit" class="class_btr" >
					<span class="glyphicon glyphicon-download-alt"></span>GUARDAR	
		</button>
	</div>
</form>

<hr>
<div class="panel-body color-panel" style="width:100%;height:100%; overflow: scroll;">
 <table width="1050" cellpadding="2" cellspacing="2" border="1" id="Export_a_Excel" class="table table-striped table-bordered">
	<thead>
					 <thead>
				        <tr>
				            <th rowspan="2"><div align="center">Nombre</div></th>
				            <th rowspan="2"><div align="center">Fecha nacimiento</div></th>
				            <th rowspan="2"><div align="center">Identificaci&oacute;n</div></th>
				            <th rowspan="2"><div align="center">Edad</div></th>
				            <th rowspan="2"><div align="center">Sexo</div></th>
				            <th rowspan="2"><div align="center">Codigo del estudiante</div></th>
				            <th rowspan="2"><div align="center">País de nacimiento</div></th>
				            <th rowspan="2"><div align="center">Departamento de nacimiento</div></th>
				            <th rowspan="2"><div align="center">Ciudad de nacimiento</div></th>
				            <th rowspan="2"><div align="center">Subsidio</div></th>
				            <th colspan ="6"><div align="center">Acudiente</div></th>
				        </tr>
				        <tr>
				            <th><div align="center">Nombre</div></th>
				            <th><div align="center">Identificación</div></th>
				            <th><div align="center">Parentesco</div></th>
				            <th><div align="center">Estado civil</div></th>
				            <th><div align="center">País</div></th>
				            <th><div align="center">Ciudad</div></th>
				        </tr>
				    </thead>
	    		<tbody>
	    			<?php
	    			$var_consulta= "select * from info_estudiante where edad is not null ";
	    			if( isset($n_estudiante) ){ 
	    				$var_consulta.= " and nombre like '%".$n_estudiante."%' ";
	    			}
	    			if( isset($sexo_estudi) ){ 
	    				$var_consulta.= " and sexo like '%".$sexo_estudi."%' ";
	    			}
	    			if( isset($pais_nacimiento) ){ 
	    				$var_consulta.= " and pais_naci = '".$pais_nacimiento."' ";
	    			}
	    			if( isset($dep_nacimiento) ){ 
	    				$var_consulta.= " and departamento_naci = '".$dep_nacimiento."' ";
	    			}
	    			if( isset($ciud_nacimiento) ){ 
	    				$var_consulta.= " and ciudad_naci = '".$ciud_nacimiento."' ";
	    			}
	    			$var_consulta.= " order by ciudad_naci,nombre,sexo asc ";
	    			
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

					    	$var_con1= "select count(id) as cantidad from acudiente where id_estudiante='".$identificacion."'";
					    	$var_res1 = $obj_conexion->query($var_con1);					    
					    	if ($var_fi1=$var_res1->fetch_array()) {
					    		$cantidad_acud	=$var_fi1["cantidad"];

					    	}

					    	$var_con= "select * from acudiente where id_estudiante='".$identificacion."'";
					    	$var_res = $obj_conexion->query($var_con);					    
					    	if ($var_fi=$var_res->fetch_array()) {
					    		$Nombre_acu	=$var_fi["Nombre"];
					    		$Identificacion_acu	=$var_fi["Identificacion"];
					    		$Parentesco_acu	=$var_fi["Parentesco"];
					    		$estado_civil_acu	=$var_fi["estado_civil"];
					    		$pais_acu	=$var_fi["pais"];
					    		$ciudad_acu	=$var_fi["ciudad"];

					    	}




					    ?>
					    <tr align="center" height="33">
	                		<td rowspan="<?php echo $cantidad_acud;?>" align="center" ><?php echo $nombre; ?></td>
	                		<td rowspan="<?php echo $cantidad_acud;?>" align="center" ><?php echo $fecha_nacimiento; ?></td>
	                		<td rowspan="<?php echo $cantidad_acud;?>" align="center" ><?php echo $identificacion; ?></td>
	                		<td rowspan="<?php echo $cantidad_acud;?>" align="center" ><?php echo $edad; ?></td> 
	                		<td rowspan="<?php echo $cantidad_acud;?>" align="center" ><?php echo $sexo; ?></td> 
	                		<td rowspan="<?php echo $cantidad_acud;?>" align="center" ><?php echo $cod_estudiante; ?></td> 
	                		<td rowspan="<?php echo $cantidad_acud;?>" align="center" ><?php echo traer_pais($pais_naci); ?></td> 
	                		<td rowspan="<?php echo $cantidad_acud;?>" align="center" ><?php echo traer_departamento($departamento_naci); ?></td> 
	                		<td rowspan="<?php echo $cantidad_acud;?>" align="center" ><?php echo traer_ciudad($ciudad_naci); ?></td> 
	                		<td rowspan="<?php echo $cantidad_acud;?>" align="center" >$<?php echo $subsidio; ?></td> 
	                		<?php  if($cantidad_acud>0){?>
	                			<td align="center" ><?php echo $Nombre_acu; ?></td> 
		                		<td align="center" ><?php echo $Identificacion_acu; ?></td> 
		                		<td align="center" ><?php echo $Parentesco_acu; ?></td> 
		                		<td align="center" ><?php echo $estado_civil_acu; ?></td> 
		                		<td align="center" ><?php echo $pais_acu; ?></td> 
		                		<td align="center" ><?php echo $ciudad_acu; ?></td> 
	                		<?php }else{ ?> 
	                			<td align="center" colspan ="6"> No se encuentran acudientes.</td>

	                		<?php } ?> 
	                		
	    			   </tr>
		    		<?php 

						while ($var_fi=$var_res->fetch_array()) {
					    		$Nombre_acu	=$var_fi["Nombre"];
					    		$Identificacion_acu	=$var_fi["Identificacion"];
					    		$Parentesco_acu	=$var_fi["Parentesco"];
					    		$estado_civil_acu	=$var_fi["estado_civil"];
					    		$pais_acu	=$var_fi["pais"];
					    		$ciudad_acu	=$var_fi["ciudad"];

					    		if($cantidad_acud>0){?>
		    			    	<tr>
		    			    		<td align="center" ><?php echo $Nombre_acu; ?></td> 
			                		<td align="center" ><?php echo $Identificacion_acu; ?></td> 
			                		<td align="center" ><?php echo $Parentesco_acu; ?></td> 
			                		<td align="center" ><?php echo $estado_civil_acu; ?></td> 
			                		<td align="center" ><?php echo $pais_acu; ?></td> 
			                		<td align="center" ><?php echo $ciudad_acu; ?></td> 
			                	</tr>
		                		<?php }
					    	}
		    		} 
		    		?> 
	    		</tbody>
	</table>
</thead>
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