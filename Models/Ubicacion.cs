public class ubicacion{
    public int IdUbicacion{get;set;}
    public int IdUsuario {get;set;}
    public string Calle{get;set;}
    public int Altura{get;set;}
    public string Barrio{get;set;}
    public string Descripcion{get;set;}
public ubicacion(){}


public ubicacion(int idubicacion,string descripcion,string barrio, int altura,string calle,int idusuario){


    IdUbicacion=idubicacion;
    Descripcion=descripcion;
    Barrio=barrio;
    Altura=altura;
    Calle=calle;
    IdUsuario=idusuario;
}
}
