<script languaje="JavaScript"> 

function deleteRow_rg(id){
      $('#'+id).remove();
}
function agregar_acudiente()
{
    var iden_estudi = $('#iden_estudi').val();
    if (iden_estudi!='') {
        $('#id_estudiante').val(iden_estudi);
        $('#entidad').val('');
        $('#nombre_inv').val('');
        $('#apellido_inv').val('');
        $('#correo_inv').val('');
        $('#telefono_inv').val('');
        $('#modal_invitados').modal('show');
    }else{
        alert('Se debe escribir la identificacion del estudiante.');
    }
}

function modificar_acudiente(s)
{
    var opcion  = 'traer_acudiente_info';

    var ajax_data = {
        "invitado"  : s,
        "funcion"    : opcion,
    };

    $.ajax({
        type:'POST',
        url:'formulario/funciones.php',
        data:ajax_data,
        dataType: 'json',
        success:function(respuesta)
        {
            if(respuesta.entidad == "")
            {
                informacion = "<h5>No hay acudientes asignados</h5>";
            }
            else
            {

                $('#nombre_inv_mod').val(respuesta.nombre_inv_mod);
                $('#identi_inv_mod').val(respuesta.identi_inv_mod);
                $('#parent_inv_mod').val(respuesta.parent_inv_mod);
                $("#estado_inv_mod option[value="+ respuesta.estado_inv_mod +"]").attr("selected",true);
                $('#pais_in_mod').val(respuesta.pais_in_mod);
                $('#ciudad_inv_mod').val(respuesta.ciudad_inv_mod);
            }   
            $('#id_acudiente').val(s);
            $('#modal_invitados_modificar').modal('show');
        }
    });  
}
function eliminar_acudiente(s) {
        $('#id_acudiente_elim').val(s);
        $('#modal_borrar_invitado').modal('show');
}
$(document).ready(function(){

    


    $("#rg_form_ed").validate( {
        onkeyup:false,
        ignore: "not:hidden",
        rules: {
            n_estudiante: {
                required: true,
                minlength: 1,
                maxlength: 1000
            },
            iden_estudi: {
                required: true,
                minlength: 1,
                maxlength: 1000
            },
            edad_estudi: {
                required: true,
                minlength: 1,
                maxlength: 1000
            },
            sexo_estudi: {
                required: true,
                minlength: 1,
                maxlength: 1000
            },
            cod_estudi: {
                required: true,
                minlength: 1,
                maxlength: 1000
            }, 
            pais_nacimiento:{
                required:true,
            },
            dep_nacimiento:{
                required:true,
                min:1
            },
            ciud_nacimiento:{
                required:true,
                min:1
            },

            
        },
        messages: {
            n_estudiante: {
                required: "Debe escribir el nombre del estudiante",
            },
            iden_estudi: {
                required: "Debe escribir la identificaci\u00f3n del estudiante",
            },
            edad_estudi: {
                required: "Debe escribir la edad del estudiante",
            },
            sexo_estudi: {
                required: "Debe escribir el sexo del estudiante",
            },
            cod_estudi: {
                required: "Debe escribir el c\u00f3digo del estudiante",
            },
            
            pais_nacimiento: "Debe seleccionar la opci\u00f3n de pais",
            dep_nacimiento: "Debe seleccionar la opci\u00f3n de departamento",
            ciud_nacimiento: "Debe seleccionar la opci\u00f3n de ciudad",

            // 'dependencia_r[]' : "Debe seleccionar la dependencia del riesgo"
            
        },  
        submitHandler: function (form) {
               form.submit();                     
        },
        errorElement: "em",
        errorPlacement: function ( error, element ) {
            error.addClass( "help-block" );
            element.parents( ".div_error" ).addClass( "has-feedback" );

            if ( element.prop( "type" ) === "checkbox" ) {
                error.insertAfter( element.parent( "label" ) );
            } else {
                error.insertAfter( element );
            }

        },
        highlight: function ( element, errorClass, validClass ) {
            $( element ).parents( ".div_error" ).addClass( "has-error" ).removeClass( "has-success" );
            //$( element ).next( "span" ).addClass( "glyphicon-remove" ).removeClass( "glyphicon-ok" );
        },
        unhighlight: function ( element, errorClass, validClass ) {
            $( element ).parents( ".div_error" ).addClass( "has-success" ).removeClass( "has-error" );
            //$( element ).next( "span" ).addClass( "glyphicon-ok" ).removeClass( "glyphicon-remove" );
        }
    });



    $("#validateacudiente").validate( {
        onkeyup:false,
        rules: {
            entidad:{required: true},
            nombre_inv:{required: true},
            apellido_inv:{required: true},
            correo_inv:{required: true,email: true},
            telefono_inv:{required: true},
        },
        submitHandler: function (form) {
            $.ajax({
                type: $(form).attr('method'),
                url: $(form).attr('action'),
                data: $(form).serialize(),
                dataType : 'json'
            })
            .done(function (respuesta) {
                if(respuesta == 1)
                {
                    $('#modal_invitados').modal('hide');
                    mess = 'Acudiente agregado';
                    $("#mensaje_ok").css({display: "block"});
                    $("#mensaje_ok").html(mess);
                    $("#mensaje_ok").fadeOut(2000, function(){
                        traer_acudiente();
                        valida_subsidio();
                    });
                }
                else
                {
                    var close_alert = '<a onclick="$(\'#mensaje\').css({display: \'none\'})" class="close" aria-label="close">&times;</a>';
                    $('#modal_invitados').modal('hide');
                    mess = 'No se puedo agregar el Acudiente';
                    $("#mensaje").css({display: "block"});
                    $("#mensaje").html(close_alert+mess);
                }
            });
            return false;
        },
        messages: {
            entidad:"Debe ingresar  la entidad",
            nombre_inv: "Debe ingresar el nombre ",
            apellido_inv: "Debe ingresar el apellido",
            correo_inv: {
                required:"Debe ingresar el correo",
                email: "Debe ingresar un correo v&aacute;lido"
            },
            telefono_inv: "Debe ingresar tel&eacute;fono",
        },  
        errorElement: "em",
        errorPlacement: function ( error, element ) {
            error.addClass( "help-block" );
            element.parents( ".div_error" ).addClass( "has-feedback" );

            if ( element.prop( "type" ) === "checkbox" ) {
                error.insertAfter( element.parent( "label" ) );
            } else {
                error.insertAfter( element );
            }
        },
        highlight: function ( element, errorClass, validClass ) {
            $( element ).parents( ".div_error" ).addClass( "has-error" ).removeClass( "has-success" );
            //$( element ).next( "span" ).addClass( "glyphicon-remove" ).removeClass( "glyphicon-ok" );
        },
        unhighlight: function ( element, errorClass, validClass ) {
            $( element ).parents( ".div_error" ).addClass( "has-success" ).removeClass( "has-error" );
            //$( element ).next( "span" ).addClass( "glyphicon-ok" ).removeClass( "glyphicon-remove" );
        }
    });

    $("#validateacudiente_mod").validate( {
        onkeyup:false,
        rules: {
            entidad:{required: true},
            nombre_inv:{required: true},
            apellido_inv:{required: true},
            correo_inv:{required: true,email: true},
            telefono_inv:{required: true},
        },
        submitHandler: function (form) {
            $.ajax({
                type: $(form).attr('method'),
                url: $(form).attr('action'),
                data: $(form).serialize(),
                dataType : 'json'
            })
            .done(function (respuesta) 
            {
                if(respuesta == 1)
                 {
                     $('#modal_invitados_modificar').modal('hide');
                     mess = 'Acudiente modificado';
                     $("#mensaje_ok").css({display: "block"});
                     $("#mensaje_ok").html(mess);
                     $("#mensaje_ok").fadeOut(2000, function(){
                         traer_acudiente();
                         valida_subsidio();
                     });
                 }
                 else
                 {
                     var close_alert = '<a onclick="$(\'#mensaje\').css({display: \'none\'})" class="close" aria-label="close">&times;</a>';
                     $('#modal_invitados_modificar').modal('hide');
                     mess = 'No se puedo modificar el Acudiente';
                     $("#mensaje").css({display: "block"});
                     $("#mensaje").html(close_alert+mess);
                 }   
            });
            return false;
        },
        messages: {
            entidad:"Debe ingresar  la entidad",
            nombre_inv: "Debe ingresar el nombre ",
            apellido_inv: "Debe ingresar el apellido",
            correo_inv: {
                required:"Debe ingresar el correo",
                email: "Debe ingresar un correo v&aacute;lido"
            },
            telefono_inv: "Debe ingresar tel&eacute;fono",
        },  
        errorElement: "em",
        errorPlacement: function ( error, element ) {
            error.addClass( "help-block" );
            element.parents( ".div_error" ).addClass( "has-feedback" );

            if ( element.prop( "type" ) === "checkbox" ) {
                error.insertAfter( element.parent( "label" ) );
            } else {
                error.insertAfter( element );
            }
        },
        highlight: function ( element, errorClass, validClass ) {
            $( element ).parents( ".div_error" ).addClass( "has-error" ).removeClass( "has-success" );
            //$( element ).next( "span" ).addClass( "glyphicon-remove" ).removeClass( "glyphicon-ok" );
        },
        unhighlight: function ( element, errorClass, validClass ) {
            $( element ).parents( ".div_error" ).addClass( "has-success" ).removeClass( "has-error" );
            //$( element ).next( "span" ).addClass( "glyphicon-ok" ).removeClass( "glyphicon-remove" );
        }
    });
});





