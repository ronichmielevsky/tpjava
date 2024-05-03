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







public Propiedades(){}


public Propiedades(int idpropiedad,string descripcion,string tipopropiedad, int precio,string ambiente,string imagenpropiedad,int iddireccion,int idinmobiliaria, bool estado){


    IdPropiedad=idpropiedad;
    Descripcion=descripcion;
    TipoPropiedad=tipopropiedad;
    Precio=precio;
    Ambiente=ambiente;
    ImagenPropiedad=imagenpropiedad;
    IdDireccion=iddireccion;
    IdInmobiliaria=idinmobiliaria;
    Estado=estado;

}
}
