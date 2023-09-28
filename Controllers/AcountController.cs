    using System.Diagnostics;
    using Microsoft.AspNetCore.Mvc;
    using tpjava.Models;

    namespace tpjava.Controllers;
    

    public class AcountController : Controller
{

     [HttpPost]
     public IActionResult AgregarAcount(string nombre, string username, string contraseña, string email, int telefono){
        Usuario user = new Usuario( nombre, username, contraseña, email, telefono);
        return View();
    }

}