function nuevoAjax () {
    var xmlhttp=false;
    try {
        xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e) {
        try {
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        } catch (E) {
            xmlhttp = false;
        }
    }

    if (!xmlhttp && typeof XMLHttpRequest!='undefined') {
        xmlhttp = new XMLHttpRequest();
    }
    return xmlhttp;
}

function traer_departamento(valor) {  
    
    if (valor!='-1') {
        ajax=nuevoAjax();
        ajax.open("GET","formulario/funciones.php?id_pais="+valor+"&funcion=listar_depa",true);
        ajax.onreadystatechange=function() {
            if (ajax.readyState==4) {   
               variable_procesos = ajax.responseText;   
                document.getElementById("dep_nacimiento").innerHTML = variable_procesos;
            }
        }
       ajax.send(null);
    }
    
}
function traer_departamento_mod() {  
    
    var id_depa = $('#id_depa').val();
    var pais_nacimiento = $('#pais_nacimiento').val();
    if (pais_nacimiento!='-1') {
        ajax=nuevoAjax();
        ajax.open("GET","formulario/funciones.php?id_pais="+pais_nacimiento+"&id_depa="+id_depa+"&funcion=listar_depa",true);
        ajax.onreadystatechange=function() {
            if (ajax.readyState==4) {   
               variable_procesos = ajax.responseText;   
               dep_nacimiento.innerHTML  = variable_procesos;
                  // document.getElementById("dep_nacimiento").innerHTML = variable_procesos;

                traer_ciudad_mod();
            }
        }
       ajax.send(null);
    }
    
}

