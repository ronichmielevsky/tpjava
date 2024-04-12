using System.Data.SqlClient;
using System.Collections.Generic;
using Dapper;

static class BD{
    private static string _connectionString = @"server=localhost;DataBase=login;Trusted_connection=True;";
    
public static void AgregarCuenta(Usuario user){
    string SQL = "INSERT INTO Usuario(Username,Contraseña,Nombre,Email,Telefono) VALUES (@username, @contraseña, @nombre, @email, @telefono)";
     using (SqlConnection db = new SqlConnection(_connectionString))
        {
            db.Execute(SQL, new { nombre = user.Nombre, username = user.UserName, contraseña = user.Contraseña, email = user.Email, telefono = user.Telefono});
        }
}

public static List<string> ListarUsuarios(){
    List<string> _usuarios=null;
     using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string SQL = "SELECT UserName FROM Usuario";
            _usuarios = db.Query<string>(SQL).ToList();;
        }
        return _usuarios;
}
public static Usuario VerificarCuenta(string username, string contraseña){
    Usuario roni = new Usuario();
     using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string SQL = "SELECT * FROM Usuario WHERE UserName = @pUserName AND Contraseña = @pContraseña";
            roni = db.QueryFirstOrDefault<Usuario>(SQL, new {pUserName = username, pContraseña = contraseña });
        }
        return roni;
}
public static Usuario OlvideCont(string username){
    Usuario roni = null;
     using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string SQL = "SELECT Contraseña FROM Usuario WHERE UserName = @pUserName";
            roni = db.QueryFirstOrDefault<Usuario>(SQL, new {pUserName = username});
        }
        return roni;
}

public static List<Inmobiliaria>  TraerInmobiliaria(int idinmobiliaria)
        {
        List<Inmobiliaria> listaInmobiliarias = new List<Inmobiliaria>();  
          using (SqlConnection db = new SqlConnection(_connectionString)){
            string SQL = "SELECT * FROM Inmobiliaria WHERE IdInmobiliaria = @pIdInmobiliaria";
            listaInmobiliarias = db.Query<Inmobiliaria>(SQL, new {pIdInmobiliaria = idinmobiliaria}). ToList();
        }
            return listaInmobiliarias;        
    }
    

public static  List<Propiedades> ObtenerCas(){
        List<Propiedades> listaPropiedades = new List<Propiedades>();  
          using (SqlConnection db = new SqlConnection(_connectionString))
          {
            string SQL = "SELECT * FROM Propiedades";
            listaPropiedades = db.Query<Propiedades>(SQL). ToList();
          }
            return listaPropiedades;
        }   


public static Propiedades TraerCas(int idpropiedad)
        {
            Propiedades ActualCasa = null;
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = "SELECT * FROM Propiedades WHERE IdPropiedad = @pIdPropiedad";
                ActualCasa = db.QueryFirstOrDefault<Propiedades>(sql,new {pIdPropiedad = idpropiedad});
            }
            return ActualCasa;
        }
public static List<Ubicacion> TraerUbi(int iddireccion){
    List<Ubicacion> listaDirecciones = new List<Ubicacion>();  

          using (SqlConnection db = new SqlConnection(_connectionString))
          {
            string SQL = "SELECT * FROM Ubicacion WHERE IdDireccion = @pIdDireccion";
            listaDirecciones = db.Query<Ubicacion>(SQL, new {pIdDireccion = iddireccion}) . ToList();
          }
            return listaDirecciones;
        }   

public static void AgregarInmobiliaria(Inmobiliaria inmo){
    string SQL = "INSERT INTO Inmobiliaria(Nombre,Email, Telefono,Direccion,Comision) VALUES (@nombre, @email, @telefono, @direccion, @comision)";
     using (SqlConnection db = new SqlConnection(_connectionString))
        {
            db.Execute(SQL, new { nombre = inmo.Nombre, email=inmo.Email, telefono=inmo.Telefono, direccion=inmo.Direccion, comision=inmo.Comision});
        }
}

  public static bool TraerEstadoPropiedad (int idinmobiliaria,bool estado){ //AGREGAR ESTADO
          estado = false;
          using (SqlConnection db = new SqlConnection(_connectionString))
           {
             string SQL = "SELECT Estado FROM Inmobiliaria WHERE IdInmobiliaria = @pIdInmobiliaria";
            estado = db.QueryFirstOrDefault<bool>(SQL, new {pIdInmobiliaria = idinmobiliaria});
          }
            return estado;
        }   
    }
// hacer una funcion que reciba el id de propiedad y cambie el estado a false