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
     public IActionResult AgregarAcount(string nombre, string username, string contraseña, string email, int telefono){
        Usuario user = new Usuario( nombre, username, contraseña, email, telefono);
        BD.AgregarCuenta(user);
        ViewBag.roni = user;
        List<Usuario> _usuarios=BD.ListarUsuarios();
        foreach (Usuario usuas in _usuarios){
            foreach(Usuario roni in _usuarios){
                if(_usuarios.UserName)
            }
        }
        return View("MostrarDatos");
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