function traer_ciudad(valor) {  
    
    if (valor!='-1') {
        ajax=nuevoAjax();
        ajax.open("GET","formulario/funciones.php?id_dep="+valor+"&funcion=listar_city",true);
        ajax.onreadystatechange=function() {
            if (ajax.readyState==4) {   
               variable_procesos = ajax.responseText;   
               ciud_nacimiento.innerHTML  = variable_procesos;

               valida_subsidio();
            }
        }
       ajax.send(null);
    }
    
}
function traer_ciudad_mod() {  
    
    var id_ciudad = $('#id_ciudad').val();
    var id_depa = $('#id_depa').val();

    if (id_depa!='-1') {
        ajax=nuevoAjax();
        ajax.open("GET","formulario/funciones.php?id_dep="+id_depa+"&id_ciudad="+id_ciudad+"&funcion=listar_city",true);
        ajax.onreadystatechange=function() {
            if (ajax.readyState==4) {   
               variable_procesos = ajax.responseText;   
               ciud_nacimiento.innerHTML  = variable_procesos;

               valida_subsidio();

               traer_acudiente();
            }
        }
       ajax.send(null);
    }
    
}
function traer_acudiente()
{
    var iden_estudi = $('#iden_estudi').val();
    var datos = 
    {
        "funcion":"traer_acudiente",
        "id": iden_estudi
    }
    $.ajax({
        type:'POST',
        url:'formulario/funciones.php',
        data: datos,
        success:function(respuesta){
            $("#div_invitados").html(respuesta);
        }
    });
}
function eliminar_acudie()
{

    var id_acudiente_elim    = $('#id_acudiente_elim').val();
    var datos = 
    {
        "funcion":"eliminar_invitado",
        "id": id_acudiente_elim
    }
    $.ajax({
        type:'POST',
        url:'formulario/funciones.php',
        data: datos,
        success:function(respuesta){
             var close_alert = '<a onclick="$(\'#mensaje_acta_borrar\').css({display: \'none\'})" class="close" aria-label="close">&times;</a>';
                if (respuesta==0)
                {
                    mess = 'No se puede eliminar';
                    $("#mensaje_acta_borrar").css({display: "block"});
                    $("#mensaje_acta_borrar").html(close_alert + mess);
                }
                else
                {
                    $('#modal_borrar_invitado').modal('hide');
                    mess = 'Acudiente eliminado';
                    $("#mensaje_ok").css({display: "block"});
                    $("#mensaje_ok").html(mess);
                    $("#mensaje_ok").fadeOut(2000,function(){
                        traer_acudiente();
                        valida_subsidio();
                    })
                }
        }
    });
}
function eliminar_estud()
{

    var id_estu_elim    = $('#id_estu_elim').val();
    var datos = 
    {
        "funcion":"eliminar_estu",
        "id": id_estu_elim
    }
    $.ajax({
        type:'POST',
        url:'formulario/funciones.php',
        data: datos,
        success:function(respuesta){
             var close_alert = '<a onclick="$(\'#mensaje_acta_borrar\').css({display: \'none\'})" class="close" aria-label="close">&times;</a>';
                if (respuesta==0)
                {
                    mess = 'No se puede eliminar';
                    $("#mensaje_acta_borrar").css({display: "block"});
                    $("#mensaje_acta_borrar").html(close_alert + mess);
                }
                else
                {
                    $('#modal_borrar_invitado').modal('hide');
                    mess = 'Estudiante eliminado';
                    $("#mensaje_ok").css({display: "block"});
                    $("#mensaje_ok").html(mess);
                    $("#mensaje_ok").fadeOut(2000,function(){
                        location = "index.php?op=1";
                        return true;
                    })
                }
        }
    });
}

