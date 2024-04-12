public class Compras{
public int IdCompras{get;set;}
public string Nombre{get;set;}
public int Telefono{get;set;}
public bool Estado{get;set;}
public string Email{get;set;}
public int IdUsuario{get;set;}

public Compras(){}
public Compras(int idcompras, string nombre, int telefono, bool estado, string email,int idusuario){

    IdCompras=idcompras;
    Nombre=nombre;
    Telefono=telefono;
    Estado=estado;
    Email=email;
    IdUsuario=idusuario;

}




}

