﻿using System.Diagnostics;
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
        return View();
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

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
