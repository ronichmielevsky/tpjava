public class Ubicacion{
    public int IdDireccion{get;set;}
    public string Calle{get;set;}
    public int Altura{get;set;}
    public string Barrio{get;set;}
    public string Descripcion{get;set;}
public Ubicacion(){}


public Ubicacion(int iddireccion,string descripcion,string barrio, int altura,string calle){


    IdDireccion=iddireccion;
    Descripcion=descripcion;
    Barrio=barrio;
    Altura=altura;
    Calle=calle;
}
}
