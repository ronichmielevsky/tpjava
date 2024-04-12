public class Propiedades{
    public int IdPropiedad{get;set;}
    public string Descripcion{get;set;}
    public string TipoPropiedad{get;set;}
    public int Precio{get;set;}
    public string Ambiente{get;set;}
    public string ImagenPropiedad{get;set;}
    public int IdDireccion{get;set;}
    public int IdInmobiliaria{get;set;}
    public bool Estado{get;set;}

    public int Latitud{get;set;}
    
    public int Longitud{get;set;}

    public int idCompras{get;set;}





public Propiedades(){}


public Propiedades(int idpropiedad,string descripcion,string tipopropiedad, int precio,string ambiente,string imagenpropiedad,int iddireccion,int idinmobiliaria, bool estado, int latitud, int longitud, int idcompras ){


    IdPropiedad=idpropiedad;
    Descripcion=descripcion;
    TipoPropiedad=tipopropiedad;
    Precio=precio;
    Ambiente=ambiente;
    ImagenPropiedad=ImagenPropiedad;
    IdDireccion=iddireccion;
    IdInmobiliaria=idinmobiliaria;
    Estado=estado;
    Latitud=latitud;
    Longitud=longitud;
    idCompras=idcompras;


}
}
