    using System.Diagnostics;
    using Microsoft.AspNetCore.Mvc;
    using tpjava.Models;

    namespace tpjava.Controllers;
    


    public class AcountController : Controller


{
    public IActionResult Lol()
    {
        return View("Acount");
    }

    public IActionResult Sas()
    {
        return View("IniciarSes");
    }

     [HttpPost]
     public IActionResult AgregarAcount(string nombre, string username, string contraseña, string email, int telefono){
        Usuario user = new Usuario( nombre, username, contraseña, email, telefono);
        BD.AgregarCuenta(user);
        ViewBag.nombre=nombre;
        ViewBag.username=username;
        ViewBag.contraseña=contraseña;
        ViewBag.email=email;
        ViewBag.telefono=telefono;
        return View("MostrarDatos");
    }

 [HttpPost]
     public IActionResult Registrarse(string username, string contraseña,string nombre, string email, int telefono){
        ViewBag.roni=BD.VerificarCuenta(username, contraseña);
        return View("ss");
     }
   
     
}