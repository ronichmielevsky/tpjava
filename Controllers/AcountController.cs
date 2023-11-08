    using System.Diagnostics;
    using Microsoft.AspNetCore.Mvc;
    using tpjava.Models;

    namespace tpjava.Controllers;
    


    public class AcountController : Controller


{
    public IActionResult Registrarse()
    {
        return View("Acount");
    }

    public IActionResult IniciarSesion()
    {
        return View("IniciarSes");
    }

     [HttpPost]
     public IActionResult AgregarAcount(string username, string contraseña, string nombre, string email, int telefono){
        int cont=0;
        Usuario user = new Usuario(username, contraseña, nombre, email, telefono);
        BD.AgregarCuenta(user);
        ViewBag.roni = user;
        List<string> _usuarios=BD.ListarUsuarios();
        foreach (string usuas in _usuarios){
            if(usuas==username){
                cont++;
                Console.WriteLine(cont);
            }
         }
         if(cont >=2){
            ViewBag.Error = "El nombre de usuario ya existe";
            return View("Acount");
         }
         else{ return View("MostrarDatos");}
    }

    public IActionResult Olvide()
    {
        return View("OlvideContraseña");
    }

    [HttpPost]
    public IActionResult MostrarContraseña(string username)
    {
        ViewBag.cont=BD.OlvideCont(username);
        if(ViewBag.cont!=null){
            return View("MostrarContraseña");
        }
        else{
            ViewBag.Error="Nombre de Usuario invalido";
        }
        return View("OlvideContraseña");
    }

 [HttpPost]
     public IActionResult Login(string username, string contraseña){
        ViewBag.roni =BD.VerificarCuenta(username, contraseña);
        if (ViewBag.roni!=null)        
        {
                  return View("MostrarDatos");
        }
        else
        {
            ViewBag.Error = "Usuario o Contraseña invalidos";
            return View("IniciarSes");
        }
     }
   
     
}