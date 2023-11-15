public class Inmobiliaria{
    public int IdInmobiliaria{get;set;}
    public string Nombre{get;set;}
     public string Email{get;set;}
    public int Telefono{get;set;}
    public string Direccion{get;set;}
    public string ImagenInmobiliaria{get;set;}
    public int Comision{get;set;}
    public int IdUsuario{get;set;}
public Inmobiliaria(){}


public Inmobiliaria(int idinmobiliaria, string nombre, string email, int telefono, string direccion, string imagenInmobiliaria, int comision, int idusuario ){


    IdInmobiliaria=idinmobiliaria;
    Nombre=nombre;
    Email=email;
    Telefono=telefono;
    Direccion=direccion;
    ImagenInmobiliaria=imagenInmobiliaria;
    Comision=comision;
    IdUsuario=idusuario;
   
}
}
