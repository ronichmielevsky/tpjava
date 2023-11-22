document.addEventListener("DOMContentLoaded", () => {
    let contrasena = document.getElementById("psw");
    const especiales = ['!', '#', '$', '%', '&', '@'];
    const mayus = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M','N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];

    const enviar = document.getElementById("enviarRegister");
    enviar.disabled = true

    contrasena.addEventListener('input', () => {
        let valor = contrasena.value;
        const tieneCaracteres = especiales.some(caracter => valor.includes(caracter))
        const tieneMayus = mayus.some(caracter => valor.includes(caracter))

        if(valor.length >=8 && tieneCaracteres && tieneMayus){
            contrasena.style.border = "2px solid green";
            enviar.disabled = false
        }else{
            contrasena.style.border = "2px solid red"
        }

    })
});


function MostrarInmo(id) {        
    $.ajax(
        {
            url:'/Home/VerInfoInmobiliariaAjax',
            type:'GET',
            dataType:'JSON',                
            data:{IdInmobiliaria: id},
            success:
                function(response) //en este caso response es una lista INMOBILIARIA
                {                        
                     texto = ""
                    
                    response.forEach(element => {                        
                        texto += "<b><br> Nombre Inmobiliaria: </b> " + element.nombre + "<b><br>Mail: </b> " +  element.email + "<b><br>Telefono: </b> " + element.telefono + "<b><br>Dirección: </b> " + element.direccion + "<b><br> Comision: </b> " + "$" + element.comision
                    });
                    console.log(texto)
                    $("#TextoModalInmobiliaria").html(texto);
                    
                }
        });
}



function MostrarProp(id) {        
    $.ajax({
        url: '/Home/VerInfoPropiedadesAjax',
        type: 'GET',
        dataType: 'JSON',
        data: { IdPropiedad: id },
        success: function (response) {
            console.log(response);
            $("#TextoModalPropiedad").html(
                "<b><br>Tipo de Propiedad:</b> " + (response.tipoPropiedad) +  
                "<b><br>Descripción: </b> " + (response.descripcion) + 
                "<b><br>Precio: </b> " + "$" + (response.precio) + 
                "<b><br>Ambiente/s:</b> " + (response.ambiente) 
            );
        }
    });
}


  function MostrarUbi(id) {        
    $.ajax(
       {
            url:'/Home/VerInfoUbicacionAjax',
            type:'GET',
           dataType:'JSON',                
             data:{IdDireccion: id},
            success:
                 function(response)  //en este caso response es una lista de UBICACIONES
                {   
                    texto = ""
                    
                    response.forEach(element => {                        
                        texto += "<b><br>Calle: </b> " + element.calle + "<b><br>Altura: </b> " +  element.altura + "<b><br>Barrio: </b> " + element.barrio + "<b><br>Descripcion de la zona: </b> " + element.descripcion 
                    });
                    console.log(texto)
                     $("#TextoModalUbicacion").html(texto);
                    
                }
        });
 }

