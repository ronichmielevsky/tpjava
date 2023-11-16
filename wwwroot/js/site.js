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
                function(response) //en este caso response es un objeto INMOBILIARIA
                {                        
                     texto = ""
                    
                    response.forEach(element => {                        
                        texto += "<b>" + element.nombre + "</b><br>Mail: " +  element.email + "<br>Telefono: " + element.telefono + "<br>Dirección: " + element.direccion + "<br> Comision: " + element.comision
                    });
                    console.log(texto)
                    $("#TextoModalInmobiliaria").html(texto);
                    
                }
        });
}



function MostrarProp(id) {        
     $.ajax(
       {
             url:'/Home/VerInfoPropiedadesAjax',
             type:'GET',
           dataType:'JSON',                
             data:{IdPropiedad: id},
             success:
                 function(response)  //en este caso response es una lista de PROPIEDADES
                 {   
                    $("#TextoModalPropiedad").html(response.tipopropiedad);
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
                        texto += "<b>" + element.calle + "</b><br>Altura: " +  element.altura + "<br>Barrio: " + element.barrio + "<br>Descripcion: " + element.descripcion 
                    });
                    console.log(texto)
                    $("#TextoModalUbicacion").html(texto);
                    
                }
        });
}

