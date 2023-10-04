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
