public class inmobiliaria{
    public int IdInmobiliaria{get;set;}
    public string Nombre{get;set;}
     public string Email{get;set;}
    public int Telefono{get;set;}
    public string Direccion{get;set;}
    public string ImagenInmobiliaria{get;set;}
    public int Comision{get;set;}
    public string IdUsuario{get;set;}
public inmobiliaria(){}


public inmobiliaria(int idinmobiliaria, string nombre, string email, int telefono, string direccion, string ImagenInmobiliaria, int comision, int idusuario ){


    IdInmobiliaria=idonmobiliaria;
    Nombre=nombre;
    Email=email;
    Telefono=telefono
    Direccion=direccion;
    ImagenInmobiliaria=imageninmobiliaria;
    Comision=comision;
    IdUsuario=idusuario;
   
}
}
