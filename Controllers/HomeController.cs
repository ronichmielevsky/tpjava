using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using tpjava.Models;

namespace tpjava.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return RedirectToAction("IniciarSesion" , "Acount");
    }
    public IActionResult Inicio()
    {
        return View("Inicio");
    }
    public IActionResult Vender()
    {
        return View("Vender");
    }
    public IActionResult Contacto()
    {
        return View("Contacto");
    }
     public IActionResult Buscador()
    {
        return View("Buscador");
    }

     public IActionResult VerMensaje()
    {
        return View("VerMensaje");
    }
    public IActionResult FinalizarCompra()
    {
        return View("FinalizarCompra");
    }
    public IActionResult Comprar()
    {
        return View("Comprar");
    }
      public IActionResult VerCasas()
    {
        ViewBag.listaPropiedades = BD.ObtenerCas();
       

        return View("VerCasas");
    }

     public IActionResult cp()
    {
        return View("cp");
    }

    public List<Inmobiliaria> VerInfoInmobiliariaAjax(int idinmobiliaria)
{
    return BD.TraerInmobiliaria(idinmobiliaria);
}

// public Inmobiliaria TraerEstado(int idinmobiliaria){
//     ViewBag.estado = BD.TraerEstadoPropiedad(idinmobiliaria);
//     //ViewBag.estado = true;
//     return View("VerCasas");
// }

public Propiedades VerInfoPropiedadesAjax(int idpropiedad)
    {
        return BD.TraerCas(idpropiedad);
    }
  public List<Ubicacion> VerInfoUbicacionAjax(int iddireccion)
    {
        return BD.TraerUbi(iddireccion);
    }


    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
