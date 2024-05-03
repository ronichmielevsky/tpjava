using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using tpjava.Models;

namespace tpjava.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    private int _iddireccion;
        private int _idpropiedad;
    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return RedirectToAction("IniciarSesion" , "Acount");
    }

   public IActionResult Inicio(string username)
    {
        string user = username;
        ViewBag.Username = user;
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
     public IActionResult VerMensaje(int idPropiedad)
    {
        Console.WriteLine(idPropiedad);
        BD.CambiarEstadoPropiedad(idPropiedad);
        return View("VerMensaje");
    }
    public IActionResult FinalizarCompra()
    {
        
        return View("FinalizarCompra");
    }
    
    public IActionResult Comprar(int idPropiedad)
    {
        Console.WriteLine(idPropiedad);
        ViewBag.idpop=idPropiedad;
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


  private int _idInmobiliaria;
[HttpPost]
public IActionResult Venta(int idpropiedad, string tipopropiedad, string descripcion, int precio, string ambiente, string imagenpropiedad, int iddireccion, int idinmobiliaria, bool estado)
{
    idinmobiliaria = BD.getIdInmobiliaria();
    iddireccion = BD.getIdDireccion();
    Propiedades prop = new Propiedades(idpropiedad, descripcion, tipopropiedad, precio, ambiente, imagenpropiedad, iddireccion, idinmobiliaria, estado=true);
    BD.AgregarPropiedad(prop);
    return View("Inicio");
}

public IActionResult Inmo(){
    return View("Inmo");
}
[HttpPost]
public IActionResult Inmobi(int idinmobiliaria, string nombre, string email, int telefono, string direccion, string imageninmobiliaria, int comision)
{
    Inmobiliaria inmo = new Inmobiliaria(idinmobiliaria, nombre, email, telefono, direccion, imageninmobiliaria, comision);
    BD.AgregarInmobiliaria(inmo);
    return View("Ubi");
}



[HttpPost]
public IActionResult Ubica(int iddireccion,string descripcion,string barrio, int altura,string calle)
{

    Ubicacion ubi = new Ubicacion(iddireccion, descripcion, barrio, altura, calle);
    _iddireccion= iddireccion;
    BD.AgregarUbicacion(ubi);
    return View("Vender");
}


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



