public class Inmobiliaria{
    public int IdInmobiliaria{get;set;}
    public string Nombre{get;set;}
     public string Email{get;set;}
    public int Telefono{get;set;}
    public string Direccion{get;set;}
    public string imagenInmobiliaria{get;set;}
    public int Comision{get;set;}
public Inmobiliaria(){}

//agregar los campos faltamtes de la base de datos en el Model 

public Inmobiliaria(int idinmobiliaria, string nombre, string email, int telefono, string direccion, string imageninmobiliaria, int comision){


    IdInmobiliaria=idinmobiliaria;
    Nombre=nombre;
    Email=email;
    Telefono=telefono;
    Direccion=direccion;
    imagenInmobiliaria=imageninmobiliaria;
    Comision=comision;
   
}
}
