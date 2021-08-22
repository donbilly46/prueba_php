<?php   
foreach ($_REQUEST as $key => $value):
    ${$key} = $value;
endforeach;

if ($funcion == "GUARDAR") {
    $query_dep= "INSERT INTO info_estudiante (nombre, fecha_nacimiento, identificacion, edad, sexo, cod_estudiante, pais_naci, departamento_naci, ciudad_naci, subsidio) VALUES ('".$n_estudiante."','".$f_nacimiento."','".$iden_estudi."','".$edad_estudi."','".$sexo_estudi."','".$cod_estudi."','".$pais_nacimiento."','".$dep_nacimiento."','".$ciud_nacimiento."','".$subsidio."')  ";
	if($obj_conexion->query($query_dep)){

		$datos="'".$n_estudiante."','".$f_nacimiento."','".$iden_estudi."','".$edad_estudi."','".$sexo_estudi."','".$cod_estudi."','".$pais_nacimiento."','".$dep_nacimiento."','".$ciud_nacimiento."','".$subsidio."";

		$logFile = fopen("logs/log_".date("d_m_Y_His").".txt", 'a') or die("Error creando archivo");
		fwrite($logFile, "\n".date("d/m/Y H:i:s").": CREAR ".$datos.". ") or die("Error escribiendo en el archivo");
		fclose($logFile);


		?>
		<form action="index.php?op=1" id="form" name="form" method="post">
			<div  role='alert' id='mensaje'  style="position:inherit;">
				<div class="panel-body color-panel">
					<h3 class="glyphicon glyphicon-ok"></h3>
					<b>Información guardada correctamente</b>
					<div class="center">
						  <input type="hidden" id="op" value="1">
						  <input type="submit" class="class_btr"  name="Submit22" value="ACEPTAR">			  
					</div>	
				</div>
			</div>
		</form>
		<?php
	}else{
		?>
		<form action="index.php?op=1" id="form" name="form" method="post">
			<div  role='alert' id='mensaje'  style="position:inherit;">
				<div class="panel-body color-panel">
					<h3 class="glyphicon glyphicon-ok"></h3>
					<b>No se pudo guardar la Información.</b>
					<div class="center">
						  <input type="hidden" id="op" value="1">
						  <input type="submit" class="class_btr"  name="Submit22" value="ACEPTAR">			  
					</div>	
				</div>
			</div>
		</form>
		<?php
	}
	?>
    
<?php } else if ($funcion == "MODIFICAR") {

	
    $query_dep= "UPDATE info_estudiante SET nombre = '".$n_estudiante."',fecha_nacimiento = '".$f_nacimiento."',identificacion = '".$iden_estudi."',edad = '".$edad_estudi."',sexo = '".$sexo_estudi."',cod_estudiante = '".$cod_estudi."',pais_naci = '".$pais_nacimiento."',departamento_naci = '".$dep_nacimiento."',ciudad_naci = '".$ciud_nacimiento."',subsidio = '".$subsidio."' where  identificacion='".$iden_estudi."' ";

	if($obj_conexion->query($query_dep)){

		$datos="'".$n_estudiante."','".$f_nacimiento."','".$iden_estudi."','".$edad_estudi."','".$sexo_estudi."','".$cod_estudi."','".$pais_nacimiento."','".$dep_nacimiento."','".$ciud_nacimiento."','".$subsidio."";

		$logFile = fopen("logs/log_".date("d_m_Y_His").".txt", 'a') or die("Error creando archivo");
		fwrite($logFile, "\n".date("d/m/Y H:i:s").": MODIFICAR ".$datos.". ") or die("Error escribiendo en el archivo");
		fclose($logFile);




		?>
		<form action="index.php?op=1" id="form" name="form" method="post">
			<div  role='alert' id='mensaje'  style="position:inherit;">
				<div class="panel-body color-panel">
					<h3 class="glyphicon glyphicon-ok"></h3>
					<b>Información modificada correctamente</b>
					<div class="center">
						  <input type="hidden" id="op" value="1">
						  <input type="submit" class="class_btr"  name="Submit22" value="ACEPTAR">			  
					</div>	
				</div>
			</div>
		</form>
		<?php
	}else{
		?>
		<form action="index.php?op=1" id="form" name="form" method="post">
			<div  role='alert' id='mensaje'  style="position:inherit;">
				<div class="panel-body color-panel">
					<h3 class="glyphicon glyphicon-ok"></h3>
					<b>No se pudo modificar la Información.</b>
					<div class="center">
						  <input type="hidden" id="op" value="1">
						  <input type="submit" class="class_btr"  name="Submit22" value="ACEPTAR">			  
					</div>	
				</div>
			</div>
		</form>
		<?php
	}
	?>
    
<?php } 



?>