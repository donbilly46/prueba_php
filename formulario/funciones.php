<?php
$obj_conexion = mysqli_connect("localhost","prueba","prueba123","prueba");


foreach ($_REQUEST as $key => $value):
    ${$key} = $value;
endforeach;

if (isset($funcion) && $funcion=="listar_depa"){ 

$id_pais = $_REQUEST['id_pais'];
$id_depa = $_REQUEST['id_depa'];

?>
              <option value="-1" selected="selected">Seleccione uno</option>
	       		<?php

					$query_dep= "select * from departamentos where cod_pais='".$id_pais."'";
					$rt_dep = $obj_conexion->query($query_dep);
					while ($lista=$rt_dep->fetch_array()){
						$select='';
						if ($id_depa==$lista["id_departamento"]) {
							$select='selected="selected"';
						}
						echo '<option value="'.$lista["id_departamento"].'" '.$select.'>'.$lista["departamento"].'</option>';
					}
				?>	
  <?php   
} else if (isset($funcion) && $funcion=="listar_city"){ 

$id_dep = $_REQUEST['id_dep'];
$id_ciudad = $_REQUEST['id_ciudad'];

?>
			<select name="ciud_nacimiento" id="ciud_nacimiento" style="width:170px !important;" >
              <option value="-1" selected="selected">Seleccione uno</option>
	       		<?php

					$query_dep= "select * from municipios where departamento_id='".$id_dep."'";
					$rt_dep = $obj_conexion->query($query_dep);
					while ($lista=$rt_dep->fetch_array()){
						$select='';
						if ($id_ciudad==$lista["id_municipio"]) {
							$select='selected="selected"';
						}
						echo '<option value="'.$lista["id_municipio"].'" '.$select.'>'.$lista["municipio"].'</option>';
					}
				?>	
            </select>
  <?php   
} else if(isset($funcion) && $funcion=="traer_acudiente") {

	$var_consulta= "select * from acudiente where id_estudiante=".$id." ";
    $var_resultado = $obj_conexion->query($var_consulta);
    
    while ($var_fila=$var_resultado->fetch_array())
    {
        
			$id_acud =$var_fila["id"];
			$nombre_inv_mod =$var_fila["Nombre"];
			$identi_inv_mod =$var_fila["Identificacion"];
			$parent_inv_mod =$var_fila["Parentesco"];
			$estado_inv_mod =$var_fila["estado_civil"];
			$pais_in_mod =$var_fila["pais"];
			$ciudad_inv_mod =$var_fila["ciudad"];

				echo "<tr>";
				echo "<td>".$nombre_inv_mod."</td>";
				echo "<td>".$identi_inv_mod."</td>";
				echo "<td>".$parent_inv_mod."</td>";
				echo "<td>".$estado_inv_mod."</td>";
				echo "<td>".$pais_in_mod." / ".$ciudad_inv_mod."</td>";
				echo '<td>
						<a href="javascript:modificar_acudiente('.$id_acud.');" class="glyphicon glyphicon-pencil btn-lg" aria-hidden="true" data-toggle="tooltip" data-placement="right" title="Modificar" style="z-index:100;">
						</a>
						<a href="javascript:eliminar_acudiente('.$id_acud.');" class="glyphicon glyphicon-trash btn-lg" aria-hidden="true" data-toggle="tooltip" data-placement="right" title="Eliminar" style="z-index:100;">
						</a>
					</td>';
			echo "</tr>";
     }		
	

		

}else if(isset($funcion) && $funcion== "agregar_invitados") {

		$nombre_inv   = utf8_decode($nombre_inv);
		$identi_inv   = utf8_decode($identi_inv);
		$parent_inv   = utf8_decode($parent_inv);
		$estado_inv   = utf8_decode($estado_inv);
		$pais_in      = utf8_decode($pais_in   );
		$ciudad_inv   = utf8_decode($ciudad_inv);
		$id_estudiante   = utf8_decode($id_estudiante);



		$query_dep= "INSERT INTO acudiente (Nombre,Identificacion,Parentesco,estado_civil,pais,ciudad,id_estudiante) VALUES ('".$nombre_inv."','".$identi_inv."','".$parent_inv."','".$estado_inv."','".$pais_in ."','".$ciudad_inv."','".$id_estudiante."')  ";
		if($obj_conexion->query($query_dep)){
			echo 1;
		}
		else
		{
			echo 0;
		}

		

} else if(isset($funcion) && $funcion== "modificar_invitados") {

		$nombre_inv   = utf8_decode($nombre_inv_mod);
		$identi_inv   = utf8_decode($identi_inv_mod);
		$parent_inv   = utf8_decode($parent_inv_mod);
		$estado_inv   = utf8_decode($estado_inv_mod);
		$pais_in      = utf8_decode($pais_in_mod   );
		$ciudad_inv   = utf8_decode($ciudad_inv_mod);
		$id_acudiente   = utf8_decode($id_acudiente);


		$query_dep= "UPDATE acudiente SET Nombre='".$nombre_inv."',Identificacion='".$identi_inv."',Parentesco='".$parent_inv."',estado_civil='".$estado_inv."',pais='".$pais_in ."',ciudad='".$ciudad_inv."' where id='".$id_acudiente."'";
		if($obj_conexion->query($query_dep)){
			echo 1;
		}
		else
		{
			echo 0;
		}

		

} else if(isset($funcion) && $funcion== "eliminar_invitado") {


		$query_dep= "DELETE FROM acudiente where id='".$id."' ";
		if($obj_conexion->query($query_dep)){
			echo 1;
		}
		else
		{
			echo 0;
		}

		

} else if(isset($funcion) && $funcion== "eliminar_estu") {


		$query_dep= "DELETE FROM info_estudiante where identificacion='".$id."' ";
		if($obj_conexion->query($query_dep)){ echo 1; } else { echo 0; }

		$query_dep= "DELETE FROM acudiente where id_estudiante='".$id."' ";
		$obj_conexion->query($query_dep);

}   else if(isset($funcion) && $funcion== "traer_acudiente_info"){

    $var_consulta= "select * from acudiente where id='".$invitado."'";
    $var_resultado = $obj_conexion->query($var_consulta);
    
    if ($var_fila=$var_resultado->fetch_array())
    {
        
			$nombre_inv_mod =$var_fila["Nombre"];
			$identi_inv_mod =$var_fila["Identificacion"];
			$parent_inv_mod =$var_fila["Parentesco"];
			$estado_inv_mod =$var_fila["estado_civil"];
			$pais_in_mod =$var_fila["pais"];
			$ciudad_inv_mod =$var_fila["ciudad"];

			$array_data = array(
				"nombre_inv_mod" => $nombre_inv_mod,
				'identi_inv_mod'=>$identi_inv_mod,
				"parent_inv_mod" => $parent_inv_mod,
				'estado_inv_mod'=>$estado_inv_mod,
				"pais_in_mod"=>$pais_in_mod,
				"ciudad_inv_mod"=>$ciudad_inv_mod
			);
			echo json_encode($array_data);
     }		
	
} else if(isset($funcion) && $funcion== "validar_acudiente") {


		$query_dep= "select count(id) as cantidad from acudiente where id_estudiante='".$id."' and estado_civil='Viudo' ";
    	$var_resultado = $obj_conexion->query($query_dep);
		if ($var_fila=$var_resultado->fetch_array())
    	{        
			$cantidad =$var_fila["cantidad"];
			echo $cantidad;
     	}	
}




function traer_pais($id) {
		$obj_conexion = mysqli_connect("localhost","prueba","prueba123","prueba");
		$query_dep= "select nombre from paises where iso='".$id."'  ";
    	$var_resultado = $obj_conexion->query($query_dep);
		if ($var_fila=$var_resultado->fetch_array())
    	{        
			$cantidad =$var_fila["nombre"];
			return $cantidad;
     	}	
}

function traer_departamento($id) {
		$obj_conexion = mysqli_connect("localhost","prueba","prueba123","prueba");
		$query_dep= "select departamento from departamentos where id_departamento='".$id."'  ";
    	$var_resultado = $obj_conexion->query($query_dep);
		if ($var_fila=$var_resultado->fetch_array())
    	{        
			$cantidad =$var_fila["departamento"];
			return $cantidad;
     	}	
}

function traer_ciudad($id) {
		$obj_conexion = mysqli_connect("localhost","prueba","prueba123","prueba");
		$query_dep= "select municipio from municipios where id_municipio='".$id."'  ";
    	$var_resultado = $obj_conexion->query($query_dep);
		if ($var_fila=$var_resultado->fetch_array())
    	{        
			$cantidad =$var_fila["municipio"];
			return $cantidad;
     	}	
}



?>