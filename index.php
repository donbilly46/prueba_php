<head>  
	<?php
	include ("conexion/conexion.php"); 
	include "./menu/index_menu.php";
	?>
</head>
<?php
echo "<body>";
// var_dump($_REQUEST);
foreach ($_REQUEST as $key => $value):
    ${$key} = $value;
endforeach;

if (isset($op)) {
	switch ($op) {
		case"1":
	        include "./formulario/ls_estudiantes.php";
	        break;
	    case"2":
	        include "./formulario/formulario.php";
	        break;
	    case"3":
	        include "./formulario/formulario_mod.php";
	        break;
	    case"1.1":
	        include "./formulario/proc_formulario.php";
	        break;

	    case"5":
	        include "./reportes/reporte.php";
	        break;
	  
	    default:
	        break;
	}
}

echo "</body>";


// include "./menu/footer.php";
?>