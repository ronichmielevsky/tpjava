public class Usuario{
    public string UserName{get;set;}
    public string Contraseña{get;set;}
    public string Nombre{get;set;}
    public string Email{get;set;}
    public int Telefono{get;set;}

public Usuario(){}

public Usuario(string username, string contraseña, string nombre, string email, int telefono){

    UserName=username;
    Contraseña=contraseña;
    Nombre=nombre;
    Email=email;
    Telefono=telefono;
}
}