function valida_subsidio() {


    var sexo_estudiante    = $('#sexo_estudi').val(); //Femenino
    var edad_estudiante    = $('#edad_estudi').val(); //menor a 15
    var depa_estudiante    = $('#dep_nacimiento').val();//27 o  91
    var iden_estudi = $('#iden_estudi').val();
    var datos = 
    {
        "funcion":"validar_acudiente",
        "id": iden_estudi
    }
    $.ajax({
        type:'POST',
        url:'formulario/funciones.php',
        data: datos,
        success:function(respuesta){
            // $("#cant_viud").val(respuesta);

            viud_estudi    =respuesta;

                // Basico --  si es menor de 15 años 100K
                if ((edad_estudiante>=0 && edad_estudiante<=15)) {
                    $('#N_subis').val('Basico');
                    $('#subis').val('$100.000');
                    $('#subsidio').val('100000');
                } 
                // Menor --  si es menor del choco o amazonas y femenino 200k
                 if ((edad_estudiante>=0 && edad_estudiante<=15) && (depa_estudiante=='27' || depa_estudiante=='91') && (sexo_estudiante=='Femenino')) {
                    $('#N_subis').val('Menor');
                    $('#subis').val('$200.000');
                    $('#subsidio').val('200000');
                }  
                // Avanzado --  si es menor de 15 y acudiente es viudo 300 k
                if ((edad_estudiante>=0 && edad_estudiante<=15) && (viud_estudi>0)) {
                    $('#N_subis').val('Avanzado');
                    $('#subis').val('$300.000');
                    $('#subsidio').val('300000');
                }

        }
    });
}

function crearestudiante(){
    location = "index.php?op=2";
     return true;
}
function modificarestudiante(id){
    location = "index.php?op=3&identificacion="+id;
    return true;
}
function eliminarestudiante(s){
    $('#id_estu_elim').val(s);
    $('#modal_borrar_invitado').modal('show');
}

</script>


